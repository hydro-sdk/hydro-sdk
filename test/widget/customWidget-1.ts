import { Color } from "./../../runtime/dart/ui/color";
import { Key } from "./../../runtime/flutter/foundation/key";
import { StatelessWidget } from "./../../runtime/flutter/widgets/statelessWidget";
import { Icon } from "./../../runtime/flutter/widgets/icon";
import { Text } from "./../../runtime/flutter/widgets/text";
import { MainAxisAlignment } from "./../../runtime/flutter/widgets/mainAxisAlignment";
import { runApp } from "../../runtime/flutter/runApp";
import { CupertinoColors } from "../../runtime/flutter/cupertino/cupertinoColors";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { TextStyle } from "../../runtime/flutter/painting/textStyle";

interface MyCustomWidgetProps {
    key: Key;
    color: Color;
    icon: Icon;
    text: Text;
    mainAxisAlignment: MainAxisAlignment;
}

declare const org: {
    myPackage: {
        myCustomWidget: (this: void, props: MyCustomWidgetProps) => MyCustomWidget;
    }
}

class MyCustomWidget extends StatelessWidget {
    private props: MyCustomWidgetProps;
    public constructor(props: MyCustomWidgetProps) {
        super();
        this.props = props;
    }

    public build() {
        return org.myPackage.myCustomWidget(this.props);
    }
}

runApp(() =>
    new MaterialApp({
        home:
            new MyCustomWidget({
                key: new Key("Key for MyCustomwidget"),
                color: CupertinoColors.activeBlue.color,
                icon: new Icon(CupertinoIcons.book),
                text: new Text("MyCustomWidget", {
                    style: new TextStyle({
                        fontSize: 20
                    })
                }),
                mainAxisAlignment: MainAxisAlignment.center,
            })
    })
);