import { IList } from "../../dart/core/list";
import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Border, IBorder } from "../painting/border";
import { IEdgeInsetsDirectional } from "../painting/edgeInsetsDirectional";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        cupertinoSliverNavigationBar: (
            this: void,
            cupertinoSliverNavigationBar: ICupertinoSliverNavigationBar,
            props: {
                automaticallyImplyLeading: boolean;
                automaticallyImplyTitle: boolean;
                backgroundColor?: IColor | undefined;
                border?: IBorder | undefined;
                brightness?: Brightness | undefined;
                heroTag: Object;
                key?: IKey | undefined;
                largeTitle?: IWidget | undefined;
                leading?: IWidget | undefined;
                middle?: IWidget | undefined;
                padding?: IEdgeInsetsDirectional | undefined;
                previousPageTitle?: string | undefined;
                stretch: boolean;
                trailing?: IWidget | undefined;
                transitionBetweenRoutes: boolean;
            }
        ) => ICupertinoSliverNavigationBar;
    };
};
export interface ICupertinoSliverNavigationBar {
    largeTitle: IWidget | undefined;
    leading: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    automaticallyImplyTitle: boolean;
    previousPageTitle: string | undefined;
    middle: IWidget | undefined;
    trailing: IWidget | undefined;
    backgroundColor: IColor | undefined;
    brightness: Brightness | undefined;
    padding: IEdgeInsetsDirectional | undefined;
    border: IBorder | undefined;
    transitionBetweenRoutes: boolean;
    heroTag: Object;
    stretch: boolean;
    key: IKey | undefined;
    getOpaque: () => boolean;
    createState: () => IState<ICupertinoSliverNavigationBar>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class CupertinoSliverNavigationBar
    implements IStatefulWidget, IDiagnosticable
{
    public readonly largeTitle: IWidget | undefined = undefined as any;
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly automaticallyImplyTitle: boolean = undefined as any;
    public readonly previousPageTitle: string | undefined = undefined as any;
    public readonly middle: IWidget | undefined = undefined as any;
    public readonly trailing: IWidget | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly brightness: Brightness | undefined = undefined as any;
    public readonly padding: IEdgeInsetsDirectional | undefined =
        undefined as any;
    public readonly border: IBorder | undefined = undefined as any;
    public readonly transitionBetweenRoutes: boolean = undefined as any;
    public readonly heroTag: Object = undefined as any;
    public readonly stretch: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        automaticallyImplyLeading?: boolean;
        automaticallyImplyTitle?: boolean;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        brightness?: Brightness | undefined;
        heroTag: Object;
        key?: IKey | undefined;
        largeTitle?: IWidget | undefined;
        leading?: IWidget | undefined;
        middle?: IWidget | undefined;
        padding?: IEdgeInsetsDirectional | undefined;
        previousPageTitle?: string | undefined;
        stretch?: boolean;
        trailing?: IWidget | undefined;
        transitionBetweenRoutes?: boolean;
    }) {
        flutter.cupertino.cupertinoSliverNavigationBar(this, {
            ...cupertinoSliverNavigationBarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getOpaque: () => boolean = undefined as any;
    private readonly _dart_createState: () => IState<ICupertinoSliverNavigationBar> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public getOpaque(): boolean {
        return this._dart_getOpaque();
    }
    public createState(): IState<ICupertinoSliverNavigationBar> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const cupertinoSliverNavigationBarDefaultProps = {
    automaticallyImplyLeading: true,
    automaticallyImplyTitle: true,
    border: new Border(),

    stretch: false,
    transitionBetweenRoutes: true,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
