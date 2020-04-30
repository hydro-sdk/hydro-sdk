import {runApp} from "../../runtime/flutter/runApp";
import {MaterialApp} from "../../runtime/flutter/material/materialApp";
import {Text} from "../../runtime/flutter/widgets/text";
import {Scaffold} from "../../runtime/flutter/material/scaffold";
import {AppBar} from "../../runtime/flutter/material/appBar";
import {Widget} from "../../runtime/flutter/widget";


runApp((title: string, body: Widget) => 
{
    return new MaterialApp({
        title: title,
        home: new Scaffold({
            appBar: new AppBar({
                title: new Text(title),
            }),
            body: body
        })
    });
});