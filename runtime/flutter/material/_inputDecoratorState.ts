import { IDuration } from "../../dart/core/duration";
import { ISet } from "../../dart/core/set";
import { TextAlign } from "../../dart/ui/textAlign";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { IInputDecoration } from "./inputDecoration";
import { IInputDecorator } from "./inputDecorator";
import { MaterialState } from "./materialState";
declare const flutter: {
    material: {
        _inputDecoratorState: (
            this: void,
            _inputDecoratorState: I_InputDecoratorState
        ) => I_InputDecoratorState;
    };
};
export interface I_InputDecoratorState {
    initState: () => void;
    didChangeDependencies: () => void;
    dispose: () => void;
    getDecoration: () => IInputDecoration | undefined;
    getTextAlign: () => TextAlign | undefined;
    getIsFocused: () => boolean;
    getIsHovering: () => boolean;
    getIsEmpty: () => boolean;
    didUpdateWidget: (old: unknown) => void;
    getMaterialState: () => ISet<MaterialState>;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IInputDecorator;
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
export class _InputDecoratorState
    implements
        Omit<
            IState<IInputDecorator>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ITickerProviderStateMixin<IInputDecorator>,
        IDiagnosticable,
        ITickerProvider
{
    public constructor() {
        flutter.material._inputDecoratorState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getDecoration: () => IInputDecoration | undefined =
        undefined as any;
    private readonly _dart_getTextAlign: () => TextAlign | undefined =
        undefined as any;
    private readonly _dart_getIsFocused: () => boolean = undefined as any;
    private readonly _dart_getIsHovering: () => boolean = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_didUpdateWidget: (old: any) => void =
        undefined as any;
    private readonly _dart_getMaterialState: () => ISet<MaterialState> =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IInputDecorator = undefined as any;
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
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getDecoration(): IInputDecoration | undefined {
        return this._dart_getDecoration();
    }
    public getTextAlign(): TextAlign | undefined {
        return this._dart_getTextAlign();
    }
    public getIsFocused(): boolean {
        return this._dart_getIsFocused();
    }
    public getIsHovering(): boolean {
        return this._dart_getIsHovering();
    }
    public getIsEmpty(): boolean {
        return this._dart_getIsEmpty();
    }
    public didUpdateWidget(old: any): void {
        return this._dart_didUpdateWidget(old);
    }
    public getMaterialState(): ISet<MaterialState> {
        return this._dart_getMaterialState();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
    public getWidget(): IInputDecorator {
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
