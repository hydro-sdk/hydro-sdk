import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderPerformanceOverlay } from "../rendering/renderPerformanceOverlay";
import { IBuildContext } from "./buildContext";
import { ILeafRenderObjectElement } from "./leafRenderObjectElement";
import { ILeafRenderObjectWidget } from "./leafRenderObjectWidget";
declare const flutter: {
    widgets: {
        performanceOverlay: (
            this: void,
            performanceOverlay: IPerformanceOverlay,
            props: {
                checkerboardOffscreenLayers: boolean;
                checkerboardRasterCacheImages: boolean;
                key?: IKey | undefined;
                optionsMask: number;
                rasterizerThreshold: number;
            }
        ) => IPerformanceOverlay;
    };
};
export interface IPerformanceOverlay {
    optionsMask: number;
    rasterizerThreshold: number;
    checkerboardRasterCacheImages: boolean;
    checkerboardOffscreenLayers: boolean;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderPerformanceOverlay;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => ILeafRenderObjectElement;
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
export class PerformanceOverlay
    implements ILeafRenderObjectWidget, IDiagnosticable
{
    public readonly optionsMask: number = undefined as any;
    public readonly rasterizerThreshold: number = undefined as any;
    public readonly checkerboardRasterCacheImages: boolean = undefined as any;
    public readonly checkerboardOffscreenLayers: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        checkerboardOffscreenLayers?: boolean;
        checkerboardRasterCacheImages?: boolean;
        key?: IKey | undefined;
        optionsMask?: number;
        rasterizerThreshold?: number;
    }) {
        flutter.widgets.performanceOverlay(this, {
            ...performanceOverlayDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderPerformanceOverlay = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => ILeafRenderObjectElement =
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
    ): IRenderPerformanceOverlay {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public createElement(): ILeafRenderObjectElement {
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
const performanceOverlayDefaultProps = {
    checkerboardOffscreenLayers: false,
    checkerboardRasterCacheImages: false,
    optionsMask: 0,
    rasterizerThreshold: 0,
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
