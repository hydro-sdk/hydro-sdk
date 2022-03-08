import { IDuration } from "../../dart/core/duration";
import { List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IMediaQueryData } from "../widgets/mediaQueryData";
import { ISingleTickerProviderStateMixin } from "../widgets/singleTickerProviderStateMixin";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { I_Dial } from "./_dial";
import { IMaterialLocalizations } from "./materialLocalizations";
import { IThemeData } from "./themeData";
import { TimeOfDay } from "./timeOfDay";
declare const flutter: {
    material: {
        _dialState: (this: void, _dialState: I_DialState) => I_DialState;
    };
};
export interface I_DialState {
    themeData: IThemeData;
    localizations: IMaterialLocalizations;
    media: IMediaQueryData;
    initState: () => void;
    didChangeDependencies: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    build: (context: IBuildContext) => IWidget;
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    getWidget: () => I_Dial;
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
export class _DialState
    implements
        Omit<
            IState<I_Dial>,
            "dispose" | "didChangeDependencies" | "debugFillProperties"
        >,
        ISingleTickerProviderStateMixin<I_Dial>,
        IDiagnosticable,
        ITickerProvider
{
    public static _amHours = List.fromArray([
        new TimeOfDay({ hour: 12, minute: 0 }),
        new TimeOfDay({ hour: 1, minute: 0 }),
        new TimeOfDay({ hour: 2, minute: 0 }),
        new TimeOfDay({ hour: 3, minute: 0 }),
        new TimeOfDay({ hour: 4, minute: 0 }),
        new TimeOfDay({ hour: 5, minute: 0 }),
        new TimeOfDay({ hour: 6, minute: 0 }),
        new TimeOfDay({ hour: 7, minute: 0 }),
        new TimeOfDay({ hour: 8, minute: 0 }),
        new TimeOfDay({ hour: 9, minute: 0 }),
        new TimeOfDay({ hour: 10, minute: 0 }),
        new TimeOfDay({ hour: 11, minute: 0 }),
    ]);
    public static _twentyFourHours = List.fromArray([
        new TimeOfDay({ hour: 0, minute: 0 }),
        new TimeOfDay({ hour: 2, minute: 0 }),
        new TimeOfDay({ hour: 4, minute: 0 }),
        new TimeOfDay({ hour: 6, minute: 0 }),
        new TimeOfDay({ hour: 8, minute: 0 }),
        new TimeOfDay({ hour: 10, minute: 0 }),
        new TimeOfDay({ hour: 12, minute: 0 }),
        new TimeOfDay({ hour: 14, minute: 0 }),
        new TimeOfDay({ hour: 16, minute: 0 }),
        new TimeOfDay({ hour: 18, minute: 0 }),
        new TimeOfDay({ hour: 20, minute: 0 }),
        new TimeOfDay({ hour: 22, minute: 0 }),
    ]);
    public readonly themeData: IThemeData = undefined as any;
    public readonly localizations: IMaterialLocalizations = undefined as any;
    public readonly media: IMediaQueryData = undefined as any;
    public constructor() {
        flutter.material._dialState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
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
    private readonly _dart_getWidget: () => I_Dial = undefined as any;
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
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
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
    public getWidget(): I_Dial {
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
