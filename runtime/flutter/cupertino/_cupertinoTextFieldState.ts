import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAutofillClient } from "../services/autofillClient";
import { IRestorationBucket } from "../services/restorationBucket";
import { ITextEditingValue } from "../services/textEditingValue";
import { ITextInputConfiguration } from "../services/textInputConfiguration";
import { IAutomaticKeepAliveClientMixin } from "../widgets/automaticKeepAliveClientMixin";
import { IBuildContext } from "../widgets/buildContext";
import { IEditableTextState } from "../widgets/editableTextState";
import { IGlobalKey } from "../widgets/globalKey";
import { IRestorableProperty } from "../widgets/restorableProperty";
import { IRestorationMixin } from "../widgets/restorationMixin";
import { IState } from "../widgets/state";
import { ITextSelectionGestureDetectorBuilderDelegate } from "../widgets/textSelectionGestureDetectorBuilderDelegate";
import { IWidget } from "../widgets/widget";
import { ICupertinoTextField } from "./cupertinoTextField";
declare const flutter: {
    cupertino: {
        _cupertinoTextFieldState: (
            this: void,
            _cupertinoTextFieldState: I_CupertinoTextFieldState
        ) => I_CupertinoTextFieldState;
    };
};
export interface I_CupertinoTextFieldState {
    editableTextKey: IGlobalKey<IEditableTextState>;
    getForcePressEnabled: () => boolean;
    getSelectionEnabled: () => boolean;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    getRestorationId: () => string | undefined;
    dispose: () => void;
    getWantKeepAlive: () => boolean;
    getAutofillId: () => string;
    autofill: (newEditingValue: ITextEditingValue) => void;
    getTextInputConfiguration: () => ITextInputConfiguration;
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
    didChangeDependencies: () => void;
    getBucket: () => IRestorationBucket | undefined;
    getRestorePending: () => boolean;
    updateKeepAlive: () => void;
    deactivate: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => ICupertinoTextField;
    getContext: () => IBuildContext;
    getMounted: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
    getEditableTextKey: () => IGlobalKey<IEditableTextState>;
}
export class _CupertinoTextFieldState
    implements
        Omit<
            IState<ICupertinoTextField>,
            | "didUpdateWidget"
            | "dispose"
            | "didChangeDependencies"
            | "initState"
            | "deactivate"
            | "build"
            | "debugFillProperties"
        >,
        IRestorationMixin<ICupertinoTextField>,
        IAutomaticKeepAliveClientMixin<ICupertinoTextField>,
        IDiagnosticable,
        ITextSelectionGestureDetectorBuilderDelegate,
        IAutofillClient
{
    public readonly editableTextKey: IGlobalKey<IEditableTextState> =
        undefined as any;
    public constructor() {
        flutter.cupertino._cupertinoTextFieldState(this);
    }
    private readonly _dart_getForcePressEnabled: () => boolean =
        undefined as any;
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void = undefined as any;
    private readonly _dart_getRestorationId: () => string | undefined =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getWantKeepAlive: () => boolean = undefined as any;
    private readonly _dart_getAutofillId: () => string = undefined as any;
    private readonly _dart_autofill: (
        newEditingValue: ITextEditingValue
    ) => void = undefined as any;
    private readonly _dart_getTextInputConfiguration: () => ITextInputConfiguration =
        undefined as any;
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
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_getBucket: () => IRestorationBucket | undefined =
        undefined as any;
    private readonly _dart_getRestorePending: () => boolean = undefined as any;
    private readonly _dart_updateKeepAlive: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => ICupertinoTextField =
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
    private readonly _dart_getEditableTextKey: () => IGlobalKey<IEditableTextState> =
        undefined as any;
    public getForcePressEnabled(): boolean {
        return this._dart_getForcePressEnabled();
    }
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public restoreState(
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ): void {
        return this._dart_restoreState(oldBucket, initialRestore);
    }
    public getRestorationId(): string | undefined {
        return this._dart_getRestorationId();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getWantKeepAlive(): boolean {
        return this._dart_getWantKeepAlive();
    }
    public getAutofillId(): string {
        return this._dart_getAutofillId();
    }
    public autofill(newEditingValue: ITextEditingValue): void {
        return this._dart_autofill(newEditingValue);
    }
    public getTextInputConfiguration(): ITextInputConfiguration {
        return this._dart_getTextInputConfiguration();
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
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public getBucket(): IRestorationBucket | undefined {
        return this._dart_getBucket();
    }
    public getRestorePending(): boolean {
        return this._dart_getRestorePending();
    }
    public updateKeepAlive(): void {
        return this._dart_updateKeepAlive();
    }
    public deactivate(): void {
        return this._dart_deactivate();
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
    public getWidget(): ICupertinoTextField {
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
    public getEditableTextKey(): IGlobalKey<IEditableTextState> {
        return this._dart_getEditableTextKey();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
