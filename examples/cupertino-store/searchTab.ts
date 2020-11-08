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
import { BoxDecoration } from "../../runtime/flutter/painting/boxDecoration";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { ProductRowItem } from "./productRowItem";
import { SearchBar } from "./searchBar";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { pauseInDebugger } from "../../runtime/dart/developer/debugger";

export class SearchTab extends StatefulWidget {
    public createState() {
        return new SearchTabState();
    }
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

    public initState() {

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
            child: new SearchBar({
                controller: this.controller,
                focusNode: this.focusNode,
            })
        });
    }

    public build(context: BuildContext) {
        const model = ScopedModel.of<AppStateModel>(context, AppStateModel.staticType);
        let products: List<Product> | undefined;
        console.log(this.terms);
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
                            child:
                                products !== undefined && products.length() >= 1 ?
                                    ListView.builder({
                                        itemCount: products.length(),
                                        itemBuilder: (_, index) =>
                                            new ProductRowItem({
                                                index: index,
                                                product: products?.elementAt(index)!,
                                                lastItem: index == products?.length()! - 1
                                            })
                                    }) : new SizedBox({})
                        })
                    ]
                })
            })
        });
    }
}