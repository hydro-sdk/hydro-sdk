import {Theme} from "../../runtime/flutter/material/theme";
import {BuildContext} from "../../runtime/flutter/buildContext";
import {MainAxisAlignment} from "../../runtime/flutter/widgets/mainAxisAlignment";
import {Key} from "../../runtime/flutter/key";
import {GlobalKey} from "../../runtime/flutter/widgets/globalKey";

import {Widget} from "./../../runtime/flutter/widget";
import {StatelessWidget} from "./../../runtime/flutter/widgets/statelessWidget";
import {StatefulWidget} from "./../../runtime/flutter/widgets/statefulWidget";
import {State} from "./../../runtime/flutter/widgets/state";
import {MaterialApp} from "./../../runtime/flutter/material/materialApp";
import {Scaffold} from "./../../runtime/flutter/material/scaffold";
import {AppBar} from "./../../runtime/flutter/material/appBar";
import {Text} from "./../../runtime/flutter/widgets/text";
import {Center} from "./../../runtime/flutter/widgets/center";
import {Column} from "./../../runtime/flutter/widgets/column";
import {FloatingActionButton} from "./../../runtime/flutter/material/floatingActionButton";
import {Icon} from "./../../runtime/flutter/widgets/icon";
import {AnimatedListState} from "./../../runtime/flutter/widgets/animatedListState";
import {IconButton} from "./../../runtime/flutter/material/iconButton";
import {add_circle} from "./../../runtime/flutter/material/icons/add_circle";
import {remove_circle} from "./../../runtime/flutter/material/icons/remove_circle";


declare let buildResult: Widget;

class AnimatedListSample extends StatefulWidget 
{
    public createState() 
    {
        return new _AnimatedListSampleState();
    }
}

class _AnimatedListSampleState extends State<AnimatedListSample>
{
    private listKey: GlobalKey<AnimatedListState>;
    private list: ListModel<number>;
    private selectedItem: number | undefined;
    private nextItem: number | undefined;

    public constructor() 
    {
        super();
        this.listKey = new GlobalKey<AnimatedListState>("AnimatedListState");
        this.list = new ListModel({
            listKey: this.listKey,
            initialItems: [0, 1, 2],
            removedItemBuilder: this.buildRemovedItem,
        });
    }

    private buildRemovedItem = (item: number, context: BuildContext) => 
    {
        return new Center({});
    }
    public build() 
    {
        return new MaterialApp({
            initialRoute: "/",
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Text("AnimatedList"),
                    actions: [
                        new IconButton({
                            icon: new Icon(add_circle),
                            onPressed: () => null,
                            tooltip: "insert a new item"
                        }),
                        new IconButton({
                            icon: new Icon(remove_circle),
                            onPressed: () => null,
                            tooltip: "removed the selected item",
                        })
                    ]
                }),
            })
        });
    }
}

class ListModel<E>
{
    public readonly listKey: GlobalKey<AnimatedListState>;
    public removedItemBuilder: (item: E, context: BuildContext, ) => Widget;
    private items: Array<E>;

    public constructor(props: {
        listKey: GlobalKey<AnimatedListState>,
        removedItemBuilder: (item: E, context: BuildContext, ) => Widget,
        initialItems: Array<E>
    }) 
    {
        this.listKey = props.listKey;
        this.removedItemBuilder = props.removedItemBuilder;
        this.items = props.initialItems;
    }
}

buildResult = new AnimatedListSample();