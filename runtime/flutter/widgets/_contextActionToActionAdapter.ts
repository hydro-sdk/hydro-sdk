import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAction } from "./action";
import { IBuildContext } from "./buildContext";
import { IContextAction } from "./contextAction";
import { IIntent } from "./intent";
declare const flutter: {
    widgets: {
        _contextActionToActionAdapter: <T>(
            this: void,
            _contextActionToActionAdapter: I_ContextActionToActionAdapter<T>,
            props: { action: IContextAction<T>; invokeContext: IBuildContext }
        ) => I_ContextActionToActionAdapter<T>;
    };
};
export interface I_ContextActionToActionAdapter<T> {
    invokeContext: IBuildContext;
    action: IContextAction<T>;
    getCallingAction: () => IAction<T> | undefined;
    isEnabled: (intent: T) => boolean;
    getIsActionEnabled: () => boolean;
    consumesKey: (intent: T) => boolean;
    addActionListener: (listener: (action: IAction<IIntent>) => void) => void;
    removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void;
    notifyActionListeners: () => void;
    invoke: (intent: T) => Object | undefined;
    getIntentType: () => Type;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class _ContextActionToActionAdapter<T>
    implements Omit<IAction<T>>, IDiagnosticable
{
    public readonly invokeContext: IBuildContext = undefined as any;
    public readonly action: IContextAction<T> = undefined as any;
    public constructor(props: {
        action: IContextAction<T>;
        invokeContext: IBuildContext;
    }) {
        flutter.widgets._contextActionToActionAdapter(this, props);
    }
    private readonly _dart_getCallingAction: () => IAction<T> | undefined =
        undefined as any;
    private readonly _dart_isEnabled: (intent: T) => boolean = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
    private readonly _dart_consumesKey: (intent: T) => boolean =
        undefined as any;
    private readonly _dart_addActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_invoke: (intent: T) => Object | undefined =
        undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getCallingAction(): IAction<T> | undefined {
        return this._dart_getCallingAction();
    }
    public isEnabled(intent: T): boolean {
        return this._dart_isEnabled(intent);
    }
    public getIsActionEnabled(): boolean {
        return this._dart_getIsActionEnabled();
    }
    public consumesKey(intent: T): boolean {
        return this._dart_consumesKey(intent);
    }
    public addActionListener(
        listener: (action: IAction<IIntent>) => void
    ): void {
        return this._dart_addActionListener(listener);
    }
    public removeActionListener(
        listener: (action: IAction<IIntent>) => void
    ): void {
        return this._dart_removeActionListener(listener);
    }
    public notifyActionListeners(): void {
        return this._dart_notifyActionListeners();
    }
    public invoke(intent: T): Object | undefined {
        return this._dart_invoke(intent);
    }
    public getIntentType(): Type {
        return this._dart_getIntentType();
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
