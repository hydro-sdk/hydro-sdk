import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IRestorationBucket } from "../services/restorationBucket";
import { IBuildContext } from "../widgets/buildContext";
import { IFormFieldState } from "../widgets/formFieldState";
import { IRestorableProperty } from "../widgets/restorableProperty";
import { IRestorationMixin } from "../widgets/restorationMixin";
import { IWidget } from "../widgets/widget";
import { ITextFormField } from "./textFormField";
declare const flutter: {
    material: {
        _textFormFieldState: (
            this: void,
            _textFormFieldState: I_TextFormFieldState
        ) => I_TextFormFieldState;
    };
};
export interface I_TextFormFieldState {
    getWidget: () => ITextFormField;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    didChange: (value?: string | undefined) => void;
    reset: () => void;
    save: () => void;
    validate: () => boolean;
    setValue: (value?: string | undefined) => void;
    deactivate: () => void;
    build: (context: IBuildContext) => IWidget;
    getValue: () => string | undefined;
    getErrorText: () => string | undefined;
    getHasError: () => boolean;
    getIsValid: () => boolean;
    getRestorationId: () => string | undefined;
    didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
    registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void;
    unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void;
    didUpdateRestorationId: () => void;
    didChangeDependencies: () => void;
    getBucket: () => IRestorationBucket | undefined;
    getRestorePending: () => boolean;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class _TextFormFieldState
    implements
        Omit<
            IFormFieldState<string>,
            | "restoreState"
            | "restorationId"
            | "didUpdateWidget"
            | "didChangeDependencies"
            | "dispose"
            | "debugFillProperties"
        >,
        IRestorationMixin<IFormField<string>>,
        IDiagnosticable
{
    public constructor() {
        flutter.material._textFormFieldState(this);
    }
    private readonly _dart_getWidget: () => ITextFormField = undefined as any;
    private readonly _dart_restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didChange: (value?: string | undefined) => void =
        undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_save: () => void = undefined as any;
    private readonly _dart_validate: () => boolean = undefined as any;
    private readonly _dart_setValue: (value?: string | undefined) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_getValue: () => string | undefined =
        undefined as any;
    private readonly _dart_getErrorText: () => string | undefined =
        undefined as any;
    private readonly _dart_getHasError: () => boolean = undefined as any;
    private readonly _dart_getIsValid: () => boolean = undefined as any;
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_didToggleBucket: (
        oldBucket?: IRestorationBucket | undefined
    ) => void = undefined as any;
    private readonly _dart_registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void = undefined as any;
    private readonly _dart_unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void = undefined as any;
    private readonly _dart_didUpdateRestorationId: () => void =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined =
        undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
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
    public getWidget(): ITextFormField {
        return this._dart_getWidget();
    }
    public restoreState(
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ): void {
        return this._dart_restoreState(oldBucket, initialRestore);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didChange(value?: string | undefined): void {
        return this._dart_didChange(value);
    }
    public reset(): void {
        return this._dart_reset();
    }
    public save(): void {
        return this._dart_save();
    }
    public validate(): boolean {
        return this._dart_validate();
    }
    public setValue(value?: string | undefined): void {
        return this._dart_setValue(value);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public getValue(): string | undefined {
        return this._dart_getValue();
    }
    public getErrorText(): string | undefined {
        return this._dart_getErrorText();
    }
    public getHasError(): boolean {
        return this._dart_getHasError();
    }
    public getIsValid(): boolean {
        return this._dart_getIsValid();
    }
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public didToggleBucket(oldBucket?: IRestorationBucket | undefined): void {
        return this._dart_didToggleBucket(oldBucket);
    }
    public registerForRestoration(
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ): void {
        return this._dart_registerForRestoration(property, restorationId);
    }
    public unregisterFromRestoration(
        property: IRestorableProperty<Object | undefined>
    ): void {
        return this._dart_unregisterFromRestoration(property);
    }
    public didUpdateRestorationId(): void {
        return this._dart_didUpdateRestorationId();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public getBucket(): IRestorationBucket | undefined {
        return this._dart_getBucket();
    }
    public getRestorePending(): boolean {
        return this._dart_getRestorePending();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public activate(): void {
        return this._dart_activate();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
