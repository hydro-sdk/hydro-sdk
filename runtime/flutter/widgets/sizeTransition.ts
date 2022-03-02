import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IListenable } from "../foundation/listenable";
import { Axis } from "../painting/axis";
import { IAnimatedWidget } from "./animatedWidget";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        sizeTransition: (
            this: void,
            sizeTransition: ISizeTransition,
            props: {
                axis: Axis;
                axisAlignment: number;
                child?: IWidget | undefined;
                key?: IKey | undefined;
                sizeFactor: IAnimation<number>;
            }
        ) => ISizeTransition;
    };
};
export interface ISizeTransition {
    axis: Axis;
    axisAlignment: number;
    child: IWidget | undefined;
    listenable: IListenable;
    key: IKey | undefined;
    getSizeFactor: () => IAnimation<number>;
    build: (context: IBuildContext) => IWidget;
    createState: () => IState<IAnimatedWidget>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
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
export class SizeTransition implements IAnimatedWidget, IDiagnosticable {
    public readonly axis: Axis = undefined as any;
    public readonly axisAlignment: number = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly listenable: IListenable = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        axis?: Axis;
        axisAlignment?: number;
        child?: IWidget | undefined;
        key?: IKey | undefined;
        sizeFactor: IAnimation<number>;
    }) {
        flutter.widgets.sizeTransition(this, {
            ...sizeTransitionDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getSizeFactor: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createState: () => IState<IAnimatedWidget> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
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
    public getSizeFactor(): IAnimation<number> {
        return this._dart_getSizeFactor();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createState(): IState<IAnimatedWidget> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
const sizeTransitionDefaultProps = {
    axis: Axis.vertical,
    axisAlignment: 0.0,
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
