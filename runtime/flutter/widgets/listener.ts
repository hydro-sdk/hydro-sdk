import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IPointerCancelEvent } from "../gestures/pointerCancelEvent";
import { IPointerDownEvent } from "../gestures/pointerDownEvent";
import { IPointerHoverEvent } from "../gestures/pointerHoverEvent";
import { IPointerMoveEvent } from "../gestures/pointerMoveEvent";
import { IPointerSignalEvent } from "../gestures/pointerSignalEvent";
import { IPointerUpEvent } from "../gestures/pointerUpEvent";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IRenderObject } from "../rendering/renderObject";
import { IRenderPointerListener } from "../rendering/renderPointerListener";
import { IBuildContext } from "./buildContext";
import { ISingleChildRenderObjectElement } from "./singleChildRenderObjectElement";
import { ISingleChildRenderObjectWidget } from "./singleChildRenderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        listener: (
            this: void,
            listener: IListener,
            props: {
                behavior: HitTestBehavior;
                child?: IWidget | undefined;
                key?: IKey | undefined;
                onPointerCancel?: (
                    event: IPointerCancelEvent
                ) => void | undefined;
                onPointerDown?: (event: IPointerDownEvent) => void | undefined;
                onPointerHover?: (
                    event: IPointerHoverEvent
                ) => void | undefined;
                onPointerMove?: (event: IPointerMoveEvent) => void | undefined;
                onPointerSignal?: (
                    event: IPointerSignalEvent
                ) => void | undefined;
                onPointerUp?: (event: IPointerUpEvent) => void | undefined;
            }
        ) => IListener;
    };
};
export interface IListener {
    behavior: HitTestBehavior;
    child: IWidget | undefined;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderPointerListener;
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
export class Listener
    implements ISingleChildRenderObjectWidget, IDiagnosticable
{
    public readonly behavior: HitTestBehavior = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        behavior?: HitTestBehavior;
        child?: IWidget | undefined;
        key?: IKey | undefined;
        onPointerCancel?: (event: IPointerCancelEvent) => void | undefined;
        onPointerDown?: (event: IPointerDownEvent) => void | undefined;
        onPointerHover?: (event: IPointerHoverEvent) => void | undefined;
        onPointerMove?: (event: IPointerMoveEvent) => void | undefined;
        onPointerSignal?: (event: IPointerSignalEvent) => void | undefined;
        onPointerUp?: (event: IPointerUpEvent) => void | undefined;
    }) {
        flutter.widgets.listener(this, {
            ...listenerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderPointerListener = undefined as any;
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
    public createRenderObject(context: IBuildContext): IRenderPointerListener {
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
const listenerDefaultProps = {
    behavior: HitTestBehavior.deferToChild,
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
