import { AppBar } from "../../runtime/flutter/material/appBar";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { runApp } from "../../runtime/flutter/runApp";
import { Widget } from "../../runtime/flutter/widget";
import { Text } from "../../runtime/flutter/widgets/text";

runApp((title: string, body: Widget) => {
    return new MaterialApp({
        title: title,
        home: new Scaffold({
            appBar: new AppBar({
                title: new Text(title),
            }),
            body: body,
        }),
    });
});
