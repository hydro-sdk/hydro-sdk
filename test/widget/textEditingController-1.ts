import { MaterialApp } from "./../../runtime/flutter/material/materialApp";
import { runApp } from "./../../runtime/flutter/runApp";
import { TextRange } from "../../runtime/dart/ui/textRange";
import { Key } from "../../runtime/flutter/foundation/key";
import { InputDecoration } from "../../runtime/flutter/material/inputDecoration";
import { OutlineInputBorder } from "../../runtime/flutter/material/outlineInputBorder";
import { Scaffold } from "../../runtime/flutter/material/scaffold";
import { TextFormField } from "../../runtime/flutter/material/textFormField";
import { Alignment } from "../../runtime/flutter/painting/alignment";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { TextSelection } from "../../runtime/flutter/services/textSelection";
import { Container } from "../../runtime/flutter/widgets/container";
import { State } from "../../runtime/flutter/widgets/state";
import { StatefulWidget } from "../../runtime/flutter/widgets/statefulWidget";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { TextEditingController } from "../../runtime/flutter/widgets/textEditingController";

class MyApp extends StatelessWidget {
    public constructor() {
        super();
    }

    public build() {
        return new MaterialApp({
            home: new MyStatefulWidget(),
        });
    }
}

class MyStatefulWidget extends StatefulWidget {
    public constructor() {
        super();
    }

    public createState() {
        return new MyStatefulWidgetState();
    }
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
    private controller = new TextEditingController();
    public constructor() {
        super();
    }

    public initState() {
        this.controller.addListener(() => {
            const text = this.controller.getText().toLowerCase();
            this.controller.setValue(
                this.controller.getValue().copyWith({
                    text: text,
                    selection: new TextSelection({
                        baseOffset: text.length,
                        extentOffset: text.length,
                    }),
                    composing: TextRange.empty,
                })
            );
        });
    }

    public dispose() {
        this.controller.dispose();
    }

    public build() {
        return new Scaffold({
            body: new Container({
                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                child: new TextFormField({
                    key: new Key("textFormField"),
                    controller: this.controller,
                    decoration: new InputDecoration({
                        border: new OutlineInputBorder({}),
                    }),
                }),
            }),
        });
    }
}

runApp(() => new MyApp());
