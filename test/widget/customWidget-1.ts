import { IColor } from "./../../runtime/dart/ui/color";
import { Key } from "./../../runtime/flutter/foundation/key";
import { Icon } from "./../../runtime/flutter/widgets/icon";
import { MainAxisAlignment } from "./../../runtime/flutter/widgets/mainAxisAlignment";
import { StatelessWidget } from "./../../runtime/flutter/widgets/statelessWidget";
import { Text } from "./../../runtime/flutter/widgets/text";
import { CupertinoColors } from "../../runtime/flutter/cupertino/cupertinoColors";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { MaterialApp } from "../../runtime/flutter/material/materialApp";
import { TextStyle } from "../../runtime/flutter/painting/textStyle";
import { runApp } from "../../runtime/flutter/runApp";

export interface MyCustomWidgetProps {
    key: Key;
    color: IColor;
    icon: Icon;
    text: Text;
    mainAxisAlignment: MainAxisAlignment;
}

declare const org: {
    myPackage: {
        myCustomWidget: (
            this: void,
            props: MyCustomWidgetProps
        ) => MyCustomWidget;
    };
};

class MyCustomWidget extends StatelessWidget {
    private props: MyCustomWidgetProps;
    public constructor(props: MyCustomWidgetProps) {
        super();
        this.props = props;
    }

    //The StatelessWidget builtin in the CFR will recognize that this class extends StatelessWidget and wrap
    //its instances into a real Dart StatelessWidget passed to Flutter. When Flutter decides to build, our build method
    //will be called with (an optional), a boxed Dart BuildContext. In this case, we simply return the result of calling
    //our custom hook function in our custom namespace which will produce an instance of a Dart class extending StatelessWidget.
    public build() {
        return org.myPackage.myCustomWidget(this.props);
    }
}

runApp(
    () =>
        new MaterialApp({
            home: new MyCustomWidget({
                key: new Key("Key for MyCustomwidget"),
                color: CupertinoColors.activeBlue.color,
                icon: new Icon(CupertinoIcons.book),
                text: new Text("MyCustomWidget", {
                    style: new TextStyle({
                        fontSize: 20,
                    }),
                }),
                mainAxisAlignment: MainAxisAlignment.center,
            }),
        })
);
