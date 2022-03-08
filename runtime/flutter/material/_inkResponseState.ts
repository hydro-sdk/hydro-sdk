import { IDuration } from "../../dart/core/duration";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAutomaticKeepAliveClientMixin } from "../widgets/automaticKeepAliveClientMixin";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { _HighlightType } from "./_highlightType";
import { I_InkResponseStateWidget } from "./_inkResponseStateWidget";
import { I_ParentInkResponseState } from "./_parentInkResponseState";
declare const flutter: {
    material: {
        _inkResponseState: (
            this: void,
            _inkResponseState: I_InkResponseState
        ) => I_InkResponseState;
    };
};
export interface I_InkResponseState {
    getHighlightsExist: () => boolean;
    markChildInkResponsePressed: (
        childState: I_ParentInkResponseState,
        value: boolean
    ) => void;
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    getWantKeepAlive: () => boolean;
    getHighlightColorForType: (type: _HighlightType) => IColor;
    getFadeDurationForType: (type: _HighlightType) => IDuration;
    updateHighlight: (
        type: _HighlightType,
        props: { callOnHover: boolean; value: boolean }
    ) => void;
    deactivate: () => void;
    getEnabled: () => boolean;
    build: (context: IBuildContext) => IWidget;
    updateKeepAlive: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => I_InkResponseStateWidget;
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
export class _InkResponseState
    implements
        Omit<
            IState<I_InkResponseStateWidget>,
            "initState" | "deactivate" | "build" | "debugFillProperties"
        >,
        IAutomaticKeepAliveClientMixin<I_InkResponseStateWidget>,
        IDiagnosticable,
        I_ParentInkResponseState
{
    public constructor() {
        flutter.material._inkResponseState(this);
    }
    private readonly _dart_getHighlightsExist: () => boolean = undefined as any;
    private readonly _dart_markChildInkResponsePressed: (
        childState: I_ParentInkResponseState,
        value: boolean
    ) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getWantKeepAlive: () => boolean = undefined as any;
    private readonly _dart_getHighlightColorForType: (
        type: _HighlightType
    ) => IColor = undefined as any;
    private readonly _dart_getFadeDurationForType: (
        type: _HighlightType
    ) => IDuration = undefined as any;
    private readonly _dart_updateHighlight: (
        type: _HighlightType,
        props: { callOnHover: boolean; value: boolean }
    ) => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_updateKeepAlive: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => I_InkResponseStateWidget =
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
    public getHighlightsExist(): boolean {
        return this._dart_getHighlightsExist();
    }
    public markChildInkResponsePressed(
        childState: I_ParentInkResponseState,
        value: boolean
    ): void {
        return this._dart_markChildInkResponsePressed(childState, value);
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
    public getHighlightColorForType(type: _HighlightType): IColor {
        return this._dart_getHighlightColorForType(type);
    }
    public getFadeDurationForType(type: _HighlightType): IDuration {
        return this._dart_getFadeDurationForType(type);
    }
    public updateHighlight(
        type: _HighlightType,
        props: { callOnHover?: boolean; value: boolean }
    ): void {
        return this._dart_updateHighlight(type, {
            ...updateHighlightDefaultProps,
            ...props,
        });
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public updateKeepAlive(): void {
        return this._dart_updateKeepAlive();
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
    public getWidget(): I_InkResponseStateWidget {
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
const updateHighlightDefaultProps = {
    callOnHover: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
