import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { I_DragAvatar } from "./_dragAvatar";
import { IBuildContext } from "./buildContext";
import { IDragTarget } from "./dragTarget";
import { IState } from "./state";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _dragTargetState: <T>(
            this: void,
            _dragTargetState: I_DragTargetState<T>
        ) => I_DragTargetState<T>;
    };
};
export interface I_DragTargetState<T> {
    isExpectedDataType: (data: Object | undefined, type: Type) => boolean;
    didEnter: (avatar: I_DragAvatar<Object>) => boolean;
    didLeave: (avatar: I_DragAvatar<Object>) => void;
    didDrop: (avatar: I_DragAvatar<Object>) => void;
    didMove: (avatar: I_DragAvatar<Object>) => void;
    build: (context: IBuildContext) => IWidget;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    dispose: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => IDragTarget<T>;
    getContext: () => IBuildContext;
    getMounted: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class _DragTargetState<T>
    implements
        Omit<IState<IDragTarget<T>>, "debugFillProperties">,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets._dragTargetState(this);
    }
    private readonly _dart_isExpectedDataType: (
        data: Object | undefined,
        type: Type
    ) => boolean = undefined as any;
    private readonly _dart_didEnter: (avatar: I_DragAvatar<Object>) => boolean =
        undefined as any;
    private readonly _dart_didLeave: (avatar: I_DragAvatar<Object>) => void =
        undefined as any;
    private readonly _dart_didDrop: (avatar: I_DragAvatar<Object>) => void =
        undefined as any;
    private readonly _dart_didMove: (avatar: I_DragAvatar<Object>) => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => IDragTarget<T> = undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public isExpectedDataType(data: Object | undefined, type: Type): boolean {
        return this._dart_isExpectedDataType(data, type);
    }
    public didEnter(avatar: I_DragAvatar<Object>): boolean {
        return this._dart_didEnter(avatar);
    }
    public didLeave(avatar: I_DragAvatar<Object>): void {
        return this._dart_didLeave(avatar);
    }
    public didDrop(avatar: I_DragAvatar<Object>): void {
        return this._dart_didDrop(avatar);
    }
    public didMove(avatar: I_DragAvatar<Object>): void {
        return this._dart_didMove(avatar);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): IDragTarget<T> {
        return this._dart_getWidget();
    }
    public getContext(): IBuildContext {
        return this._dart_getContext();
    }
    public getMounted(): boolean {
        return this._dart_getMounted();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
