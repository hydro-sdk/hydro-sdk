import {runApp} from "../../runtime/flutter/runApp";
import {StatefulWidget} from "../../runtime/flutter/widgets/statefulWidget";
import {State} from "../../runtime/flutter/widgets/state";
import {Widget} from "../../runtime/flutter/widget";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";
import {Scaffold} from "../../runtime/flutter/material/scaffold";
import {AppBar} from "../../runtime/flutter/material/appBar";
import {Text} from "../../runtime/flutter/widgets/text";
import {IconData} from "../../runtime/flutter/widgets/iconData";
import {StatelessWidget} from "../../runtime/flutter/widgets/statelessWidget";
import {Theme} from "../../runtime/flutter/material/theme";
import {BuildContext} from "../../runtime/flutter/buildContext";
import {Card} from "../../runtime/flutter/material/card";
import {IconButton} from "../../runtime/flutter/material/iconButton";
import {Icon} from "../../runtime/flutter/widgets/icon";
import {PopupMenuItem} from "../../runtime/flutter/material/popupMenuItem";
import {PopupMenuButton} from "../../runtime/flutter/material/popupMenuButton";
import {directions_car} from "../../runtime/flutter/material/icons/directions_car";
import {directions_bike} from "../../runtime/flutter/material/icons/directions_bike";
import {directions_boat} from "../../runtime/flutter/material/icons/directions_boat";
import {directions_bus} from "../../runtime/flutter/material/icons/directions_bus";
import {directions_railway} from "../../runtime/flutter/material/icons/directions_railway";
import {directions_walk} from "../../runtime/flutter/material/icons/directions_walk";
import {Padding} from "../../runtime/flutter/widgets/padding";
import {EdgeInsets} from "../../runtime/flutter/painting/edgeInsets";
import {Center} from "../../runtime/flutter/widgets/center";
import {Column} from "../../runtime/flutter/widgets/column";
import {MainAxisSize} from "../../runtime/flutter/rendering/mainAxisSize";
import {CrossAxisAlignment} from "../../runtime/flutter/rendering/crossAxisAlignment";
import {Colors} from "../../runtime/flutter/material/colors";

class BasicAppBarSample extends StatefulWidget 
{
    public constructor() 
    {
        super();
    }

    public createState(): _BasicAppBarSampleState 
    {
        return new _BasicAppBarSampleState();
    }
}

class _BasicAppBarSampleState extends State<BasicAppBarSample>
{
    public selectedChoice = choices[0];
    public constructor() 
    {
        super();
    }

    public select = (choice: Choice) => 
    {
        this.setState(() => 
        {
            this.selectedChoice = choice;
        });
    }

    public build(): Widget 
    {
        return new MaterialApp({
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Text("Basic Appbar"),
                    actions: [
                        new IconButton({
                            icon: new Icon(choices[0].icon),
                            onPressed: () => 
                            {
                                this.select(choices[0]);
                            }
                        }),
                        new IconButton({
                            icon: new Icon(choices[1].icon),
                            onPressed: () => 
                            {
                                this.select(choices[1]);
                            }
                        }),
                        new PopupMenuButton<Choice>({
                            onSelected: (choice: Choice) => 
                            {
                                this.select(choice);
                            },
                            itemBuilder: (): PopupMenuItem<Choice>[] => 
                            {
                                return choices.map((choice) => 
                                {
                                    return new PopupMenuItem<Choice>({
                                        value: choice,
                                        child: new Text(choice.title)
                                    });
                                });
                            }
                        })
                    ]
                }),
                body: new Padding({
                    padding: EdgeInsets.all(16.0),
                    child: new ChoiceCard({choice: this.selectedChoice})
                })
            }),
            initialRoute: "/"
        });
    }
}

class Choice 
{
    public title: string;
    public icon: IconData;

    public constructor(props: { title: string; icon: IconData }) 
    {
        this.title = props.title;
        this.icon = props.icon;
    }
}

const choices = [
    new Choice({title: "Car", icon: directions_car}),
    new Choice({title: "Bicycle", icon: directions_bike}),
    new Choice({title: "Boat", icon: directions_boat}),
    new Choice({title: "Bus", icon: directions_bus}),
    new Choice({title: "Train", icon: directions_railway}),
    new Choice({title: "Walk", icon: directions_walk})
];

class ChoiceCard extends StatelessWidget 
{
    public readonly choice: Choice;
    public constructor(props: { choice: Choice }) 
    {
        super();
        this.choice = props.choice;
    }

    public build(context: BuildContext): Widget 
    {
        const textStyle = Theme.of(context).textTheme.display1;
        return new Card({
            color: Colors.white,
            child: new Center({
                child: new Column({
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        new Icon(this.choice.icon, {size: 128.0, color: textStyle.color}),
                        new Text(this.choice.title, {style: textStyle})
                    ]
                })
            })
        });
    }
}


runApp(() => new BasicAppBarSample());