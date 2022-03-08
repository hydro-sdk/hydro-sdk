import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { IInputDatePickerFormField } from "./inputDatePickerFormField";
declare const flutter: {
    material: {
        _inputDatePickerFormFieldState: (
            this: void,
            _inputDatePickerFormFieldState: I_InputDatePickerFormFieldState
        ) => I_InputDatePickerFormFieldState;
    };
};
export interface I_InputDatePickerFormFieldState {
    initState: () => void;
    dispose: () => void;
    didChangeDependencies: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    build: (context: IBuildContext) => IWidget;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => IInputDatePickerFormField;
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
export class _InputDatePickerFormFieldState
    implements
        Omit<IState<IInputDatePickerFormField>, "debugFillProperties">,
        IDiagnosticable
{
    public constructor() {
        flutter.material._inputDatePickerFormFieldState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => IInputDatePickerFormField =
        undefined as any;
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
    public initState(): void {
        return this._dart_initState();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): IInputDatePickerFormField {
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
