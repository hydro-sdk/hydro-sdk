import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { IMultiChildRenderObjectElement } from "../widgets/multiChildRenderObjectElement";
import { IMultiChildRenderObjectWidget } from "../widgets/multiChildRenderObjectWidget";
import { IWidget } from "../widgets/widget";
import { I_RenderTextSelectionToolbarItemsLayout } from "./_renderTextSelectionToolbarItemsLayout";
import { I_TextSelectionToolbarItemsLayoutElement } from "./_textSelectionToolbarItemsLayoutElement";
declare const flutter: {
    material: {
        _textSelectionToolbarItemsLayout: (
            this: void,
            _textSelectionToolbarItemsLayout: I_TextSelectionToolbarItemsLayout,
            props: {
                key?: IKey | undefined;
                children: IList<IWidget>;
                isAbove: boolean;
                overflowOpen: boolean;
            }
        ) => I_TextSelectionToolbarItemsLayout;
    };
};
export interface I_TextSelectionToolbarItemsLayout {
    isAbove: boolean;
    overflowOpen: boolean;
    children: IList<IWidget>;
    key: IKey | undefined;
    createRenderObject: (
        context: IBuildContext
    ) => I_RenderTextSelectionToolbarItemsLayout;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => I_TextSelectionToolbarItemsLayoutElement;
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
export class _TextSelectionToolbarItemsLayout
    implements IMultiChildRenderObjectWidget, IDiagnosticable
{
    public readonly isAbove: boolean = undefined as any;
    public readonly overflowOpen: boolean = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        children: IList<IWidget>;
        isAbove: boolean;
        overflowOpen: boolean;
    }) {
        flutter.material._textSelectionToolbarItemsLayout(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderTextSelectionToolbarItemsLayout = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => I_TextSelectionToolbarItemsLayoutElement =
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
    ): I_RenderTextSelectionToolbarItemsLayout {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public createElement(): I_TextSelectionToolbarItemsLayoutElement {
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
