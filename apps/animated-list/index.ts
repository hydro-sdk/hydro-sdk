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
import {Icons} from "./../../runtime/flutter/material/icons";
import {AnimatedListState} from "./../../runtime/flutter/widgets/animatedListState";
import {IconButton} from "./../../runtime/flutter/material/iconButton";

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
    public build() 
    {
        return new MaterialApp({
            initialRoute: "/",
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Text("AnimatedList"),
                    actions: [
                        new IconButton({
                            icon: new Icon(Icons.add_circle),
                            onPressed: () => null,
                            tooltip: "insert a new item"
                        }),
                        new IconButton({
                            icon: new Icon(Icons.remove_circle),
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

    public constructor(listKey: GlobalKey<AnimatedListState>, removedItemBuilder: (item: E, context: BuildContext, ) => Widget, items: Array<E>) 
    {
        this.listKey = listKey;
        this.removedItemBuilder = removedItemBuilder;
        this.items = items;
    }
}

buildResult = new AnimatedListSample();