import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { DismissDirection } from "../widgets/dismissDirection";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { ISnackBarAction } from "./snackBarAction";
import { SnackBarBehavior } from "./snackBarBehavior";
declare const flutter: {
    material: {
        snackBar: (
            this: void,
            snackBar: ISnackBar,
            props: {
                action?: ISnackBarAction | undefined;
                animation?: IAnimation<number> | undefined;
                backgroundColor?: IColor | undefined;
                behavior?: SnackBarBehavior | undefined;
                dismissDirection: DismissDirection;
                duration: IDuration;
                elevation?: number | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                onVisible?: () => void | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                shape?: IShapeBorder | undefined;
                width?: number | undefined;
                content: IWidget;
            }
        ) => ISnackBar;
        snackBarCreateAnimationController: (props: {
            vsync: ITickerProvider;
        }) => IAnimationController;
    };
};
export interface ISnackBar {
    content: IWidget;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    width: number | undefined;
    shape: IShapeBorder | undefined;
    behavior: SnackBarBehavior | undefined;
    action: ISnackBarAction | undefined;
    duration: IDuration;
    animation: IAnimation<number> | undefined;
    dismissDirection: DismissDirection;
    key: IKey | undefined;
    withAnimation: (
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ) => ISnackBar;
    createState: () => IState<ISnackBar>;
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
export class SnackBar implements IStatefulWidget, IDiagnosticable {
    public readonly content: IWidget = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly behavior: SnackBarBehavior | undefined = undefined as any;
    public readonly action: ISnackBarAction | undefined = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly animation: IAnimation<number> | undefined =
        undefined as any;
    public readonly dismissDirection: DismissDirection = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        action?: ISnackBarAction | undefined;
        animation?: IAnimation<number> | undefined;
        backgroundColor?: IColor | undefined;
        behavior?: SnackBarBehavior | undefined;
        dismissDirection?: DismissDirection;
        duration?: IDuration;
        elevation?: number | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        onVisible?: () => void | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        shape?: IShapeBorder | undefined;
        width?: number | undefined;
        content: IWidget;
    }) {
        flutter.material.snackBar(this, {
            ...snackBarDefaultProps,
            ...props,
        });
    }
    public static createAnimationController(props: {
        vsync: ITickerProvider;
    }): IAnimationController {
        return flutter.material.snackBarCreateAnimationController(props);
    }
    private readonly _dart_withAnimation: (
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ) => ISnackBar = undefined as any;
    private readonly _dart_createState: () => IState<ISnackBar> =
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
    public withAnimation(
        newAnimation: IAnimation<number>,
        props?: { fallbackKey?: IKey | undefined }
    ): ISnackBar {
        return this._dart_withAnimation(newAnimation, props);
    }
    public createState(): IState<ISnackBar> {
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
const snackBarDefaultProps = {
    dismissDirection: DismissDirection.down,
    duration: new Duration({ milliseconds: 4000 }),
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
