import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { I_RenderSliverPersistentHeaderForWidgetsMixin } from "./_renderSliverPersistentHeaderForWidgetsMixin";
import { I_SliverPersistentHeaderElement } from "./_sliverPersistentHeaderElement";
import { I_SliverPersistentHeaderRenderObjectWidget } from "./_sliverPersistentHeaderRenderObjectWidget";
import { IBuildContext } from "./buildContext";
import { ISliverPersistentHeaderDelegate } from "./sliverPersistentHeaderDelegate";
declare const flutter: {
    widgets: {
        _sliverScrollingPersistentHeader: (
            this: void,
            _sliverScrollingPersistentHeader: I_SliverScrollingPersistentHeader,
            props: {
                key?: IKey | undefined;
                delegate: ISliverPersistentHeaderDelegate;
            }
        ) => I_SliverScrollingPersistentHeader;
    };
};
export interface I_SliverScrollingPersistentHeader {
    delegate: ISliverPersistentHeaderDelegate;
    floating: boolean;
    key: IKey | undefined;
    createRenderObject: (
        context: IBuildContext
    ) => I_RenderSliverPersistentHeaderForWidgetsMixin;
    createElement: () => I_SliverPersistentHeaderElement;
    debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
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
export class _SliverScrollingPersistentHeader
    implements I_SliverPersistentHeaderRenderObjectWidget, IDiagnosticable
{
    public readonly delegate: ISliverPersistentHeaderDelegate =
        undefined as any;
    public readonly floating: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        delegate: ISliverPersistentHeaderDelegate;
    }) {
        flutter.widgets._sliverScrollingPersistentHeader(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderSliverPersistentHeaderForWidgetsMixin = undefined as any;
    private readonly _dart_createElement: () => I_SliverPersistentHeaderElement =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        description: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
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
    ): I_RenderSliverPersistentHeaderForWidgetsMixin {
        return this._dart_createRenderObject(context);
    }
    public createElement(): I_SliverPersistentHeaderElement {
        return this._dart_createElement();
    }
    public debugFillProperties(
        description: IDiagnosticPropertiesBuilder
    ): void {
        return this._dart_debugFillProperties(description);
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
