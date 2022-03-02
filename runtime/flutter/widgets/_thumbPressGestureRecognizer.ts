import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDeviceGestureSettings } from "../gestures/deviceGestureSettings";
import { IGestureArenaTeam } from "../gestures/gestureArenaTeam";
import { GestureDisposition } from "../gestures/gestureDisposition";
import { GestureRecognizerState } from "../gestures/gestureRecognizerState";
import { ILongPressDownDetails } from "../gestures/longPressDownDetails";
import { ILongPressEndDetails } from "../gestures/longPressEndDetails";
import { ILongPressGestureRecognizer } from "../gestures/longPressGestureRecognizer";
import { ILongPressMoveUpdateDetails } from "../gestures/longPressMoveUpdateDetails";
import { ILongPressStartDetails } from "../gestures/longPressStartDetails";
import { IOffsetPair } from "../gestures/offsetPair";
import { IPointerDownEvent } from "../gestures/pointerDownEvent";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IGlobalKey } from "./globalKey";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        _thumbPressGestureRecognizer: (
            this: void,
            _thumbPressGestureRecognizer: I_ThumbPressGestureRecognizer,
            props: {
                postAcceptSlopTolerance?: number | undefined;
                supportedDevices?: ISet<PointerDeviceKind> | undefined;
                customPaintKey: IGlobalKey<IState<IStatefulWidget>>;
                debugOwner: Object;
                pressDuration: IDuration;
            }
        ) => I_ThumbPressGestureRecognizer;
    };
};
export interface I_ThumbPressGestureRecognizer {
    onLongPressDown: (details: ILongPressDownDetails) => void | undefined;
    onLongPressCancel: () => void | undefined;
    onLongPress: () => void | undefined;
    onLongPressStart: (details: ILongPressStartDetails) => void | undefined;
    onLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined;
    onLongPressUp: () => void | undefined;
    onLongPressEnd: (details: ILongPressEndDetails) => void | undefined;
    onSecondaryLongPressDown: (
        details: ILongPressDownDetails
    ) => void | undefined;
    onSecondaryLongPressCancel: () => void | undefined;
    onSecondaryLongPress: () => void | undefined;
    onSecondaryLongPressStart: (
        details: ILongPressStartDetails
    ) => void | undefined;
    onSecondaryLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined;
    onSecondaryLongPressUp: () => void | undefined;
    onSecondaryLongPressEnd: (
        details: ILongPressEndDetails
    ) => void | undefined;
    onTertiaryLongPressDown: (
        details: ILongPressDownDetails
    ) => void | undefined;
    onTertiaryLongPressCancel: () => void | undefined;
    onTertiaryLongPress: () => void | undefined;
    onTertiaryLongPressStart: (
        details: ILongPressStartDetails
    ) => void | undefined;
    onTertiaryLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined;
    onTertiaryLongPressUp: () => void | undefined;
    onTertiaryLongPressEnd: (details: ILongPressEndDetails) => void | undefined;
    deadline: IDuration | undefined;
    preAcceptSlopTolerance: number | undefined;
    postAcceptSlopTolerance: number | undefined;
    debugOwner: Object | undefined;
    gestureSettings: IDeviceGestureSettings | undefined;
    isPointerAllowed: (event: IPointerDownEvent) => boolean;
    didExceedDeadline: () => void;
    handlePrimaryPointer: (event: IPointerEvent) => void;
    resolve: (disposition: GestureDisposition) => void;
    acceptGesture: (pointer: number) => void;
    getDebugDescription: () => string;
    addAllowedPointer: (event: IPointerDownEvent) => void;
    handleNonAllowedPointer: (event: IPointerDownEvent) => void;
    handleEvent: (event: IPointerEvent) => void;
    didExceedDeadlineWithEvent: (event: IPointerDownEvent) => void;
    rejectGesture: (pointer: number) => void;
    didStopTrackingLastPointer: (pointer: number) => void;
    dispose: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getState: () => GestureRecognizerState;
    getPrimaryPointer: () => number | undefined;
    getInitialPosition: () => IOffsetPair | undefined;
    resolvePointer: (pointer: number, disposition: GestureDisposition) => void;
    startTrackingPointer: (
        pointer: number,
        transform?: IMatrix4 | undefined
    ) => void;
    stopTrackingPointer: (pointer: number) => void;
    stopTrackingIfPointerNoLongerDown: (event: IPointerEvent) => void;
    getTeam: () => IGestureArenaTeam | undefined;
    setTeam: (value?: IGestureArenaTeam | undefined) => void;
    addPointer: (event: IPointerDownEvent) => void;
    getKindForPointer: (pointer: number) => PointerDeviceKind;
    invokeCallback: <T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ) => T | undefined;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    getHashCode: () => number;
}
export class _ThumbPressGestureRecognizer
    implements
        ILongPressGestureRecognizer,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public readonly onLongPressDown: (
        details: ILongPressDownDetails
    ) => void | undefined = undefined as any;
    public readonly onLongPressCancel: () => void | undefined =
        undefined as any;
    public readonly onLongPress: () => void | undefined = undefined as any;
    public readonly onLongPressStart: (
        details: ILongPressStartDetails
    ) => void | undefined = undefined as any;
    public readonly onLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined = undefined as any;
    public readonly onLongPressUp: () => void | undefined = undefined as any;
    public readonly onLongPressEnd: (
        details: ILongPressEndDetails
    ) => void | undefined = undefined as any;
    public readonly onSecondaryLongPressDown: (
        details: ILongPressDownDetails
    ) => void | undefined = undefined as any;
    public readonly onSecondaryLongPressCancel: () => void | undefined =
        undefined as any;
    public readonly onSecondaryLongPress: () => void | undefined =
        undefined as any;
    public readonly onSecondaryLongPressStart: (
        details: ILongPressStartDetails
    ) => void | undefined = undefined as any;
    public readonly onSecondaryLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined = undefined as any;
    public readonly onSecondaryLongPressUp: () => void | undefined =
        undefined as any;
    public readonly onSecondaryLongPressEnd: (
        details: ILongPressEndDetails
    ) => void | undefined = undefined as any;
    public readonly onTertiaryLongPressDown: (
        details: ILongPressDownDetails
    ) => void | undefined = undefined as any;
    public readonly onTertiaryLongPressCancel: () => void | undefined =
        undefined as any;
    public readonly onTertiaryLongPress: () => void | undefined =
        undefined as any;
    public readonly onTertiaryLongPressStart: (
        details: ILongPressStartDetails
    ) => void | undefined = undefined as any;
    public readonly onTertiaryLongPressMoveUpdate: (
        details: ILongPressMoveUpdateDetails
    ) => void | undefined = undefined as any;
    public readonly onTertiaryLongPressUp: () => void | undefined =
        undefined as any;
    public readonly onTertiaryLongPressEnd: (
        details: ILongPressEndDetails
    ) => void | undefined = undefined as any;
    public readonly deadline: IDuration | undefined = undefined as any;
    public readonly preAcceptSlopTolerance: number | undefined =
        undefined as any;
    public readonly postAcceptSlopTolerance: number | undefined =
        undefined as any;
    public readonly debugOwner: Object | undefined = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings | undefined =
        undefined as any;
    public constructor(props: {
        postAcceptSlopTolerance?: number | undefined;
        supportedDevices?: ISet<PointerDeviceKind> | undefined;
        customPaintKey: IGlobalKey<IState<IStatefulWidget>>;
        debugOwner: Object;
        pressDuration: IDuration;
    }) {
        flutter.widgets._thumbPressGestureRecognizer(this, props);
    }
    private readonly _dart_isPointerAllowed: (
        event: IPointerDownEvent
    ) => boolean = undefined as any;
    private readonly _dart_didExceedDeadline: () => void = undefined as any;
    private readonly _dart_handlePrimaryPointer: (
        event: IPointerEvent
    ) => void = undefined as any;
    private readonly _dart_resolve: (disposition: GestureDisposition) => void =
        undefined as any;
    private readonly _dart_acceptGesture: (pointer: number) => void =
        undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
    private readonly _dart_addAllowedPointer: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_handleNonAllowedPointer: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent) => void =
        undefined as any;
    private readonly _dart_didExceedDeadlineWithEvent: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_rejectGesture: (pointer: number) => void =
        undefined as any;
    private readonly _dart_didStopTrackingLastPointer: (
        pointer: number
    ) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getState: () => GestureRecognizerState =
        undefined as any;
    private readonly _dart_getPrimaryPointer: () => number | undefined =
        undefined as any;
    private readonly _dart_getInitialPosition: () => IOffsetPair | undefined =
        undefined as any;
    private readonly _dart_resolvePointer: (
        pointer: number,
        disposition: GestureDisposition
    ) => void = undefined as any;
    private readonly _dart_startTrackingPointer: (
        pointer: number,
        transform?: IMatrix4 | undefined
    ) => void = undefined as any;
    private readonly _dart_stopTrackingPointer: (pointer: number) => void =
        undefined as any;
    private readonly _dart_stopTrackingIfPointerNoLongerDown: (
        event: IPointerEvent
    ) => void = undefined as any;
    private readonly _dart_getTeam: () => IGestureArenaTeam | undefined =
        undefined as any;
    private readonly _dart_setTeam: (
        value?: IGestureArenaTeam | undefined
    ) => void = undefined as any;
    private readonly _dart_addPointer: (event: IPointerDownEvent) => void =
        undefined as any;
    private readonly _dart_getKindForPointer: (
        pointer: number
    ) => PointerDeviceKind = undefined as any;
    private readonly _dart_invokeCallback: <T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ) => T | undefined = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public isPointerAllowed(event: IPointerDownEvent): boolean {
        return this._dart_isPointerAllowed(event);
    }
    public didExceedDeadline(): void {
        return this._dart_didExceedDeadline();
    }
    public handlePrimaryPointer(event: IPointerEvent): void {
        return this._dart_handlePrimaryPointer(event);
    }
    public resolve(disposition: GestureDisposition): void {
        return this._dart_resolve(disposition);
    }
    public acceptGesture(pointer: number): void {
        return this._dart_acceptGesture(pointer);
    }
    public getDebugDescription(): string {
        return this._dart_getDebugDescription();
    }
    public addAllowedPointer(event: IPointerDownEvent): void {
        return this._dart_addAllowedPointer(event);
    }
    public handleNonAllowedPointer(event: IPointerDownEvent): void {
        return this._dart_handleNonAllowedPointer(event);
    }
    public handleEvent(event: IPointerEvent): void {
        return this._dart_handleEvent(event);
    }
    public didExceedDeadlineWithEvent(event: IPointerDownEvent): void {
        return this._dart_didExceedDeadlineWithEvent(event);
    }
    public rejectGesture(pointer: number): void {
        return this._dart_rejectGesture(pointer);
    }
    public didStopTrackingLastPointer(pointer: number): void {
        return this._dart_didStopTrackingLastPointer(pointer);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getState(): GestureRecognizerState {
        return this._dart_getState();
    }
    public getPrimaryPointer(): number | undefined {
        return this._dart_getPrimaryPointer();
    }
    public getInitialPosition(): IOffsetPair | undefined {
        return this._dart_getInitialPosition();
    }
    public resolvePointer(
        pointer: number,
        disposition: GestureDisposition
    ): void {
        return this._dart_resolvePointer(pointer, disposition);
    }
    public startTrackingPointer(
        pointer: number,
        transform?: IMatrix4 | undefined
    ): void {
        return this._dart_startTrackingPointer(pointer, transform);
    }
    public stopTrackingPointer(pointer: number): void {
        return this._dart_stopTrackingPointer(pointer);
    }
    public stopTrackingIfPointerNoLongerDown(event: IPointerEvent): void {
        return this._dart_stopTrackingIfPointerNoLongerDown(event);
    }
    public getTeam(): IGestureArenaTeam | undefined {
        return this._dart_getTeam();
    }
    public setTeam(value?: IGestureArenaTeam | undefined): void {
        return this._dart_setTeam(value);
    }
    public addPointer(event: IPointerDownEvent): void {
        return this._dart_addPointer(event);
    }
    public getKindForPointer(pointer: number): PointerDeviceKind {
        return this._dart_getKindForPointer(pointer);
    }
    public invokeCallback<T>(
        name: string,
        callback: () => T,
        props?: { debugReport?: () => string | undefined }
    ): T | undefined {
        return this._dart_invokeCallback(name, callback, props);
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
