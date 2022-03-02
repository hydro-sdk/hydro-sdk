import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IRestorationBucket } from "../services/restorationBucket";
import { IBuildContext } from "./buildContext";
import { IFormField } from "./formField";
import { IRestorableProperty } from "./restorableProperty";
import { IRestorationMixin } from "./restorationMixin";
import { IState } from "./state";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        formFieldState: <T>(
            this: void,
            formFieldState: IFormFieldState<T>
        ) => IFormFieldState<T>;
    };
};
export interface IFormFieldState<T> {
    getValue: () => T | undefined;
    getErrorText: () => string | undefined;
    getHasError: () => boolean;
    getIsValid: () => boolean;
    save: () => void;
    reset: () => void;
    validate: () => boolean;
    didChange: (value?: T | undefined) => void;
    setValue: (value?: T | undefined) => void;
    getRestorationId: () => string | undefined;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    deactivate: () => void;
    build: (context: IBuildContext) => IWidget;
    didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
    registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void;
    unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void;
    didUpdateRestorationId: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    didChangeDependencies: () => void;
    dispose: () => void;
    getBucket: () => IRestorationBucket | undefined;
    getRestorePending: () => boolean;
    initState: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => IFormField<T>;
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
export class FormFieldState<T>
    implements
        Omit<
            IState<IFormField<T>>,
            | "didUpdateWidget"
            | "dispose"
            | "didChangeDependencies"
            | "debugFillProperties"
        >,
        IRestorationMixin<IFormField<T>>,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets.formFieldState(this);
    }
    private readonly _dart_getValue: () => T | undefined = undefined as any;
    private readonly _dart_getErrorText: () => string | undefined =
        undefined as any;
    private readonly _dart_getHasError: () => boolean = undefined as any;
    private readonly _dart_getIsValid: () => boolean = undefined as any;
    private readonly _dart_save: () => void = undefined as any;
    private readonly _dart_reset: () => void = undefined as any;
    private readonly _dart_validate: () => boolean = undefined as any;
    private readonly _dart_didChange: (value?: T | undefined) => void =
        undefined as any;
    private readonly _dart_setValue: (value?: T | undefined) => void =
        undefined as any;
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
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
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined =
        undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => IFormField<T> = undefined as any;
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
    public getValue(): T | undefined {
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
    public save(): void {
        return this._dart_save();
    }
    public reset(): void {
        return this._dart_reset();
    }
    public validate(): boolean {
        return this._dart_validate();
    }
    public didChange(value?: T | undefined): void {
        return this._dart_didChange(value);
    }
    public setValue(value?: T | undefined): void {
        return this._dart_setValue(value);
    }
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public restoreState(
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ): void {
        return this._dart_restoreState(oldBucket, initialRestore);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getBucket(): IRestorationBucket | undefined {
        return this._dart_getBucket();
    }
    public getRestorePending(): boolean {
        return this._dart_getRestorePending();
    }
    public initState(): void {
        return this._dart_initState();
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
    public getWidget(): IFormField<T> {
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
