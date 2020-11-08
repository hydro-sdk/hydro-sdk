import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";
import { TextEditingController } from "../../runtime/flutter/widgets/textEditingController";
import { FocusNode } from "../../runtime/flutter/widgets/focusNode";
import { DecoratedBox } from "../../runtime/flutter/widgets/decoratedBox";
import { Styles } from "./styles";
import { BoxDecoration } from "../../runtime/flutter/painting/boxDecoration";
import { BorderRadius } from "../../runtime/flutter/painting/borderRadius";
import { Padding } from "../../runtime/flutter/widgets/padding";
import { EdgeInsets } from "../../runtime/flutter/painting/edgeInsets";
import { Row } from "../../runtime/flutter/widgets/row";
import { Icon } from "../../runtime/flutter/widgets/icon";
import { CupertinoIcons } from "../../runtime/flutter/cupertino/cupertinoIcons";
import { CupertinoTextField } from "../../runtime/flutter/cupertino/cupertinoTextField";
import { Expanded } from "../../runtime/flutter/widgets/expanded";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { GestureDetector } from "../../runtime/flutter/widgets/gestureDetector";


export class SearchBar extends StatelessWidget {
    public controller: TextEditingController;
    public focusNode: FocusNode;

    public constructor(props: {
        controller: TextEditingController;
        focusNode: FocusNode;
    }) {
        super();
        this.controller = props.controller;
        this.focusNode = props.focusNode;
    }

    public build() {
        return new DecoratedBox({
            decoration: new BoxDecoration({
                color: Styles.searchBackground,
                borderRadius: BorderRadius.circular(10),
            }),
            child: new Padding({
                padding: EdgeInsets.symmetric({
                    horizontal: 4,
                    vertical: 8,
                }),
                child: new Row({
                    children: [
                        new Icon(CupertinoIcons.search, {
                            color: Styles.searchIconColor,
                        }),
                        new Expanded({
                            child: new CupertinoTextField({
                                controller: this.controller,
                                focusNode: this.focusNode,
                                style: Styles.searchText,
                                cursorColor: Styles.searchCursorColor,
                            })
                        }),
                        new GestureDetector({
                            onTap: () => this.controller.setText(""),
                            child: new Icon(CupertinoIcons.clear_thick_circled, {
                                color: Styles.searchIconColor
                            })
                        })
                    ]
                })
            })
        })
    }
}
