import { BuildContext } from "../../runtime/flutter/buildContext";
import { Key } from "../../runtime/flutter/foundation/key";
import { AppBar } from "../../runtime/flutter/material/appBar";
import { Card } from "../../runtime/flutter/material/card";
import { Colors } from "../../runtime/flutter/material/colors";
import { IconButton } from "../../runtime/flutter/material/iconButton";
import { Icons } from "../../runtime/flutter/material/icons";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { PopupMenuButton } from "../../runtime/flutter/material/popupMenuButton";
import { PopupMenuItem } from "../../runtime/flutter/material/popupMenuItem";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { Theme } from "../../runtime/flutter/material/theme";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { CrossAxisAlignment } from "../../runtime/flutter/rendering/crossAxisAlignment";
import { MainAxisSize } from "../../runtime/flutter/rendering/mainAxisSize";
import { Widget } from "../../runtime/flutter/widget";
import { Center } from "../../runtime/flutter/widgets/center";
import { Column } from "../../runtime/flutter/widgets/column";
import { Icon } from "../../runtime/flutter/widgets/icon";
import { IconData } from "../../runtime/flutter/widgets/iconData";
import { Padding } from "../../runtime/flutter/widgets/padding";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { State } from "../../runtime/flutter/widgets/state";
import { StatefulWidget } from "../../runtime/flutter/widgets/statefulWidget";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../runtime/flutter/widgets/text";

export class BasicAppBarSample extends StatefulWidget {
    public constructor() {
        super();
    }

    public createState(): _BasicAppBarSampleState {
        return new _BasicAppBarSampleState();
    }
}

class _BasicAppBarSampleState extends State<BasicAppBarSample> {
    public selectedChoice = choices[0];
    public constructor() {
        super();
    }

    public select = (choice: Choice) => {
        this.setState(() => {
            this.selectedChoice = choice;
        });
    };

    public dispose() {}

    public initState() {}

    public build(): Widget {
        return new MaterialApp({
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Text("Basic Appbar"),
                    actions: [
                        new IconButton({
                            key: new Key(choices[0].icon.toString() + "button"),
                            icon: new Icon(choices[0].icon),
                            onPressed: () => {
                                this.select(choices[0]);
                            },
                        }),
                        new IconButton({
                            key: new Key(choices[1].icon.toString() + "button"),
                            icon: new Icon(choices[1].icon),
                            onPressed: () => {
                                this.select(choices[1]);
                            },
                        }),
                        new PopupMenuButton<Choice>({
                            onSelected: (choice: Choice) => {
                                this.select(choice);
                            },
                            itemBuilder: (): PopupMenuItem<Choice>[] => {
                                return choices.map((choice) => {
                                    return new PopupMenuItem<Choice>({
                                        value: choice,
                                        child: new Text(choice.title),
                                    });
                                });
                            },
                        }),
                    ],
                }),
                body: new Padding({
                    padding: EdgeInsets.all(16.0),
                    child: new ChoiceCard({ choice: this.selectedChoice }),
                }),
            }),
            initialRoute: "/",
        });
    }
}

class Choice {
    public title: string;
    public icon: IconData;

    public constructor(props: { title: string; icon: IconData }) {
        this.title = props.title;
        this.icon = props.icon;
    }
}

const choices = [
    new Choice({ title: "Car", icon: Icons.directions_car }),
    new Choice({ title: "Bicycle", icon: Icons.directions_bike }),
    new Choice({ title: "Boat", icon: Icons.directions_boat }),
    new Choice({ title: "Bus", icon: Icons.directions_bus }),
    new Choice({ title: "Train", icon: Icons.directions_railway }),
    new Choice({ title: "Walk", icon: Icons.directions_walk }),
];

class ChoiceCard extends StatelessWidget {
    public readonly choice: Choice;
    public constructor(props: { choice: Choice }) {
        super();
        this.choice = props.choice;
    }

    public build(context: BuildContext): Widget {
        const textStyle = Theme.of(context).textTheme.display1;
        return new Card({
            color: Colors.white,
            child: new Center({
                child: new Column({
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        new SizedBox({
                            key: new Key(this.choice.icon.toString()),
                        }),
                        new Icon(this.choice.icon, {
                            size: 128.0,
                            color: textStyle.color,
                        }),
                        new Text(this.choice.title, { style: textStyle }),
                    ],
                }),
            }),
        });
    }
}
