import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import {
    IRenderListWheelViewport,
    RenderListWheelViewport,
} from "../rendering/renderListWheelViewport";
import { IRenderObject } from "../rendering/renderObject";
import { IViewportOffset } from "../rendering/viewportOffset";
import { IBuildContext } from "./buildContext";
import { IListWheelChildDelegate } from "./listWheelChildDelegate";
import { IListWheelElement } from "./listWheelElement";
import { IRenderObjectElement } from "./renderObjectElement";
import { IRenderObjectWidget } from "./renderObjectWidget";
declare const flutter: {
    widgets: {
        listWheelViewport: (
            this: void,
            listWheelViewport: IListWheelViewport,
            props: {
                clipBehavior: Clip;
                diameterRatio: number;
                key?: IKey | undefined;
                magnification: number;
                offAxisFraction: number;
                overAndUnderCenterOpacity: number;
                perspective: number;
                renderChildrenOutsideViewport: boolean;
                squeeze: number;
                useMagnifier: boolean;
                childDelegate: IListWheelChildDelegate;
                itemExtent: number;
                offset: IViewportOffset;
            }
        ) => IListWheelViewport;
    };
};
export interface IListWheelViewport {
    diameterRatio: number;
    perspective: number;
    offAxisFraction: number;
    useMagnifier: boolean;
    magnification: number;
    overAndUnderCenterOpacity: number;
    itemExtent: number;
    squeeze: number;
    renderChildrenOutsideViewport: boolean;
    offset: IViewportOffset;
    childDelegate: IListWheelChildDelegate;
    clipBehavior: Clip;
    key: IKey | undefined;
    createElement: () => IListWheelElement;
    createRenderObject: (context: IBuildContext) => IRenderListWheelViewport;
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
export class ListWheelViewport implements IRenderObjectWidget, IDiagnosticable {
    public readonly diameterRatio: number = undefined as any;
    public readonly perspective: number = undefined as any;
    public readonly offAxisFraction: number = undefined as any;
    public readonly useMagnifier: boolean = undefined as any;
    public readonly magnification: number = undefined as any;
    public readonly overAndUnderCenterOpacity: number = undefined as any;
    public readonly itemExtent: number = undefined as any;
    public readonly squeeze: number = undefined as any;
    public readonly renderChildrenOutsideViewport: boolean = undefined as any;
    public readonly offset: IViewportOffset = undefined as any;
    public readonly childDelegate: IListWheelChildDelegate = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        clipBehavior?: Clip;
        diameterRatio?: number;
        key?: IKey | undefined;
        magnification?: number;
        offAxisFraction?: number;
        overAndUnderCenterOpacity?: number;
        perspective?: number;
        renderChildrenOutsideViewport?: boolean;
        squeeze?: number;
        useMagnifier?: boolean;
        childDelegate: IListWheelChildDelegate;
        itemExtent: number;
        offset: IViewportOffset;
    }) {
        flutter.widgets.listWheelViewport(this, {
            ...listWheelViewportDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createElement: () => IListWheelElement =
        undefined as any;
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderListWheelViewport = undefined as any;
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
    public createElement(): IListWheelElement {
        return this._dart_createElement();
    }
    public createRenderObject(
        context: IBuildContext
    ): IRenderListWheelViewport {
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
const listWheelViewportDefaultProps = {
    clipBehavior: Clip.hardEdge,
    diameterRatio: RenderListWheelViewport.defaultDiameterRatio,
    magnification: 1.0,
    offAxisFraction: 0.0,
    overAndUnderCenterOpacity: 1.0,
    perspective: RenderListWheelViewport.defaultPerspective,
    renderChildrenOutsideViewport: false,
    squeeze: 1.0,
    useMagnifier: false,
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
