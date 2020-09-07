import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";

import { StatelessWidget } from "./../widgets/statelessWidget";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { CupertinoNavigationBar } from "./cupertinoNavigationBar";

export interface CupertinoPageScaffoldProps {
    key?: Key | undefined;
    navigationBar?: CupertinoNavigationBar | undefined;
    backgroundColor?: Color | undefined;
    resizeToAvoidBottomInset?: boolean | undefined;
    child: Widget;
}

declare const flutter: {
    cupertino: {
        cupertinoPageScaffold: (this: void, props: CupertinoPageScaffoldProps) => CupertinoPageScaffold;
    }
}

export class CupertinoPageScaffold extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoPageScaffold);
    public props: CupertinoPageScaffoldProps;
    public constructor(props: CupertinoPageScaffoldProps) {
        super();
        this.props = props;

        if (this.props.resizeToAvoidBottomInset === undefined) {
            this.props.resizeToAvoidBottomInset = true;
        }
    }

    public build() {
        return flutter.cupertino.cupertinoPageScaffold(this.props);
    }
}
