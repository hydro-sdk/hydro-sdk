import { IDuration } from "../../dart/core/duration";
import { ISet } from "../../dart/core/set";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { ICurvedAnimation } from "../animation/curvedAnimation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ICustomPainter } from "../rendering/customPainter";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IMouseCursor } from "../services/mouseCursor";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { ITickerProviderStateMixin } from "../widgets/tickerProviderStateMixin";
import { IWidget } from "../widgets/widget";
import { I_MaterialSwitch } from "./_materialSwitch";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
import { IToggleableStateMixin } from "./toggleableStateMixin";
declare const flutter: {
    material: {
        _materialSwitchState: (
            this: void,
            _materialSwitchState: I_MaterialSwitchState
        ) => I_MaterialSwitchState;
    };
};
export interface I_MaterialSwitchState {
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    getOnChanged: () => (value?: boolean | undefined) => void | undefined;
    getTristate: () => boolean;
    getValue: () => boolean | undefined;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    initState: () => void;
    animateToValue: () => void;
    buildToggleable: (props: {
        autofocus: boolean;
        focusNode?: IFocusNode | undefined;
        mouseCursor: IMaterialStateProperty<IMouseCursor>;
        painter: ICustomPainter;
        size: ISize;
    }) => IWidget;
    getPositionController: () => IAnimationController;
    getPosition: () => ICurvedAnimation;
    getReactionController: () => IAnimationController;
    getReaction: () => IAnimation<number>;
    getReactionHoverFade: () => IAnimation<number>;
    getReactionFocusFade: () => IAnimation<number>;
    getIsInteractive: () => boolean;
    getDownPosition: () => IOffset | undefined;
    getStates: () => ISet<MaterialState>;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => I_MaterialSwitch;
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
export class _MaterialSwitchState
    implements
        Omit<
            IState<I_MaterialSwitch>,
            | "dispose"
            | "didChangeDependencies"
            | "debugFillProperties"
            | "initState"
        >,
        ITickerProviderStateMixin<I_MaterialSwitch>,
        IToggleableStateMixin<I_MaterialSwitch>,
        IDiagnosticable,
        ITickerProvider
{
    public constructor() {
        flutter.material._materialSwitchState(this);
    }
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getOnChanged: () => (
        value?: boolean | undefined
    ) => void | undefined = undefined as any;
    private readonly _dart_getTristate: () => boolean = undefined as any;
    private readonly _dart_getValue: () => boolean | undefined =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_animateToValue: () => void = undefined as any;
    private readonly _dart_buildToggleable: (props: {
        autofocus: boolean;
        focusNode?: IFocusNode | undefined;
        mouseCursor: IMaterialStateProperty<IMouseCursor>;
        painter: ICustomPainter;
        size: ISize;
    }) => IWidget = undefined as any;
    private readonly _dart_getPositionController: () => IAnimationController =
        undefined as any;
    private readonly _dart_getPosition: () => ICurvedAnimation =
        undefined as any;
    private readonly _dart_getReactionController: () => IAnimationController =
        undefined as any;
    private readonly _dart_getReaction: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_getReactionHoverFade: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_getReactionFocusFade: () => IAnimation<number> =
        undefined as any;
    private readonly _dart_getIsInteractive: () => boolean = undefined as any;
    private readonly _dart_getDownPosition: () => IOffset | undefined =
        undefined as any;
    private readonly _dart_getStates: () => ISet<MaterialState> =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => I_MaterialSwitch = undefined as any;
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
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getOnChanged(): (value?: boolean | undefined) => void | undefined {
        return this._dart_getOnChanged();
    }
    public getTristate(): boolean {
        return this._dart_getTristate();
    }
    public getValue(): boolean | undefined {
        return this._dart_getValue();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public animateToValue(): void {
        return this._dart_animateToValue();
    }
    public buildToggleable(props: {
        autofocus?: boolean;
        focusNode?: IFocusNode | undefined;
        mouseCursor: IMaterialStateProperty<IMouseCursor>;
        painter: ICustomPainter;
        size: ISize;
    }): IWidget {
        return this._dart_buildToggleable({
            ...buildToggleableDefaultProps,
            ...props,
        });
    }
    public getPositionController(): IAnimationController {
        return this._dart_getPositionController();
    }
    public getPosition(): ICurvedAnimation {
        return this._dart_getPosition();
    }
    public getReactionController(): IAnimationController {
        return this._dart_getReactionController();
    }
    public getReaction(): IAnimation<number> {
        return this._dart_getReaction();
    }
    public getReactionHoverFade(): IAnimation<number> {
        return this._dart_getReactionHoverFade();
    }
    public getReactionFocusFade(): IAnimation<number> {
        return this._dart_getReactionFocusFade();
    }
    public getIsInteractive(): boolean {
        return this._dart_getIsInteractive();
    }
    public getDownPosition(): IOffset | undefined {
        return this._dart_getDownPosition();
    }
    public getStates(): ISet<MaterialState> {
        return this._dart_getStates();
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
    public getWidget(): I_MaterialSwitch {
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
const buildToggleableDefaultProps = {
    autofocus: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
