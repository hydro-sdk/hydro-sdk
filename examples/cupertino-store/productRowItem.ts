import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { Product } from "./data/product";
import { Column } from "../../runtime/flutter/widgets/column";
import { Padding } from "../../runtime/flutter/widgets/padding";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { Container } from "../../runtime/flutter/widgets/container";
import { SafeArea } from "../../runtime/flutter/widgets/safeArea";
import { Row } from "../../runtime/flutter/widgets/row";
import { ClipRRect } from "../../runtime/flutter/widgets/clipRRect";
import { BorderRadius } from "../../runtime/flutter/painting/borderRadius";
import { Image } from "../../runtime/flutter/widgets/image";
import { BoxFit } from "../../runtime/flutter/painting/boxFit";
import { Expanded } from "../../runtime/flutter/widgets/expanded";
import { MainAxisAlignment } from "../../runtime/flutter/widgets/mainAxisAlignment";
import { CrossAxisAlignment } from "../../runtime/flutter/rendering/crossAxisAlignment";
import { Text } from "../../runtime/flutter/widgets/text";
import { CupertinoButton } from "../../runtime/flutter/cupertino/cupertinoButton";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { ScopedModel } from "../../runtime/scopedModel/scopedModel";
import { AppStateModel } from "./data/appStateModel";
import { Icon } from "../../runtime/flutter/widgets/icon";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { Styles } from "./styles";

export class ProductRowItem extends StatelessWidget {
    private product: Product;
    private index: number;
    private lastItem: boolean;
    public constructor(props: {
        product: Product;
        index: number;
        lastItem: boolean;
    }) {
        super();

        this.product = props.product;
        this.index = props.index;
        this.lastItem = props.lastItem;
    }

    public build(context: BuildContext) {
        return new Column({
            children: [
                new SafeArea({
                    top: false,
                    bottom: false,
                    minimum: EdgeInsets.only({
                        left: 16,
                        top: 8,
                        bottom: 8,
                        right: 8,
                    }),
                    child: new Row({
                        children: [
                            new ClipRRect({
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(this.product.assetName(), {
                                    fit: BoxFit.cover,
                                    width: 76,
                                    height: 76
                                })
                            }),
                            new Expanded({
                                child: new Padding({
                                    padding: EdgeInsets.symmetric({ horizontal: 12 }),
                                    child: new Column({
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            new Text(this.product.name, {
                                                style: Styles.productRowItemName,
                                            }),
                                            new Padding({ padding: EdgeInsets.only({ top: 8 }) }),
                                            new Text(`\$${this.product.price}`, {
                                                style: Styles.productRowItemPrice,
                                            })
                                        ]
                                    })
                                })
                            }),
                            new CupertinoButton({
                                padding: EdgeInsets.zero(),
                                onPressed: () => {
                                    const model = ScopedModel.of<AppStateModel>(context, AppStateModel.staticType);
                                    if (model) {
                                        //todo
                                    }
                                },
                                child: new Icon(CupertinoIcons.plus_circled),
                            })
                        ]
                    })
                }),
                new Padding({
                    padding: EdgeInsets.only({
                        left: 100,
                        right: 16,
                    }),
                    child: new Container({
                        height: 1,
                        color: Styles.productRowDivider,
                    })
                })
            ]
        });
    }
}
