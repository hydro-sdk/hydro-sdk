import { State } from "../../runtime/flutter/widgets/state";
import { StatefulWidget } from "./../../runtime/flutter/widgets/statefulWidget";
import { TextEditingController } from "./../../runtime/flutter/widgets/textEditingController";
import { FocusNode } from "./../../runtime/flutter/widgets/focusNode";
import { Padding } from "./../../runtime/flutter/widgets/padding";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { AppStateModel } from "./data/appStateModel";

import { ScopedModel } from "../../runtime/scopedModel/scopedModel";
import { List } from "../../runtime/dart/collection/list";
import { Product } from "./data/product";
import { Styles } from "./styles";
import { DecoratedBox } from "../../runtime/flutter/widgets/decoratedBox";
import { SafeArea } from "../../runtime/flutter/widgets/safeArea";
import { Column } from "../../runtime/flutter/widgets/column";
import { Expanded } from "../../runtime/flutter/widgets/expanded";
import { ListView } from "../../runtime/flutter/widgets/listView";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { BoxDecoration } from "../../runtime/flutter/painting/boxDecoration";

export class SearchTab extends StatefulWidget {
    public createState = () => new SearchTabState();
}

class SearchTabState extends State<SearchTab>{
    private controller: TextEditingController;
    private focusNode: FocusNode;
    private terms = "";

    public constructor() {
        super();
        this.controller = new TextEditingController();
        this.focusNode = new FocusNode();
        this.controller.addListener(() => this.onTextChanged());
    }

    public dispose() {
        this.focusNode.dispose();
        this.controller.dispose();
    }

    private onTextChanged() {
        this.setState(() => {
            this.terms = this.controller.getText();
        });
    }

    private buildSearchBox() {
        return new Padding({
            padding: EdgeInsets.all(8),

        });
    }

    public build(context) {
        const model = ScopedModel.of<AppStateModel>(context, AppStateModel.staticType);
        let products: List<Product> | undefined;
        if (model) {
            products = model.search(this.terms);
        }

        return new DecoratedBox({
            decoration: new BoxDecoration({
                color: Styles.scaffoldBackground,
            }),
            child: new SafeArea({
                child: new Column({
                    children: [
                        this.buildSearchBox(),
                        new Expanded({
                            child: ListView.builder({
                                itemBuilder: (_, index) => new SizedBox({})
                            })
                        })
                    ]
                })
            })
        });
    }
}