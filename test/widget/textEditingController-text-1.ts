import { runApp } from "./../../runtime/flutter/runApp";
import { SizedBox } from "./../../runtime/flutter/widgets/sizedBox";
import { MaterialApp } from "./../../runtime/flutter/material/materialApp";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Column } from "../../runtime/flutter/widgets/column";
import { Text } from "../../runtime/flutter/widgets/text";
import { TextEditingController } from "../../runtime/flutter/widgets/textEditingController";
import { Key } from "../../runtime/flutter/foundation/key";

class MyApp extends StatelessWidget {
    public controller = new TextEditingController({
        text: "Hello world"
    });

    public constructor() {
        super();
    }

    public build() {
        return new MaterialApp({
            home: new Column({
                children: [
                    new SizedBox({
                        key: new Key(this.controller.text)
                    }),
                    new Text(this.controller.text)
                ]
            })
        });
    }
}

runApp(() => new MyApp());