import {BuildContext} from "../../runtime/flutter/buildContext";
import {GlobalKey} from "../../runtime/flutter/widgets/globalKey";
import {EdgeInsets} from "../../runtime/flutter/painting/edgeInsets";
import {StatelessWidget} from "../../runtime/flutter/widgets/statelessWidget";
import {print} from "../../runtime/dart/core";
import {Axis} from "../../runtime/flutter/painting/axis";
import {HitTestBehavior} from "../../runtime/flutter/rendering/hitTestBehavior";

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
import {Animation} from "./../../runtime/flutter/animation/animation";
import {TextStyle} from "./../../runtime/flutter/package/textStyle";
import {Theme} from "./../../runtime/flutter/material/theme";
import {GestureDetector} from "./../../runtime/flutter/widgets/gestureDetector";
import {SizeTransition} from "./../../runtime/flutter/widgets/sizeTransition";
import {Card} from "./../../runtime/flutter/material/card";
import {Center} from "./../../runtime/flutter/widgets/center";
import {add_circle} from "./../../runtime/flutter/material/icons/add_circle";
import {remove_circle} from "./../../runtime/flutter/material/icons/remove_circle";

declare let buildResult: Widget;

class AnimatedListSample extends StatefulWidget 
{
    public createState(): _AnimatedListSampleState 
    {
        return new _AnimatedListSampleState();
    }
}

class _AnimatedListSampleState extends State<AnimatedListSample>
{
    private listKey: GlobalKey<AnimatedListState>;
    private list: ListModel<number>;
    private selectedItem: number | undefined;
    private nextItem = 3;

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

    private buildItem = (context: BuildContext, index: number, animation: Animation<number>) => 
    {
        print("Called builditem");
        return new CardItem({
            animation: animation,
            item: this.list.at(index),
            selected: this.selectedItem == this.list.at(index),
            onTap: () => 
            {
                this.setState(() => 
                {
                    this.selectedItem = this.selectedItem == this.list.at(index) ? undefined : this.list.at(index);
                });
            }
        });
    }

    private insert: () => void = () => 
    {
        const index: number = this.selectedItem != undefined ? this.list.length() : this.list.indexOf(this.selectedItem!);
        this.list.insert(index, this.nextItem++);
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
                            onPressed: () => this.insert(),
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
                            // print("Called itemBuilder");
                            // print("context");
                            // print(context as any);
                            // print("num");
                            // print(num as any);
                            // print("anim");
                            // print(anim as any);
                            return this.buildItem(context, num, anim);
                        }
                    })
                })
            })
        });
    }
}

class ListModel<E>
{
    public at: (idx: number) => E = (idx: number) => 
    {
        return this.items[idx];
    }

    public insert(index: number, item: E) 
    {
        this.items.splice(index, 0, item);
        this.listKey.currentState().insertItem(index);
    }
    public indexOf: (item: E) => number = (item: E) => this.items.indexOf(item)
    private items: Array<E>;
    public readonly listKey: GlobalKey<AnimatedListState>;
    public removedItemBuilder: (item: E, context: BuildContext, ) => Widget;

    public length = () => 
    {
        return this.items.length;
    }

    public constructor(props: {
        listKey: GlobalKey<AnimatedListState>;
        removedItemBuilder: (item: E, context: BuildContext, ) => Widget;
        initialItems: Array<E>;
    }) 
    {
        this.listKey = props.listKey;
        this.removedItemBuilder = props.removedItemBuilder;
        this.items = props.initialItems;
    }
}

interface CardItemProps {
    animation: Animation<number>;
    onTap: () => void;
    item: number;
    selected: boolean;
}

class CardItem extends StatelessWidget 
{
    public animation: Animation<number>;
    public onTap: () => void;
    public item: number;
    public selected: boolean;

    public constructor(props: CardItemProps) 
    {
        print("called CardItem ctor");
        super();
        this.animation = props.animation;
        this.onTap = props.onTap;
        this.item = props.item;
        this.selected = props.selected;
    }

    public build(context: BuildContext): Widget 
    {
        print("Build carditem");
        const textStyle: TextStyle = Theme.of(context).textTheme.display1;
        // if(this.selected){
        //     textStyle = textStyle.c
        // }
        return new Padding({
            padding: EdgeInsets.all(2.0),
            child: new SizeTransition({
                axis: Axis.vertical,
                sizeFactor: this.animation,
                child: new GestureDetector({
                    behavior: HitTestBehavior.opaque,
                    onTap: (): void => 
                    {
                        ;
                    },
                    child: new SizedBox({
                        height: 128,
                        child: new Card({
                            child: new Center({
                                child: new Text(`Item ${this.item}`, {style: textStyle})
                            })
                        })
                    })
                })
            })
        });
    }
}

buildResult = new AnimatedListSample();