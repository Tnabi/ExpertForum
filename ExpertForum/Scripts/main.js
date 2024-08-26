var data = [
    {
        'key': 1,
        'title': 'An example article',
        'author': 'Chris Macrae',
        'time': 1455660206777
    },
    {
        'key': 2,
        'title': 'The truth about animated lists...',
        'author': 'Chris Macrae',
        'time': 1455660206777
    },
    {
        'key': 3,
        'title': 'Why I watched the Lion King 542 times as a child',
        'author': 'Chris Macrae',
        'time': 1455660206777
    },
    {
        'key': 4,
        'title': 'Daffy Duck laughing on repeat for 100 hrs',
        'author': 'Chris Macrae',
        'time': 1455660206777
    },
    {
        'key': 5,
        'title': '01101000 01100101 01101100 01101100 01101111',
        'author': 'Chris Macrae',
        'time': 1455660206777
    },
];

var ListContainer = React.createClass({
    getInitialState: function () {
        return { data: this.props.data };
    },
    render: function () {
        return (
            <div>
                <header>
                    <h1>An animated react list</h1>
                    <div className="buttons">
                        <button className="data-toggle" onClick={this.mixItUp}>Mix it up!</button>
                    </div>
                </header>
                <div className="list-container">
                    <List items={this.state.data} ripItUp={this.ripItUp} resetIt={this.resetIt} />
                </div>
            </div>
        )
    },
    mixItUp: function () {
        var array = this.state.data;
        var currentIndex = array.length, temporaryValue, randomIndex;

        // While there remain elements to shuffle...
        while (0 !== currentIndex) {

            // Pick a remaining element...
            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex -= 1;

            // And swap it with the current element.
            temporaryValue = array[currentIndex];
            array[currentIndex] = array[randomIndex];
            array[randomIndex] = temporaryValue;
        }

        this.setState({ data: array });
    },
    ripItUp: function (key) {
        var array = this.state.data;
        if (!key) return;
        var ripItUpKey;
        array.forEach(function (item, index) {
            if (item.key === key) {
                ripItUpKey = index;
            }
        });

        if (ripItUpKey !== undefined) {
            array.splice(ripItUpKey, 1);
            this.setState({ data: array });
        }
    },
    resetIt: function () {
        console.log(data);
        console.log(this.props.data);
        this.setState({ data: data });
    }
})

var List = React.createClass({
    getInitialState: function () {
        return {};
    },
    componentWillMount: function () {
        this.setState({ items: this.props.items });
    },
    render: function () {
        if (this.props.items.length === 0) {
            return (
                <div className="empty-state">
                    <h1>щ(ಥДಥщ)</h1>
                    <p class="caption"><em>I'm so empty and alone</em></p>
                </div>
            )
        }
        return (
            <ul className="list">
                {this.props.items.map(this.handleItemRender)}
            </ul>
        )
    },
    handleItemRender: function (item, index) {
        var postDate = moment(item.post_date).fromNow();
        return (
            <ListElement title={item.title} author={item.author} postDate={postDate} id={item.key} ref={item.key} key={item.key} ripItUp={this.props.ripItUp} />
        );
    },
    componentWillReceiveProps: function (nextProps) {
        var component = this;

        if (this.props.items.length > 0) {
            var newState = this.props.items.reduce(function (state, child) {
                if (!child.key) return state;
                var currentState = component.state;
                var domNode = ReactDOM.findDOMNode(component.refs[child.key]);
                var boundingBox = domNode.getBoundingClientRect();

                currentState[child.key] = boundingBox;
                currentState.items = component.props.items;

                return currentState;
            });

            this.setState(newState);
        }
    },
    componentWillUpdate: function (nextProps, nextState) {
        var component = this;
        var newKeys = [];
        var areDestroyed = [];

        nextProps.items.forEach(function (newProp) {
            newKeys.push(newProp.key);
        });

        this.state.items.forEach(function (oldProp) {
            if (newKeys.indexOf(oldProp.key) == -1) {
            }
        });
    },
    componentDidUpdate: function (previousProps) {
        if (!this.state) return;

        var component = this;
        var areDestroyed = [];
        var doNeedAnimation = [];

        previousProps.items.forEach(function (item) {
            if (component.doesNeedAnimation(item) === 0) {
                doNeedAnimation.push(item);
            }
        });

        doNeedAnimation.forEach(this.animateAndTransform.bind(this));
    },
    animateAndDestroy: function (child, n) {
        var domNode = ReactDOM.findDOMNode(this.refs[child.key]);

        requestAnimaytionFrame(function () {
            requestAnimationFrame(function () {
                domNode.style.opacity = "0";
                domNode.style.transform = "scale(2)"
            });
        });
    },
    animateAndTransform: function (child, n) {
        var domNode = ReactDOM.findDOMNode(this.refs[child.key]);

        var [dX, dY] = this.getPositionDelta(domNode, child.key);

        requestAnimationFrame(function () {
            domNode.style.transition = 'transform 0s';
            domNode.style.transform = 'translate(' + dX + 'px, ' + dY + 'px)';
            requestAnimationFrame(function () {
                domNode.style.transform = '';
                domNode.style.transition = 'transform 400ms';
            })
        });
    },
    doesNeedAnimation: function (child) {
        var isNotMovable = !child.key;
        var isNew = !this.state[child.key];
        var isDestroyed = !this.refs[child.key];

        if (isDestroyed) return 2;
        if (isNotMovable || isNew) return;

        var domNode = ReactDOM.findDOMNode(this.refs[child.key]);
        var [dX, dY] = this.getPositionDelta(domNode, child.key);
        var isStationary = dX === 0 && dY === 0;

        return (isStationary === true) ? 1 : 0;
    },
    getPositionDelta: function (domNode, key) {
        var newBox = domNode.getBoundingClientRect();
        var oldBox = this.state[key];

        return [
            oldBox.left - newBox.left,
            oldBox.top - newBox.top
        ];
    },

})

var ListElement = React.createClass({
    render: function () {
        return (
            <li>
                <span className="list-badge">{this.props.id}</span>
                <span className="list-article-summary">
                    <h2 className="list-title">{this.props.title}</h2>
                    <span className="list-author">{this.props.author}</span>
                </span>
                <span className="list-post-date">Posted {this.props.postDate}</span>
                <span className="list-close" onClick={this.props.ripItUp.bind(null, this.props.id)}>✕</span>
            </li>
        );
    },
})

React.render(
    <ListContainer data={data} />,
    document.querySelector('#react-mount')
);