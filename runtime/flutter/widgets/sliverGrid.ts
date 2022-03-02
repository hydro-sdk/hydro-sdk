import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderSliverGrid } from "../rendering/renderSliverGrid";
import { IRenderSliverMultiBoxAdaptor } from "../rendering/renderSliverMultiBoxAdaptor";
import { ISliverConstraints } from "../rendering/sliverConstraints";
import { ISliverGridDelegate } from "../rendering/sliverGridDelegate";
import { IBuildContext } from "./buildContext";
import { ISliverChildDelegate } from "./sliverChildDelegate";
import { ISliverMultiBoxAdaptorElement } from "./sliverMultiBoxAdaptorElement";
import { ISliverMultiBoxAdaptorWidget } from "./sliverMultiBoxAdaptorWidget";
declare const flutter: {
    widgets: {
        sliverGrid: (
            this: void,
            sliverGrid: ISliverGrid,
            props: {
                key?: IKey | undefined;
                delegate: ISliverChildDelegate;
                gridDelegate: ISliverGridDelegate;
            }
        ) => ISliverGrid;
    };
};
export interface ISliverGrid {
    gridDelegate: ISliverGridDelegate;
    delegate: ISliverChildDelegate;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderSliverGrid;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    estimateMaxScrollOffset: (
        constraints: ISliverConstraints | undefined,
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ) => number;
    createElement: () => ISliverMultiBoxAdaptorElement;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class SliverGrid
    implements ISliverMultiBoxAdaptorWidget, IDiagnosticable
{
    public readonly gridDelegate: ISliverGridDelegate = undefined as any;
    public readonly delegate: ISliverChildDelegate = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        delegate: ISliverChildDelegate;
        gridDelegate: ISliverGridDelegate;
    }) {
        flutter.widgets.sliverGrid(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderSliverGrid = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_estimateMaxScrollOffset: (
        constraints: ISliverConstraints | undefined,
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ) => number = undefined as any;
    private readonly _dart_createElement: () => ISliverMultiBoxAdaptorElement =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
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
    public createRenderObject(context: IBuildContext): IRenderSliverGrid {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public estimateMaxScrollOffset(
        constraints: ISliverConstraints | undefined,
        firstIndex: number,
        lastIndex: number,
        leadingScrollOffset: number,
        trailingScrollOffset: number
    ): number {
        return this._dart_estimateMaxScrollOffset(
            constraints,
            firstIndex,
            lastIndex,
            leadingScrollOffset,
            trailingScrollOffset
        );
    }
    public createElement(): ISliverMultiBoxAdaptorElement {
        return this._dart_createElement();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
