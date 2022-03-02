import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { IRenderObjectElement } from "../widgets/renderObjectElement";
import { IRenderObjectWidget } from "../widgets/renderObjectWidget";
import { IWidget } from "../widgets/widget";
import { I_CupertinoTextSelectionToolbarItemsElement } from "./_cupertinoTextSelectionToolbarItemsElement";
import { I_RenderCupertinoTextSelectionToolbarItems } from "./_renderCupertinoTextSelectionToolbarItems";
declare const flutter: {
    cupertino: {
        _cupertinoTextSelectionToolbarItems: (
            this: void,
            _cupertinoTextSelectionToolbarItems: I_CupertinoTextSelectionToolbarItems,
            props: {
                key?: IKey | undefined;
                backButton: IWidget;
                children: IList<IWidget>;
                dividerWidth: number;
                nextButton: IWidget;
                nextButtonDisabled: IWidget;
                page: number;
            }
        ) => I_CupertinoTextSelectionToolbarItems;
    };
};
export interface I_CupertinoTextSelectionToolbarItems {
    backButton: IWidget;
    children: IList<IWidget>;
    dividerWidth: number;
    nextButton: IWidget;
    nextButtonDisabled: IWidget;
    page: number;
    key: IKey | undefined;
    createRenderObject: (
        context: IBuildContext
    ) => I_RenderCupertinoTextSelectionToolbarItems;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => I_CupertinoTextSelectionToolbarItemsElement;
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
export class _CupertinoTextSelectionToolbarItems
    implements IRenderObjectWidget, IDiagnosticable
{
    public readonly backButton: IWidget = undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly dividerWidth: number = undefined as any;
    public readonly nextButton: IWidget = undefined as any;
    public readonly nextButtonDisabled: IWidget = undefined as any;
    public readonly page: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        backButton: IWidget;
        children: IList<IWidget>;
        dividerWidth: number;
        nextButton: IWidget;
        nextButtonDisabled: IWidget;
        page: number;
    }) {
        flutter.cupertino._cupertinoTextSelectionToolbarItems(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderCupertinoTextSelectionToolbarItems = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => I_CupertinoTextSelectionToolbarItemsElement =
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
    ): I_RenderCupertinoTextSelectionToolbarItems {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public createElement(): I_CupertinoTextSelectionToolbarItemsElement {
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
