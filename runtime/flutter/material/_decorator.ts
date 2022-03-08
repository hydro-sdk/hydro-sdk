import { IList } from "../../dart/core/list";
import { TextBaseline } from "../../dart/ui/textBaseline";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextAlignVertical } from "../painting/textAlignVertical";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { IRenderObjectElement } from "../widgets/renderObjectElement";
import { IRenderObjectWidget } from "../widgets/renderObjectWidget";
import { I_Decoration } from "./_decoration";
import { I_DecorationElement } from "./_decorationElement";
import { I_RenderDecoration } from "./_renderDecoration";
declare const flutter: {
    material: {
        _decorator: (
            this: void,
            _decorator: I_Decorator,
            props: {
                key?: IKey | undefined;
                decoration: I_Decoration;
                expands: boolean;
                isFocused: boolean;
                textAlignVertical?: ITextAlignVertical | undefined;
                textBaseline: TextBaseline;
                textDirection: TextDirection;
            }
        ) => I_Decorator;
    };
};
export interface I_Decorator {
    decoration: I_Decoration;
    textDirection: TextDirection;
    textBaseline: TextBaseline;
    textAlignVertical: ITextAlignVertical | undefined;
    isFocused: boolean;
    expands: boolean;
    key: IKey | undefined;
    createElement: () => I_DecorationElement;
    createRenderObject: (context: IBuildContext) => I_RenderDecoration;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
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
export class _Decorator implements IRenderObjectWidget, IDiagnosticable {
    public readonly decoration: I_Decoration = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public readonly textBaseline: TextBaseline = undefined as any;
    public readonly textAlignVertical: ITextAlignVertical | undefined =
        undefined as any;
    public readonly isFocused: boolean = undefined as any;
    public readonly expands: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        decoration: I_Decoration;
        expands: boolean;
        isFocused: boolean;
        textAlignVertical?: ITextAlignVertical | undefined;
        textBaseline: TextBaseline;
        textDirection: TextDirection;
    }) {
        flutter.material._decorator(this, props);
    }
    private readonly _dart_createElement: () => I_DecorationElement =
        undefined as any;
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderDecoration = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
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
    public createElement(): I_DecorationElement {
        return this._dart_createElement();
    }
    public createRenderObject(context: IBuildContext): I_RenderDecoration {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
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
