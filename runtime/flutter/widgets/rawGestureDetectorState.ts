import { IMap } from "../../dart/core/map";
import { ISet } from "../../dart/core/set";
import { Type } from "../../dart/core/type";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IGestureRecognizer } from "../gestures/gestureRecognizer";
import { IBuildContext } from "./buildContext";
import { IGestureRecognizerFactory } from "./gestureRecognizerFactory";
import { IRawGestureDetector } from "./rawGestureDetector";
import { IState } from "./state";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        rawGestureDetectorState: (
            this: void,
            rawGestureDetectorState: IRawGestureDetectorState
        ) => IRawGestureDetectorState;
    };
};
export interface IRawGestureDetectorState {
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    replaceGestureRecognizers: (
        gestures: IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>
    ) => void;
    replaceSemanticsActions: (actions: ISet<ISemanticsAction>) => void;
    dispose: () => void;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    didChangeDependencies: () => void;
    getWidget: () => IRawGestureDetector;
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
export class RawGestureDetectorState
    implements
        Omit<IState<IRawGestureDetector>, "debugFillProperties">,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets.rawGestureDetectorState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_replaceGestureRecognizers: (
        gestures: IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>
    ) => void = undefined as any;
    private readonly _dart_replaceSemanticsActions: (
        actions: ISet<ISemanticsAction>
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_getWidget: () => IRawGestureDetector =
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
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public replaceGestureRecognizers(
        gestures: IMap<Type, IGestureRecognizerFactory<IGestureRecognizer>>
    ): void {
        return this._dart_replaceGestureRecognizers(gestures);
    }
    public replaceSemanticsActions(actions: ISet<ISemanticsAction>): void {
        return this._dart_replaceSemanticsActions(actions);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public getWidget(): IRawGestureDetector {
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
