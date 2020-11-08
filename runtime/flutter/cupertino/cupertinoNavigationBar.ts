import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Color } from "../../dart/ui/color";
import { Brightness } from "../../dart/ui/brightness";

import { StatelessWidget } from "./../widgets/statelessWidget";
import { EdgeInsets } from "./../painting/edgeInsets";
import { Border } from "./../painting/border";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { kDefaultNavBarBorder } from "./constants";

export interface CupertinoNavigationBarProps {
    key?: Key | undefined;
    leading?: Widget | undefined;
    automaticallyImplyLeading?: boolean | undefined;
    automaticallyImplyMiddle?: boolean | undefined;
    previousPageTitle?: string | undefined;
    middle?: Widget | undefined;
    trailing?: Widget | undefined;
    backgroundColor?: Color | undefined;
    brightness?: Brightness | undefined;
    padding?: EdgeInsets | undefined;
    border?: Border | undefined;
    transitionBetweenRoutes?: boolean | undefined;
    heroTag?: string | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoNavigationBar: (this: void, props: CupertinoNavigationBarProps) => CupertinoNavigationBar;
    }
}

export class CupertinoNavigationBar extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoNavigationBar);
    public props: CupertinoNavigationBarProps;
    public constructor(props: CupertinoNavigationBarProps) {
        super();
        this.props = props;

        if (this.props.automaticallyImplyLeading === undefined) {
            this.props.automaticallyImplyLeading = true;
        }

        if (this.props.automaticallyImplyMiddle === undefined) {
            this.props.automaticallyImplyMiddle = true;
        }

        if (this.props.border === undefined) {
            this.props.border = kDefaultNavBarBorder;
        }

        if (this.props.transitionBetweenRoutes === undefined) {
            this.props.transitionBetweenRoutes = true;
        }
    }

    public build() {
        return flutter.cupertino.cupertinoNavigationBar(this.props);
    }
}
