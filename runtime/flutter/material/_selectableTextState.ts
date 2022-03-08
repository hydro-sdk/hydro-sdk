import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAutomaticKeepAliveClientMixin } from "../widgets/automaticKeepAliveClientMixin";
import { IBuildContext } from "../widgets/buildContext";
import { IEditableTextState } from "../widgets/editableTextState";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { ITextSelectionGestureDetectorBuilderDelegate } from "../widgets/textSelectionGestureDetectorBuilderDelegate";
import { IWidget } from "../widgets/widget";
import { ISelectableText } from "./selectableText";
declare const flutter: {
    material: {
        _selectableTextState: (
            this: void,
            _selectableTextState: I_SelectableTextState
        ) => I_SelectableTextState;
    };
};
export interface I_SelectableTextState {
    forcePressEnabled: boolean;
    editableTextKey: IGlobalKey<IEditableTextState>;
    getSelectionEnabled: () => boolean;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    getWantKeepAlive: () => boolean;
    build: (context: IBuildContext) => IWidget;
    updateKeepAlive: () => void;
    deactivate: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => ISelectableText;
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
    getForcePressEnabled: () => boolean;
}
export class _SelectableTextState
    implements
        Omit<
            IState<ISelectableText>,
            "initState" | "deactivate" | "build" | "debugFillProperties"
        >,
        IAutomaticKeepAliveClientMixin<ISelectableText>,
        IDiagnosticable,
        ITextSelectionGestureDetectorBuilderDelegate
{
    public readonly forcePressEnabled: boolean = undefined as any;
    public readonly editableTextKey: IGlobalKey<IEditableTextState> =
        undefined as any;
    public constructor() {
        flutter.material._selectableTextState(this);
    }
    private readonly _dart_getSelectionEnabled: () => boolean =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getWantKeepAlive: () => boolean = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_updateKeepAlive: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => ISelectableText = undefined as any;
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
    private readonly _dart_getForcePressEnabled: () => boolean =
        undefined as any;
    public getSelectionEnabled(): boolean {
        return this._dart_getSelectionEnabled();
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
    public getWantKeepAlive(): boolean {
        return this._dart_getWantKeepAlive();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): ISelectableText {
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
    public getForcePressEnabled(): boolean {
        return this._dart_getForcePressEnabled();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
