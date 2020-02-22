import {BuildContext} from "../../runtime/flutter/buildContext";
import {GlobalKey} from "../../runtime/flutter/widgets/globalKey";
import {EdgeInsets} from "../../runtime/flutter/painting/edgeInsets";

import {Widget} from "./../../runtime/flutter/widget";
import {StatefulWidget} from "./../../runtime/flutter/widgets/statefulWidget";
import {State} from "./../../runtime/flutter/widgets/state";
import {MaterialApp} from "./../../runtime/flutter/material/materialApp";
import {Scaffold} from "./../../runtime/flutter/material/scaffold";
import {AppBar} from "./../../runtime/flutter/material/appBar";
import {Text} from "./../../runtime/flutter/widgets/text";
import {Icon} from "./../../runtime/flutter/widgets/icon";
import {AnimatedListState} from "./../../runtime/flutter/widgets/animatedListState";
import {IconButton} from "./../../runtime/flutter/material/iconButton";
import {SizedBox} from "./../../runtime/flutter/widgets/sizedBox";
import {Padding} from "./../../runtime/flutter/widgets/padding";
import {AnimatedList} from "./../../runtime/flutter/widgets/animatedList";
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

    public constructor() 
    {
        super();
        this.listKey = new GlobalKey<AnimatedListState>("AnimatedListState");
        this.list = new ListModel<number>({
            listKey: this.listKey,
            initialItems: [0, 1, 2],
            removedItemBuilder: (item: number, context: BuildContext) => 
            {
                return new SizedBox({});
            }
        });
    }

    private buildRemovedItem = () => 
    {
        return new SizedBox({});
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
                body: new Padding({
                    padding: EdgeInsets.all(16.0),
                    child: new AnimatedList({
                        key: this.listKey,
                        initialItemCount: this.list.length(),
                        itemBuilder: (context: BuildContext, num: number, anim) => 
                        {
                            return new SizedBox({});
                        }
                    })
                })
            })
        });
    }
}

class ListModel<E>
{
    private items: Array<E>;
    public readonly listKey: GlobalKey<AnimatedListState>;
    public removedItemBuilder: (item: E, context: BuildContext, ) => Widget;

    public length = () => 
    {
        return this.items.length;
    }

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