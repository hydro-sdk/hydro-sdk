import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { ScopedModelDescendant } from "../../runtime/scopedModel/scopedModelDescendant";
import { AppStateModel } from "./data/appStateModel";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { CustomScrollView } from "../../runtime/flutter/widgets/customScrollView";
import { List } from "../../runtime/dart/collection/list";
import { CupertinoSliverNavigationBar } from "../../runtime/flutter/cupertino/cupertinoSliverNavigationBar";
import { Text } from "../../runtime/flutter/widgets/text";
import { SliverSafeArea } from "../../runtime/flutter/widgets/sliverSafeArea";
import { SliverList } from "../../runtime/flutter/widgets/sliverList";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { SliverChildBuilderDelegate } from "../../runtime/flutter/widgets/sliverChildBuilderDelegate";
import { ProductRowItem } from "./productRowItem";

export class ProductListTab extends StatelessWidget {
    public build() {
        return new ScopedModelDescendant<AppStateModel>({
            builder: (context, _, model) => {
                if (model) {
                    const products = model.getProducts();
                    return new CustomScrollView({
                        semanticChildCount: products.length(),
                        slivers: List.fromArray([
                            new CupertinoSliverNavigationBar({
                                largeTitle: new Text("Cupertino Store")
                            }),
                            new SliverSafeArea({
                                top: false,
                                minimum: EdgeInsets.only({ top: 8 }),
                                sliver: new SliverList({
                                    delegate: new SliverChildBuilderDelegate((_, index) => {
                                        if (index < model.getProducts().length()) {
                                            return new ProductRowItem({
                                                index: index,
                                                product: model.getProducts().elementAt(index),
                                                lastItem: index == model.getProducts().length() - 1
                                            });
                                        }

                                        return undefined;
                                    })
                                })
                            })
                        ])
                    });
                }
                return new SizedBox({});
            },
            type: AppStateModel.staticType
        })
    }
}
