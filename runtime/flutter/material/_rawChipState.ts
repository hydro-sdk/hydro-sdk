import { Duration, IDuration } from "../../dart/core/duration";
import { ISet } from "../../dart/core/set";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
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
import { IChipThemeData } from "./chipThemeData";
import { Colors } from "./colors";
import { MaterialState } from "./materialState";
import { IMaterialStateMixin } from "./materialStateMixin";
import { IRawChip } from "./rawChip";
declare const flutter: {
    material: {
        _rawChipState: (
            this: void,
            _rawChipState: I_RawChipState
        ) => I_RawChipState;
    };
};
export interface I_RawChipState {
    selectController: IAnimationController;
    avatarDrawerController: IAnimationController;
    deleteDrawerController: IAnimationController;
    enableController: IAnimationController;
    checkmarkAnimation: IAnimation<number>;
    avatarDrawerAnimation: IAnimation<number>;
    deleteDrawerAnimation: IAnimation<number>;
    enableAnimation: IAnimation<number>;
    selectionFade: IAnimation<number>;
    materialStates: ISet<MaterialState>;
    getHasDeleteButton: () => boolean;
    getHasAvatar: () => boolean;
    getCanTap: () => boolean;
    getIsTapping: () => boolean;
    initState: () => void;
    dispose: () => void;
    getBackgroundColor: (theme: IChipThemeData) => IColor | undefined;
    didUpdateWidget: (oldWidget: unknown) => void;
    build: (context: IBuildContext) => IWidget;
    updateMaterialState: (
        key: MaterialState,
        props?: { onChanged?: (value: boolean) => void | undefined }
    ) => (value: boolean) => void;
    setMaterialState: (_state: MaterialState, isSet: boolean) => void;
    addMaterialState: (_state: MaterialState) => void;
    removeMaterialState: (_state: MaterialState) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getIsDisabled: () => boolean;
    getIsDragged: () => boolean;
    getIsErrored: () => boolean;
    getIsFocused: () => boolean;
    getIsHovered: () => boolean;
    getIsPressed: () => boolean;
    getIsScrolledUnder: () => boolean;
    getIsSelected: () => boolean;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    didChangeDependencies: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => IRawChip;
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
export class _RawChipState
    implements
        Omit<
            IState<IRawChip>,
            "debugFillProperties" | "dispose" | "didChangeDependencies"
        >,
        IMaterialStateMixin<IRawChip>,
        ITickerProviderStateMixin<IRawChip>,
        IDiagnosticable,
        ITickerProvider
{
    public static pressedAnimationDuration = new Duration({ milliseconds: 75 });
    public static _defaultElevation = 0.0;
    public static _defaultPressElevation = 8.0;
    public static _defaultShadowColor = Colors.black;
    public readonly selectController: IAnimationController = undefined as any;
    public readonly avatarDrawerController: IAnimationController =
        undefined as any;
    public readonly deleteDrawerController: IAnimationController =
        undefined as any;
    public readonly enableController: IAnimationController = undefined as any;
    public readonly checkmarkAnimation: IAnimation<number> = undefined as any;
    public readonly avatarDrawerAnimation: IAnimation<number> =
        undefined as any;
    public readonly deleteDrawerAnimation: IAnimation<number> =
        undefined as any;
    public readonly enableAnimation: IAnimation<number> = undefined as any;
    public readonly selectionFade: IAnimation<number> = undefined as any;
    public readonly materialStates: ISet<MaterialState> = undefined as any;
    public constructor() {
        flutter.material._rawChipState(this);
    }
    private readonly _dart_getHasDeleteButton: () => boolean = undefined as any;
    private readonly _dart_getHasAvatar: () => boolean = undefined as any;
    private readonly _dart_getCanTap: () => boolean = undefined as any;
    private readonly _dart_getIsTapping: () => boolean = undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getBackgroundColor: (
        theme: IChipThemeData
    ) => IColor | undefined = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_updateMaterialState: (
        key: MaterialState,
        props?: { onChanged?: (value: boolean) => void | undefined }
    ) => (value: boolean) => void = undefined as any;
    private readonly _dart_setMaterialState: (
        _state: MaterialState,
        isSet: boolean
    ) => void = undefined as any;
    private readonly _dart_addMaterialState: (_state: MaterialState) => void =
        undefined as any;
    private readonly _dart_removeMaterialState: (
        _state: MaterialState
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getIsDisabled: () => boolean = undefined as any;
    private readonly _dart_getIsDragged: () => boolean = undefined as any;
    private readonly _dart_getIsErrored: () => boolean = undefined as any;
    private readonly _dart_getIsFocused: () => boolean = undefined as any;
    private readonly _dart_getIsHovered: () => boolean = undefined as any;
    private readonly _dart_getIsPressed: () => boolean = undefined as any;
    private readonly _dart_getIsScrolledUnder: () => boolean = undefined as any;
    private readonly _dart_getIsSelected: () => boolean = undefined as any;
    private readonly _dart_createTicker: (
        onTick: (elapsed: IDuration) => void
    ) => ITicker = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_getWidget: () => IRawChip = undefined as any;
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
    public getHasDeleteButton(): boolean {
        return this._dart_getHasDeleteButton();
    }
    public getHasAvatar(): boolean {
        return this._dart_getHasAvatar();
    }
    public getCanTap(): boolean {
        return this._dart_getCanTap();
    }
    public getIsTapping(): boolean {
        return this._dart_getIsTapping();
    }
    public initState(): void {
        return this._dart_initState();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getBackgroundColor(theme: IChipThemeData): IColor | undefined {
        return this._dart_getBackgroundColor(theme);
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public updateMaterialState(
        key: MaterialState,
        props?: { onChanged?: (value: boolean) => void | undefined }
    ): (value: boolean) => void {
        return this._dart_updateMaterialState(key, props);
    }
    public setMaterialState(_state: MaterialState, isSet: boolean): void {
        return this._dart_setMaterialState(_state, isSet);
    }
    public addMaterialState(_state: MaterialState): void {
        return this._dart_addMaterialState(_state);
    }
    public removeMaterialState(_state: MaterialState): void {
        return this._dart_removeMaterialState(_state);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getIsDisabled(): boolean {
        return this._dart_getIsDisabled();
    }
    public getIsDragged(): boolean {
        return this._dart_getIsDragged();
    }
    public getIsErrored(): boolean {
        return this._dart_getIsErrored();
    }
    public getIsFocused(): boolean {
        return this._dart_getIsFocused();
    }
    public getIsHovered(): boolean {
        return this._dart_getIsHovered();
    }
    public getIsPressed(): boolean {
        return this._dart_getIsPressed();
    }
    public getIsScrolledUnder(): boolean {
        return this._dart_getIsScrolledUnder();
    }
    public getIsSelected(): boolean {
        return this._dart_getIsSelected();
    }
    public createTicker(onTick: (elapsed: IDuration) => void): ITicker {
        return this._dart_createTicker(onTick);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
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
    public getWidget(): IRawChip {
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
