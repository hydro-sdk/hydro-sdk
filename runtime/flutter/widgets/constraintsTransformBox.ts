import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IRenderConstraintsTransformBox } from "../rendering/renderConstraintsTransformBox";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "./buildContext";
import { ISingleChildRenderObjectElement } from "./singleChildRenderObjectElement";
import { ISingleChildRenderObjectWidget } from "./singleChildRenderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        constraintsTransformBox: (
            this: void,
            constraintsTransformBox: IConstraintsTransformBox,
            props: {
                alignment: IAlignmentGeometry;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                debugTransformType: string;
                key?: IKey | undefined;
                textDirection?: TextDirection | undefined;
                constraintsTransform: (__: IBoxConstraints) => IBoxConstraints;
            }
        ) => IConstraintsTransformBox;
        constraintsTransformBoxUnmodified: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxWidthUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxHeightUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxMaxHeightUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxMaxWidthUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
        constraintsTransformBoxMaxUnconstrained: (
            constraints: IBoxConstraints
        ) => IBoxConstraints;
    };
};
export interface IConstraintsTransformBox {
    textDirection: TextDirection | undefined;
    alignment: IAlignmentGeometry;
    clipBehavior: Clip;
    child: IWidget | undefined;
    key: IKey | undefined;
    createRenderObject: (
        context: IBuildContext
    ) => IRenderConstraintsTransformBox;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => ISingleChildRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class ConstraintsTransformBox
    implements ISingleChildRenderObjectWidget, IDiagnosticable
{
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        debugTransformType?: string;
        key?: IKey | undefined;
        textDirection?: TextDirection | undefined;
        constraintsTransform: (__: IBoxConstraints) => IBoxConstraints;
    }) {
        flutter.widgets.constraintsTransformBox(this, {
            ...constraintsTransformBoxDefaultProps,
            ...props,
        });
    }
    public static unmodified(constraints: IBoxConstraints): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxUnmodified(constraints);
    }
    public static unconstrained(constraints: IBoxConstraints): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxUnconstrained(
            constraints
        );
    }
    public static widthUnconstrained(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxWidthUnconstrained(
            constraints
        );
    }
    public static heightUnconstrained(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxHeightUnconstrained(
            constraints
        );
    }
    public static maxHeightUnconstrained(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxMaxHeightUnconstrained(
            constraints
        );
    }
    public static maxWidthUnconstrained(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxMaxWidthUnconstrained(
            constraints
        );
    }
    public static maxUnconstrained(
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return flutter.widgets.constraintsTransformBoxMaxUnconstrained(
            constraints
        );
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderConstraintsTransformBox = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => ISingleChildRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public createRenderObject(
        context: IBuildContext
    ): IRenderConstraintsTransformBox {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): ISingleChildRenderObjectElement {
        return this._dart_createElement();
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
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
const constraintsTransformBoxDefaultProps = {
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    debugTransformType: "",
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
