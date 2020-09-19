import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";

import { StatelessWidget } from "./../widgets/statelessWidget";
import { IndexedWidgetBuilder } from "./../widgets/indexedWidgetBuilder";
import { Key } from "../foundation/key";
import { CupertinoTabBar } from "./cupertinoTabBar";
import { CupertinoTabController } from "./cupertinoTabController";

export interface CupertinoTabScaffoldProps {
    key?: Key | undefined;
    tabBar: CupertinoTabBar;
    tabBuilder: IndexedWidgetBuilder;
    controller?: CupertinoTabController | undefined;
    backgroundColor?: Color | undefined;
    resizeToAvoidBottomInset?: boolean | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoTabScaffold: (this: void, props: CupertinoTabScaffoldProps) => CupertinoTabScaffold;
    }
}

export class CupertinoTabScaffold extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoTabScaffold);
    public props: CupertinoTabScaffoldProps;
    public constructor(props: CupertinoTabScaffoldProps) {
        super();
        this.props = props;

        if (this.props.resizeToAvoidBottomInset === undefined) {
            this.props.resizeToAvoidBottomInset = true;
        }
    }

    public build() {
        return flutter.cupertino.cupertinoTabScaffold(this.props);
    }
}
