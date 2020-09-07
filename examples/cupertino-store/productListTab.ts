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
                                        return new SizedBox({});
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
