import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Axis } from "../painting/axis";
import { IBorderRadius } from "../painting/borderRadius";
import { IBorderSide } from "../painting/borderSide";
import { VerticalDirection } from "../painting/verticalDirection";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { ISingleChildRenderObjectElement } from "../widgets/singleChildRenderObjectElement";
import { ISingleChildRenderObjectWidget } from "../widgets/singleChildRenderObjectWidget";
import { IWidget } from "../widgets/widget";
import { I_SelectToggleButtonRenderObject } from "./_selectToggleButtonRenderObject";
declare const flutter: {
    material: {
        _selectToggleButton: (
            this: void,
            _selectToggleButton: I_SelectToggleButton,
            props: {
                key?: IKey | undefined;
                borderRadius: IBorderRadius;
                borderSide: IBorderSide;
                child: IWidget;
                direction: Axis;
                isFirstButton: boolean;
                isLastButton: boolean;
                leadingBorderSide: IBorderSide;
                trailingBorderSide: IBorderSide;
                verticalDirection: VerticalDirection;
            }
        ) => I_SelectToggleButton;
    };
};
export interface I_SelectToggleButton {
    leadingBorderSide: IBorderSide;
    borderSide: IBorderSide;
    trailingBorderSide: IBorderSide;
    borderRadius: IBorderRadius;
    isFirstButton: boolean;
    isLastButton: boolean;
    direction: Axis;
    verticalDirection: VerticalDirection;
    child: IWidget | undefined;
    key: IKey | undefined;
    createRenderObject: (
        context: IBuildContext
    ) => I_SelectToggleButtonRenderObject;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => ISingleChildRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class _SelectToggleButton
    implements ISingleChildRenderObjectWidget, IDiagnosticable
{
    public readonly leadingBorderSide: IBorderSide = undefined as any;
    public readonly borderSide: IBorderSide = undefined as any;
    public readonly trailingBorderSide: IBorderSide = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly isFirstButton: boolean = undefined as any;
    public readonly isLastButton: boolean = undefined as any;
    public readonly direction: Axis = undefined as any;
    public readonly verticalDirection: VerticalDirection = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        borderRadius: IBorderRadius;
        borderSide: IBorderSide;
        child: IWidget;
        direction: Axis;
        isFirstButton: boolean;
        isLastButton: boolean;
        leadingBorderSide: IBorderSide;
        trailingBorderSide: IBorderSide;
        verticalDirection: VerticalDirection;
    }) {
        flutter.material._selectToggleButton(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_SelectToggleButtonRenderObject = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => ISingleChildRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public createRenderObject(
        context: IBuildContext
    ): I_SelectToggleButtonRenderObject {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
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
