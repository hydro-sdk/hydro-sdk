import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAction } from "./action";
import { IActivateIntent } from "./activateIntent";
import { IIntent } from "./intent";
declare const flutter: {
    widgets: {
        activateAction: (
            this: void,
            activateAction: IActivateAction
        ) => IActivateAction;
    };
};
export interface IActivateAction {
    isEnabled: (intent: IActivateIntent) => boolean;
    consumesKey: (intent: IActivateIntent) => boolean;
    invoke: (intent: IActivateIntent) => Object | undefined;
    addActionListener: (listener: (action: IAction<IIntent>) => void) => void;
    removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void;
    getCallingAction: () => IAction<IActivateIntent> | undefined;
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
export class ActivateAction
    implements Omit<IAction<IActivateIntent>>, IDiagnosticable
{
    public constructor() {
        flutter.widgets.activateAction(this);
    }
    private readonly _dart_isEnabled: (intent: IActivateIntent) => boolean =
        undefined as any;
    private readonly _dart_consumesKey: (intent: IActivateIntent) => boolean =
        undefined as any;
    private readonly _dart_invoke: (
        intent: IActivateIntent
    ) => Object | undefined = undefined as any;
    private readonly _dart_addActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () =>
        | IAction<IActivateIntent>
        | undefined = undefined as any;
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
    public isEnabled(intent: IActivateIntent): boolean {
        return this._dart_isEnabled(intent);
    }
    public consumesKey(intent: IActivateIntent): boolean {
        return this._dart_consumesKey(intent);
    }
    public invoke(intent: IActivateIntent): Object | undefined {
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
    public getCallingAction(): IAction<IActivateIntent> | undefined {
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
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
