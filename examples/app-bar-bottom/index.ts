import {StatefulWidget} from "../../runtime/flutter/widgets/statefulWidget";
import {State} from "../../runtime/flutter/widgets/state";
import {Widget} from "../../runtime/flutter/widget";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";
import {Scaffold} from "../../runtime/flutter/material/scaffold";
import {AppBar} from "../../runtime/flutter/material/appBar";
import {Text} from "../../runtime/flutter/widgets/text";
import {IconButton} from "../../runtime/flutter/material/iconButton";
import {Icon} from "../../runtime/flutter/widgets/icon";
import {arrow_forward} from "../../runtime/flutter/material/icons/arrow_forward";
import {runApp} from "../../runtime/flutter/runApp";
import {PreferredSize} from "../../runtime/flutter/widgets/preferredSize";
import {SizedBox} from "../../runtime/flutter/widgets/sizedBox";
import {Size} from "../../runtime/dart/ui/size";

class AppBarBottomSample extends StatefulWidget 
{
    public constructor() 
    {
        super();
    }

    public createState(): _AppBarBottomSampleState 
    {
        return new _AppBarBottomSampleState();
    }
}

class _AppBarBottomSampleState extends State<AppBarBottomSample>
{
    public constructor() 
    {
        super();
    }

    public build(): Widget 
    {
        return new MaterialApp({
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Text("AppBar Bottom Widget"),

                    actions: [
                        new IconButton({
                            icon: new Icon(arrow_forward),
                            tooltip: "Next choice",
                            onPressed: () => null
                        }),
                    ],
                    bottom: new PreferredSize({
                        child: new SizedBox({}),
                        preferredSize: Size.fromHeight(48.0)
                    })
                }),
            }),
            initialRoute: "/"
        });
    }
}

runApp(() => new AppBarBottomSample());