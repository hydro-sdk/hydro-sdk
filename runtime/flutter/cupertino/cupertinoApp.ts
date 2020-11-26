import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Widget } from "./../widget";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { BuildContext } from "../buildContext";

export interface CupertinoAppProps {
    initialRoute?: string | undefined;
    home: Widget;
    title?: string | undefined;
    routes?:
        | {
              [index: string]: (context: BuildContext) => Widget;
          }
        | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoApp: (this: void, props: CupertinoAppProps) => CupertinoApp;
    };
};

export class CupertinoApp extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoApp);
    public props: CupertinoAppProps;
    public constructor(props: CupertinoAppProps) {
        super();
        this.props = props;
        this.props.title =
            this.props.title != undefined ? this.props.title : "";
    }

    public build() {
        return flutter.cupertino.cupertinoApp(this.props);
    }
}
