<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="UnanswerQManagement.aspx.cs" Inherits="ExpertForum.Views.UnanswerQManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        [role="button"],
        input[type="submit"],
        input[type="reset"],
        input[type="button"],
        button {
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
        }

        /* Reset `button` and button-style `input` default styles */
        input[type="submit"],
        input[type="reset"],
        input[type="button"],
        button {
            background: none;
            border: 0;
            color: inherit;
            /* cursor: default; */
            font: inherit;
            line-height: normal;
            overflow: visible;
            padding: 0;
            -webkit-appearance: button; /* for input */
            -webkit-user-select: none; /* for button */
            -moz-user-select: none;
            -ms-user-select: none;
        }

            input::-moz-focus-inner,
            button::-moz-focus-inner {
                border: 0;
                padding: 0;
            }

        header {
            width: 100%;
            height: 70px;
            line-height: 70px;
            display: flex;
            flex-direction: row;
            border-bottom: 1px solid rgb(215,215,215);
            box-sizing: border-box;
            padding: 0 20px;
        }

            header h1 {
                font-size: 24px;
                display: inline;
                vertical-align: middle;
                flex: 1;
                margin: 0;
                padding: 0;
            }

            header .buttons {
                align-self: flex-end;
                flex: 1;
                text-align: right;
            }

                header .buttons button {
                    display: inline-block;
                    border: 1px solid steelblue;
                    border-radius: 3px;
                    padding: 10px 15px;
                    color: steelblue;
                    &:hover

        {
            background: steelblue;
            color: white;
        }

        }

        .empty-state {
            margin-top: 200px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

            .empty-state h1 {
                color: steelblue;
            }

            .empty-state p {
                position: relative;
                display: block;
                width: 200px;
                height: 35px;
                line-height: 35px;
                padding: 10px;
                border-radius: 35px;
                color: rgb(100,100,100);
                text-align: center;
                background: lightgray;
                &:before

        {
            content: '';
            position: absolute;
            top: -12px;
            left: 50%;
            margin-left: -12px;
            display: block;
            width: 0;
            height: 0;
            border-bottom: 12px solid lightgray;
            border-left: 12px solid transparent;
            border-right: 12px solid transparent;
        }

        }

        .list-container {
            padding-left: 20px;
        }

        .list-container {
            h1,h2,h3,h4,h5

        {
            margin: 0;
        }

        }

        .list-container li {
            display: flex;
            flex: 4;
            flex-direction: row;
            padding: 20px 30px;
            margin-bottom: 10px;
            background-color: white;
            border-bottom: 2px dotted rgb(215,215,215);
            box-sizing: border-box;
            &:last-child

        {
            margin-bottom: none;
        }

        }

        .list {
            margin: 10px auto 0 auto;
            padding: 0;
        }

        .list-badge {
            align-self: flex-start;
            display: block;
            width: 15px;
            height: 18px;
            margin-right: 20px;
            border: 1px dotted steelblue;
            color: steelblue;
            text-align: center;
            padding: 15px 8px;
        }

        .list-article-summary {
            flex: 2;
        }

        .list-title {
            color: #596673;
            font-weight: 300;
        }

        .list-author {
            color: #C1C1C1;
        }

        .list-post-date {
            color: #C1C1C1;
            align-self: center;
        }

        .list-close {
            margin-left: 20px;
            align-self: center;
            color: #C1C1C1;
            &:hover

        {
            color: crimson;
            cursor: pointer;
        }

        }
    </style>
    <div id="react-mount">
        <h1>Animating React State Changes</h1>
    </div>

    <script type="text/javascript">
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
    </script>
</asp:Content>
