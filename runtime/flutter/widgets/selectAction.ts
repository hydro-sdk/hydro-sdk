import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAction } from "./action";
import { IIntent } from "./intent";
import { ISelectIntent } from "./selectIntent";
declare const flutter: {
    widgets: {
        selectAction: (
            this: void,
            selectAction: ISelectAction
        ) => ISelectAction;
    };
};
export interface ISelectAction {
    isEnabled: (intent: ISelectIntent) => boolean;
    consumesKey: (intent: ISelectIntent) => boolean;
    invoke: (intent: ISelectIntent) => Object | undefined;
    addActionListener: (listener: (action: IAction<IIntent>) => void) => void;
    removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void;
    getCallingAction: () => IAction<ISelectIntent> | undefined;
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
export class SelectAction
    implements Omit<IAction<ISelectIntent>>, IDiagnosticable
{
    public constructor() {
        flutter.widgets.selectAction(this);
    }
    private readonly _dart_isEnabled: (intent: ISelectIntent) => boolean =
        undefined as any;
    private readonly _dart_consumesKey: (intent: ISelectIntent) => boolean =
        undefined as any;
    private readonly _dart_invoke: (
        intent: ISelectIntent
    ) => Object | undefined = undefined as any;
    private readonly _dart_addActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_removeActionListener: (
        listener: (action: IAction<IIntent>) => void
    ) => void = undefined as any;
    private readonly _dart_notifyActionListeners: () => void = undefined as any;
    private readonly _dart_getCallingAction: () =>
        | IAction<ISelectIntent>
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
    public isEnabled(intent: ISelectIntent): boolean {
        return this._dart_isEnabled(intent);
    }
    public consumesKey(intent: ISelectIntent): boolean {
        return this._dart_consumesKey(intent);
    }
    public invoke(intent: ISelectIntent): Object | undefined {
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
    public getCallingAction(): IAction<ISelectIntent> | undefined {
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
