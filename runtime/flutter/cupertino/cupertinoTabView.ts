import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { Key } from "../foundation/key";

import { StatelessWidget } from "../widgets/statelessWidget";
import { WidgetBuilder } from "../widgets/widgetBuilder";

export interface CupertinoTabViewProps {
    key?: Key | undefined;
    builder?: WidgetBuilder;
    //navigatorKey
    defaultTitle?: string | undefined;
    routes?: { [i: string]: WidgetBuilder } | undefined;
    //onGenerateRoute
    //onUnkownRoute
    //navigatorObservers
}

declare const flutter: {
    cupertino: {
        cupertinoTabView: (this: void, props: CupertinoTabViewProps) => CupertinoTabView;
    }
}

export class CupertinoTabView extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoTabView);
    public props: CupertinoTabViewProps;
    public constructor(props: CupertinoTabViewProps) {
        super();
        this.props = props;
    }

    public build() {
        return flutter.cupertino.cupertinoTabView(this.props);
    }
}
