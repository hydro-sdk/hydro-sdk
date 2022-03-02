import { IFuture } from "../../dart/async/future";
import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { AppLifecycleState } from "../../dart/ui/appLifecycleState";
import { ILocale } from "../../dart/ui/locale";
import { ITextPosition } from "../../dart/ui/textPosition";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextSpan } from "../painting/textSpan";
import { IRenderEditable } from "../rendering/renderEditable";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IAutofillClient } from "../services/autofillClient";
import { IAutofillScope } from "../services/autofillScope";
import { IRawFloatingCursorPoint } from "../services/rawFloatingCursorPoint";
import { SelectionChangedCause } from "../services/selectionChangedCause";
import { ITextEditingValue } from "../services/textEditingValue";
import { TextInputAction } from "../services/textInputAction";
import { ITextInputClient } from "../services/textInputClient";
import { ITextInputConfiguration } from "../services/textInputConfiguration";
import { ITextLayoutMetrics } from "../services/textLayoutMetrics";
import { ITextSelection } from "../services/textSelection";
import { ITextSelectionDelegate } from "../services/textSelectionDelegate";
import { IAutomaticKeepAliveClientMixin } from "./automaticKeepAliveClientMixin";
import { IBuildContext } from "./buildContext";
import { IEditableText } from "./editableText";
import { IRouteInformation } from "./routeInformation";
import { IState } from "./state";
import { ITextEditingActionTarget } from "./textEditingActionTarget";
import { ITextSelectionOverlay } from "./textSelectionOverlay";
import { ITickerProviderStateMixin } from "./tickerProviderStateMixin";
import { IWidget } from "./widget";
import { IWidgetsBindingObserver } from "./widgetsBindingObserver";
declare const flutter: {
    widgets: {
        editableTextState: (
            this: void,
            editableTextState: IEditableTextState
        ) => IEditableTextState;
    };
};
export interface IEditableTextState {
    getCurrentAutofillScope: () => IAutofillScope | undefined;
    getWantKeepAlive: () => boolean;
    getCutEnabled: () => boolean;
    getCopyEnabled: () => boolean;
    getPasteEnabled: () => boolean;
    getSelectAllEnabled: () => boolean;
    getTextLayoutMetrics: () => ITextLayoutMetrics;
    getReadOnly: () => boolean;
    getObscureText: () => boolean;
    getSelectionEnabled: () => boolean;
    debugAssertLayoutUpToDate: () => void;
    setSelection: (
        nextSelection: ITextSelection,
        cause: SelectionChangedCause
    ) => void;
    setTextEditingValue: (value: ITextEditingValue) => void;
    copySelection: (cause: SelectionChangedCause) => void;
    cutSelection: (cause: SelectionChangedCause) => void;
    pasteText: (cause: SelectionChangedCause) => IFuture<void>;
    selectAll: (cause: SelectionChangedCause) => void;
    initState: () => void;
    didChangeDependencies: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    getCurrentTextEditingValue: () => ITextEditingValue;
    updateEditingValue: (value: ITextEditingValue) => void;
    performAction: (action: TextInputAction) => void;
    performPrivateCommand: (
        action: string,
        data: { [index: string]: any }
    ) => void;
    updateFloatingCursor: (point: IRawFloatingCursorPoint) => void;
    beginBatchEdit: () => void;
    endBatchEdit: () => void;
    connectionClosed: () => void;
    requestKeyboard: () => void;
    didChangeMetrics: () => void;
    getRenderEditable: () => IRenderEditable;
    getTextEditingValue: () => ITextEditingValue;
    userUpdateTextEditingValue: (
        value: ITextEditingValue,
        cause?: SelectionChangedCause | undefined
    ) => void;
    bringIntoView: (position: ITextPosition) => void;
    showToolbar: () => boolean;
    hideToolbar: (hideHandles: boolean) => void;
    toggleToolbar: () => void;
    getAutofillId: () => string;
    getTextInputConfiguration: () => ITextInputConfiguration;
    autofill: (value: ITextEditingValue) => void;
    showAutocorrectionPromptRect: (start: number, end: number) => void;
    build: (context: IBuildContext) => IWidget;
    buildTextSpan: () => ITextSpan;
    updateKeepAlive: () => void;
    deactivate: () => void;
    didPopRoute: () => IFuture<boolean>;
    didPushRoute: (route: string) => IFuture<boolean>;
    didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean>;
    didChangeTextScaleFactor: () => void;
    didChangePlatformBrightness: () => void;
    didChangeLocales: (locales?: IList<ILocale> | undefined) => void;
    didChangeAppLifecycleState: (state: AppLifecycleState) => void;
    didHaveMemoryPressure: () => void;
    didChangeAccessibilityFeatures: () => void;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    delete: (cause: SelectionChangedCause) => void;
    deleteByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void;
    deleteByLine: (cause: SelectionChangedCause) => void;
    deleteForward: (cause: SelectionChangedCause) => void;
    deleteForwardByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void;
    deleteForwardByLine: (cause: SelectionChangedCause) => void;
    deleteToEnd: (cause: SelectionChangedCause) => void;
    deleteToStart: (cause: SelectionChangedCause) => void;
    expandSelectionToEnd: (cause: SelectionChangedCause) => void;
    expandSelectionToStart: (cause: SelectionChangedCause) => void;
    expandSelectionLeftByLine: (cause: SelectionChangedCause) => void;
    expandSelectionRightByLine: (cause: SelectionChangedCause) => void;
    extendSelectionDown: (cause: SelectionChangedCause) => void;
    extendSelectionLeft: (cause: SelectionChangedCause) => void;
    extendSelectionLeftByLine: (cause: SelectionChangedCause) => void;
    extendSelectionRight: (cause: SelectionChangedCause) => void;
    extendSelectionRightByLine: (cause: SelectionChangedCause) => void;
    extendSelectionLeftByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean,
        stopAtReversal: boolean
    ) => void;
    extendSelectionRightByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean,
        stopAtReversal: boolean
    ) => void;
    extendSelectionUp: (cause: SelectionChangedCause) => void;
    moveSelectionLeftByLine: (cause: SelectionChangedCause) => void;
    moveSelectionDown: (cause: SelectionChangedCause) => void;
    moveSelectionLeft: (cause: SelectionChangedCause) => void;
    moveSelectionLeftByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void;
    moveSelectionRight: (cause: SelectionChangedCause) => void;
    moveSelectionRightByLine: (cause: SelectionChangedCause) => void;
    moveSelectionRightByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void;
    moveSelectionToEnd: (cause: SelectionChangedCause) => void;
    moveSelectionToStart: (cause: SelectionChangedCause) => void;
    moveSelectionUp: (cause: SelectionChangedCause) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    getWidget: () => IEditableText;
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
export class EditableTextState
    implements
        Omit<
            IState<IEditableText>,
            | "initState"
            | "deactivate"
            | "build"
            | "toString"
            | "dispose"
            | "didChangeDependencies"
            | "debugFillProperties"
        >,
        IAutomaticKeepAliveClientMixin<IEditableText>,
        IWidgetsBindingObserver,
        ITickerProviderStateMixin<IEditableText>,
        ITextSelectionDelegate,
        ITextEditingActionTarget,
        IDiagnosticable,
        ITextInputClient,
        IAutofillClient,
        ITickerProvider
{
    public static _fadeDuration = new Duration({ milliseconds: 250 });
    public static _floatingCursorResetTime = new Duration({
        milliseconds: 125,
    });
    public static _caretAnimationDuration = new Duration({ milliseconds: 100 });
    public static _caretAnimationCurve = Curves.fastOutSlowIn;
    public constructor() {
        flutter.widgets.editableTextState(this);
    }
    private readonly _dart_getCurrentAutofillScope: () =>
        | IAutofillScope
        | undefined = undefined as any;
    private readonly _dart_getWantKeepAlive: () => boolean = undefined as any;
    private readonly _dart_getCutEnabled: () => boolean = undefined as any;
    private readonly _dart_getCopyEnabled: () => boolean = undefined as any;
    private readonly _dart_getPasteEnabled: () => boolean = undefined as any;
    private readonly _dart_getSelectAllEnabled: () => boolean =
        undefined as any;
    private readonly _dart_getTextLayoutMetrics: () => ITextLayoutMetrics =
        undefined as any;
    private readonly _dart_getReadOnly: () => boolean = undefined as any;
    private readonly _dart_getObscureText: () => boolean = undefined as any;
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_debugAssertLayoutUpToDate: () => void =
        undefined as any;
    private readonly _dart_setSelection: (
        nextSelection: ITextSelection,
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_setTextEditingValue: (
        newValue: ITextEditingValue,
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_copySelection: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_cutSelection: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_pasteText: (
        cause: SelectionChangedCause
    ) => IFuture<void> = undefined as any;
    private readonly _dart_selectAll: (cause: SelectionChangedCause) => void =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getCurrentTextEditingValue: () => ITextEditingValue =
        undefined as any;
    private readonly _dart_updateEditingValue: (
        value: ITextEditingValue
    ) => void = undefined as any;
    private readonly _dart_performAction: (action: TextInputAction) => void =
        undefined as any;
    private readonly _dart_performPrivateCommand: (
        action: string,
        data: { [index: string]: any }
    ) => void = undefined as any;
    private readonly _dart_updateFloatingCursor: (
        point: IRawFloatingCursorPoint
    ) => void = undefined as any;
    private readonly _dart_beginBatchEdit: () => void = undefined as any;
    private readonly _dart_endBatchEdit: () => void = undefined as any;
    private readonly _dart_connectionClosed: () => void = undefined as any;
    private readonly _dart_requestKeyboard: () => void = undefined as any;
    private readonly _dart_didChangeMetrics: () => void = undefined as any;
    private readonly _dart_getRenderEditable: () => IRenderEditable =
        undefined as any;
    private readonly _dart_getTextEditingValue: () => ITextEditingValue =
        undefined as any;
    private readonly _dart_userUpdateTextEditingValue: (
        value: ITextEditingValue,
        cause?: SelectionChangedCause | undefined
    ) => void = undefined as any;
    private readonly _dart_bringIntoView: (position: ITextPosition) => void =
        undefined as any;
    private readonly _dart_showToolbar: () => boolean = undefined as any;
    private readonly _dart_hideToolbar: (hideHandles: boolean) => void =
        undefined as any;
    private readonly _dart_toggleToolbar: () => void = undefined as any;
    private readonly _dart_getAutofillId: () => string = undefined as any;
    private readonly _dart_getTextInputConfiguration: () => ITextInputConfiguration =
        undefined as any;
    private readonly _dart_autofill: (value: ITextEditingValue) => void =
        undefined as any;
    private readonly _dart_showAutocorrectionPromptRect: (
        start: number,
        end: number
    ) => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_buildTextSpan: () => ITextSpan = undefined as any;
    private readonly _dart_updateKeepAlive: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_didPopRoute: () => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRoute: (route: string) => IFuture<boolean> =
        undefined as any;
    private readonly _dart_didPushRouteInformation: (
        routeInformation: IRouteInformation
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_didChangeTextScaleFactor: () => void =
        undefined as any;
    private readonly _dart_didChangePlatformBrightness: () => void =
        undefined as any;
    private readonly _dart_didChangeLocales: (
        locales?: IList<ILocale> | undefined
    ) => void = undefined as any;
    private readonly _dart_didChangeAppLifecycleState: (
        state: AppLifecycleState
    ) => void = undefined as any;
    private readonly _dart_didHaveMemoryPressure: () => void = undefined as any;
    private readonly _dart_didChangeAccessibilityFeatures: () => void =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_setTextEditingValue: (
        value: ITextEditingValue
    ) => void = undefined as any;
    private readonly _dart_delete: (cause: SelectionChangedCause) => void =
        undefined as any;
    private readonly _dart_deleteByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void = undefined as any;
    private readonly _dart_deleteByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_deleteForward: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_deleteForwardByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void = undefined as any;
    private readonly _dart_deleteForwardByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_deleteToEnd: (cause: SelectionChangedCause) => void =
        undefined as any;
    private readonly _dart_deleteToStart: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_expandSelectionToEnd: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_expandSelectionToStart: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_expandSelectionLeftByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_expandSelectionRightByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionDown: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionLeft: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionLeftByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionRight: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionRightByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_extendSelectionLeftByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean,
        stopAtReversal: boolean
    ) => void = undefined as any;
    private readonly _dart_extendSelectionRightByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean,
        stopAtReversal: boolean
    ) => void = undefined as any;
    private readonly _dart_extendSelectionUp: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionLeftByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionDown: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionLeft: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionLeftByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void = undefined as any;
    private readonly _dart_moveSelectionRight: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionRightByLine: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionRightByWord: (
        cause: SelectionChangedCause,
        includeWhitespace: boolean
    ) => void = undefined as any;
    private readonly _dart_moveSelectionToEnd: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionToStart: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_moveSelectionUp: (
        cause: SelectionChangedCause
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IEditableText = undefined as any;
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
    public getCurrentAutofillScope(): IAutofillScope | undefined {
        return this._dart_getCurrentAutofillScope();
    }
    public getWantKeepAlive(): boolean {
        return this._dart_getWantKeepAlive();
    }
    public getCutEnabled(): boolean {
        return this._dart_getCutEnabled();
    }
    public getCopyEnabled(): boolean {
        return this._dart_getCopyEnabled();
    }
    public getPasteEnabled(): boolean {
        return this._dart_getPasteEnabled();
    }
    public getSelectAllEnabled(): boolean {
        return this._dart_getSelectAllEnabled();
    }
    public getTextLayoutMetrics(): ITextLayoutMetrics {
        return this._dart_getTextLayoutMetrics();
    }
    public getReadOnly(): boolean {
        return this._dart_getReadOnly();
    }
    public getObscureText(): boolean {
        return this._dart_getObscureText();
    }
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
    }
    public debugAssertLayoutUpToDate(): void {
        return this._dart_debugAssertLayoutUpToDate();
    }
    public setSelection(
        nextSelection: ITextSelection,
        cause: SelectionChangedCause
    ): void {
        return this._dart_setSelection(nextSelection, cause);
    }
    public setTextEditingValue(
        newValue: ITextEditingValue,
        cause: SelectionChangedCause
    ): void {
        return this._dart_setTextEditingValue(newValue, cause);
    }
    public copySelection(cause: SelectionChangedCause): void {
        return this._dart_copySelection(cause);
    }
    public cutSelection(cause: SelectionChangedCause): void {
        return this._dart_cutSelection(cause);
    }
    public pasteText(cause: SelectionChangedCause): IFuture<void> {
        return this._dart_pasteText(cause);
    }
    public selectAll(cause: SelectionChangedCause): void {
        return this._dart_selectAll(cause);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getCurrentTextEditingValue(): ITextEditingValue {
        return this._dart_getCurrentTextEditingValue();
    }
    public updateEditingValue(value: ITextEditingValue): void {
        return this._dart_updateEditingValue(value);
    }
    public performAction(action: TextInputAction): void {
        return this._dart_performAction(action);
    }
    public performPrivateCommand(
        action: string,
        data: { [index: string]: any }
    ): void {
        return this._dart_performPrivateCommand(action, data);
    }
    public updateFloatingCursor(point: IRawFloatingCursorPoint): void {
        return this._dart_updateFloatingCursor(point);
    }
    public beginBatchEdit(): void {
        return this._dart_beginBatchEdit();
    }
    public endBatchEdit(): void {
        return this._dart_endBatchEdit();
    }
    public connectionClosed(): void {
        return this._dart_connectionClosed();
    }
    public requestKeyboard(): void {
        return this._dart_requestKeyboard();
    }
    public didChangeMetrics(): void {
        return this._dart_didChangeMetrics();
    }
    public getRenderEditable(): IRenderEditable {
        return this._dart_getRenderEditable();
    }
    public getTextEditingValue(): ITextEditingValue {
        return this._dart_getTextEditingValue();
    }
    public userUpdateTextEditingValue(
        value: ITextEditingValue,
        cause?: SelectionChangedCause | undefined
    ): void {
        return this._dart_userUpdateTextEditingValue(value, cause);
    }
    public bringIntoView(position: ITextPosition): void {
        return this._dart_bringIntoView(position);
    }
    public showToolbar(): boolean {
        return this._dart_showToolbar();
    }
    public hideToolbar(hideHandles: boolean = true): void {
        return this._dart_hideToolbar(hideHandles);
    }
    public toggleToolbar(): void {
        return this._dart_toggleToolbar();
    }
    public getAutofillId(): string {
        return this._dart_getAutofillId();
    }
    public getTextInputConfiguration(): ITextInputConfiguration {
        return this._dart_getTextInputConfiguration();
    }
    public autofill(value: ITextEditingValue): void {
        return this._dart_autofill(value);
    }
    public showAutocorrectionPromptRect(start: number, end: number): void {
        return this._dart_showAutocorrectionPromptRect(start, end);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public buildTextSpan(): ITextSpan {
        return this._dart_buildTextSpan();
    }
    public updateKeepAlive(): void {
        return this._dart_updateKeepAlive();
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public didPopRoute(): IFuture<boolean> {
        return this._dart_didPopRoute();
    }
    public didPushRoute(route: string): IFuture<boolean> {
        return this._dart_didPushRoute(route);
    }
    public didPushRouteInformation(
        routeInformation: IRouteInformation
    ): IFuture<boolean> {
        return this._dart_didPushRouteInformation(routeInformation);
    }
    public didChangeTextScaleFactor(): void {
        return this._dart_didChangeTextScaleFactor();
    }
    public didChangePlatformBrightness(): void {
        return this._dart_didChangePlatformBrightness();
    }
    public didChangeLocales(locales?: IList<ILocale> | undefined): void {
        return this._dart_didChangeLocales(locales);
    }
    public didChangeAppLifecycleState(state: AppLifecycleState): void {
        return this._dart_didChangeAppLifecycleState(state);
    }
    public didHaveMemoryPressure(): void {
        return this._dart_didHaveMemoryPressure();
    }
    public didChangeAccessibilityFeatures(): void {
        return this._dart_didChangeAccessibilityFeatures();
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public setTextEditingValue(value: ITextEditingValue): void {
        return this._dart_setTextEditingValue(value);
    }
    public delete(cause: SelectionChangedCause): void {
        return this._dart_delete(cause);
    }
    public deleteByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true
    ): void {
        return this._dart_deleteByWord(cause, includeWhitespace);
    }
    public deleteByLine(cause: SelectionChangedCause): void {
        return this._dart_deleteByLine(cause);
    }
    public deleteForward(cause: SelectionChangedCause): void {
        return this._dart_deleteForward(cause);
    }
    public deleteForwardByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true
    ): void {
        return this._dart_deleteForwardByWord(cause, includeWhitespace);
    }
    public deleteForwardByLine(cause: SelectionChangedCause): void {
        return this._dart_deleteForwardByLine(cause);
    }
    public deleteToEnd(cause: SelectionChangedCause): void {
        return this._dart_deleteToEnd(cause);
    }
    public deleteToStart(cause: SelectionChangedCause): void {
        return this._dart_deleteToStart(cause);
    }
    public expandSelectionToEnd(cause: SelectionChangedCause): void {
        return this._dart_expandSelectionToEnd(cause);
    }
    public expandSelectionToStart(cause: SelectionChangedCause): void {
        return this._dart_expandSelectionToStart(cause);
    }
    public expandSelectionLeftByLine(cause: SelectionChangedCause): void {
        return this._dart_expandSelectionLeftByLine(cause);
    }
    public expandSelectionRightByLine(cause: SelectionChangedCause): void {
        return this._dart_expandSelectionRightByLine(cause);
    }
    public extendSelectionDown(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionDown(cause);
    }
    public extendSelectionLeft(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionLeft(cause);
    }
    public extendSelectionLeftByLine(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionLeftByLine(cause);
    }
    public extendSelectionRight(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionRight(cause);
    }
    public extendSelectionRightByLine(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionRightByLine(cause);
    }
    public extendSelectionLeftByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true,
        stopAtReversal: boolean = false
    ): void {
        return this._dart_extendSelectionLeftByWord(
            cause,
            includeWhitespace,
            stopAtReversal
        );
    }
    public extendSelectionRightByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true,
        stopAtReversal: boolean = false
    ): void {
        return this._dart_extendSelectionRightByWord(
            cause,
            includeWhitespace,
            stopAtReversal
        );
    }
    public extendSelectionUp(cause: SelectionChangedCause): void {
        return this._dart_extendSelectionUp(cause);
    }
    public moveSelectionLeftByLine(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionLeftByLine(cause);
    }
    public moveSelectionDown(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionDown(cause);
    }
    public moveSelectionLeft(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionLeft(cause);
    }
    public moveSelectionLeftByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true
    ): void {
        return this._dart_moveSelectionLeftByWord(cause, includeWhitespace);
    }
    public moveSelectionRight(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionRight(cause);
    }
    public moveSelectionRightByLine(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionRightByLine(cause);
    }
    public moveSelectionRightByWord(
        cause: SelectionChangedCause,
        includeWhitespace: boolean = true
    ): void {
        return this._dart_moveSelectionRightByWord(cause, includeWhitespace);
    }
    public moveSelectionToEnd(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionToEnd(cause);
    }
    public moveSelectionToStart(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionToStart(cause);
    }
    public moveSelectionUp(cause: SelectionChangedCause): void {
        return this._dart_moveSelectionUp(cause);
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
    public getWidget(): IEditableText {
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
