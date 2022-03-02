import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IAnimatedWidgetBaseState } from "./animatedWidgetBaseState";
import { IImplicitlyAnimatedWidget } from "./implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "./implicitlyAnimatedWidgetState";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        animatedContainer: (
            this: void,
            animatedContainer: IAnimatedContainer,
            props: {
                alignment?: IAlignmentGeometry | undefined;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                color?: IColor | undefined;
                constraints?: IBoxConstraints | undefined;
                curve: ICurve;
                decoration?: IDecoration | undefined;
                foregroundDecoration?: IDecoration | undefined;
                height?: number | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                onEnd?: () => void | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                transform?: IMatrix4 | undefined;
                transformAlignment?: IAlignmentGeometry | undefined;
                width?: number | undefined;
                duration: IDuration;
            }
        ) => IAnimatedContainer;
    };
};
export interface IAnimatedContainer {
    child: IWidget | undefined;
    alignment: IAlignmentGeometry | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    decoration: IDecoration | undefined;
    foregroundDecoration: IDecoration | undefined;
    constraints: IBoxConstraints | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    transform: IMatrix4 | undefined;
    transformAlignment: IAlignmentGeometry | undefined;
    clipBehavior: Clip;
    curve: ICurve;
    duration: IDuration;
    onEnd: () => void | undefined;
    key: IKey | undefined;
    createState: () => IAnimatedWidgetBaseState<IAnimatedContainer>;
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
export class AnimatedContainer
    implements IImplicitlyAnimatedWidget, IDiagnosticable
{
    public readonly child: IWidget | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly foregroundDecoration: IDecoration | undefined =
        undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly transform: IMatrix4 | undefined = undefined as any;
    public readonly transformAlignment: IAlignmentGeometry | undefined =
        undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry | undefined;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        color?: IColor | undefined;
        constraints?: IBoxConstraints | undefined;
        curve?: ICurve;
        decoration?: IDecoration | undefined;
        foregroundDecoration?: IDecoration | undefined;
        height?: number | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        onEnd?: () => void | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        transform?: IMatrix4 | undefined;
        transformAlignment?: IAlignmentGeometry | undefined;
        width?: number | undefined;
        duration: IDuration;
    }) {
        flutter.widgets.animatedContainer(this, {
            ...animatedContainerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IAnimatedWidgetBaseState<IAnimatedContainer> =
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
    public createState(): IAnimatedWidgetBaseState<IAnimatedContainer> {
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
const animatedContainerDefaultProps = {
    clipBehavior: Clip.none,
    curve: Curves.linear,
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
