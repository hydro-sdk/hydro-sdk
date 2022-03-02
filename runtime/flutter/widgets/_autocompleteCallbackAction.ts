import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAction } from "./action";
import { ICallbackAction } from "./callbackAction";
import { IIntent } from "./intent";
declare const flutter: {
    widgets: {
        _autocompleteCallbackAction: <T>(
            this: void,
            _autocompleteCallbackAction: I_AutocompleteCallbackAction<T>,
            props: {
                enabled: boolean;
                onInvoke: (intent: T) => Object | undefined;
            }
        ) => I_AutocompleteCallbackAction<T>;
    };
};
export interface I_AutocompleteCallbackAction<T> {
    enabled: boolean;
    onInvoke: (intent: T) => Object | undefined;
    isEnabled: (intent: unknown) => boolean;
    consumesKey: (intent: unknown) => boolean;
    invoke: (intent: T) => Object | undefined;
    addActionListener: (listener: (action: IAction<IIntent>) => void) => void;
    removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void;
    getCallingAction: () => IAction<T> | undefined;
    getIntentType: () => Type;
    getIsActionEnabled: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class _AutocompleteCallbackAction<T>
    implements ICallbackAction<T>, IDiagnosticable
{
    public readonly enabled: boolean = undefined as any;
    public readonly onInvoke: (intent: T) => Object | undefined =
        undefined as any;
    public constructor(props: {
        enabled?: boolean;
        onInvoke: (intent: T) => Object | undefined;
    }) {
        flutter.widgets._autocompleteCallbackAction(this, {
            ..._autocompleteCallbackActionDefaultProps,
            ...props,
        });
    }
    private readonly _dart_isEnabled: (intent: any) => boolean =
        undefined as any;
    private readonly _dart_consumesKey: (intent: any) => boolean =
        undefined as any;
    private readonly _dart_invoke: (intent: T) => Object | undefined =
        undefined as any;
    private readonly _dart_addActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () => IAction<T> | undefined =
        undefined as any;
    private readonly _dart_getIntentType: () => Type = undefined as any;
    private readonly _dart_getIsActionEnabled: () => boolean = undefined as any;
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
    public isEnabled(intent: any): boolean {
        return this._dart_isEnabled(intent);
    }
    public consumesKey(intent: any): boolean {
        return this._dart_consumesKey(intent);
    }
    public invoke(intent: T): Object | undefined {
        return this._dart_invoke(intent);
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
    public getCallingAction(): IAction<T> | undefined {
        return this._dart_getCallingAction();
    }
    public getIntentType(): Type {
        return this._dart_getIntentType();
    }
    public getIsActionEnabled(): boolean {
        return this._dart_getIsActionEnabled();
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
const _autocompleteCallbackActionDefaultProps = {
    enabled: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
