
import { IBaseTapGestureRecognizer } from "./baseTapGestureRecognizer";
import { IPointerDownEvent } from "./pointerDownEvent";
import { IPointerUpEvent } from "./pointerUpEvent";
import { IPointerCancelEvent } from "./pointerCancelEvent";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IPointerEvent } from "./pointerEvent";
import { GestureDisposition } from "./gestureDisposition";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { GestureRecognizerState } from "./gestureRecognizerState";
import { IOffsetPair } from "./offsetPair";
import { IGestureArenaTeam } from "./gestureArenaTeam";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { IDuration } from "../../dart/core/duration";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
declare const flutter: {
gestures: {
tapGestureRecognizer: (this: void, tapGestureRecognizer: ITapGestureRecognizer, props? : {  debugOwner? : Object | undefined,}) => ITapGestureRecognizer
}
};
export interface ITapGestureRecognizer


{
deadline: IDuration | undefined;
preAcceptSlopTolerance: number | undefined;
postAcceptSlopTolerance: number | undefined;
debugOwner: Object | undefined;
gestureSettings: IDeviceGestureSettings | undefined;
isPointerAllowed: (event: IPointerDownEvent) => boolean;
handleTapDown: ( props : {  down : IPointerDownEvent,}) => void;
handleTapUp: ( props : {  down : IPointerDownEvent, up : IPointerUpEvent,}) => void;
handleTapCancel: ( props : {  cancel? : IPointerCancelEvent | undefined, down : IPointerDownEvent, reason : string,}) => void;
getDebugDescription: () => string;
addAllowedPointer: (event: IPointerDownEvent) => void;
startTrackingPointer: (pointer: number, transform?: IMatrix4 | undefined) => void;
handlePrimaryPointer: (event: IPointerEvent) => void;
resolve: (disposition: GestureDisposition) => void;
didExceedDeadline: () => void;
acceptGesture: (pointer: number) => void;
rejectGesture: (pointer: number) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
handleNonAllowedPointer: (event: IPointerDownEvent) => void;
handleEvent: (event: IPointerEvent) => void;
didExceedDeadlineWithEvent: (event: IPointerDownEvent) => void;
didStopTrackingLastPointer: (pointer: number) => void;
dispose: () => void;
getState: () => GestureRecognizerState;
getPrimaryPointer: () => number | undefined;
getInitialPosition: () => IOffsetPair | undefined;
resolvePointer: (pointer: number, disposition: GestureDisposition) => void;
stopTrackingPointer: (pointer: number) => void;
stopTrackingIfPointerNoLongerDown: (event: IPointerEvent) => void;
getTeam: () => IGestureArenaTeam | undefined;
setTeam: (value?: IGestureArenaTeam | undefined) => void;
addPointer: (event: IPointerDownEvent) => void;
getKindForPointer: (pointer: number) => PointerDeviceKind;
invokeCallback: <T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) => T | undefined;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toStringShort: () => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getHashCode: () => number;
}export class TapGestureRecognizer

 implements IBaseTapGestureRecognizer, IDiagnosticableTreeMixin, IDiagnosticable, Omit<IDiagnosticableTree, "toStringShallow" | "toStringDeep" | "debugDescribeChildren" | "debugFillProperties" | "toStringShort" | "toDiagnosticsNode">
{    public readonly deadline: IDuration | undefined = undefined as any;
    public readonly preAcceptSlopTolerance: number | undefined = undefined as any;
    public readonly postAcceptSlopTolerance: number | undefined = undefined as any;
    public readonly debugOwner: Object | undefined = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings | undefined = undefined as any;
public constructor( props? : {  debugOwner? : Object | undefined,}){
flutter.gestures.tapGestureRecognizer(this, props);}
    private readonly _dart_isPointerAllowed: (event: IPointerDownEvent) => boolean = undefined as any;
    private readonly _dart_handleTapDown: ( props : {  down : IPointerDownEvent,}) => void = undefined as any;
    private readonly _dart_handleTapUp: ( props : {  down : IPointerDownEvent, up : IPointerUpEvent,}) => void = undefined as any;
    private readonly _dart_handleTapCancel: ( props : {  cancel? : IPointerCancelEvent | undefined, down : IPointerDownEvent, reason : string,}) => void = undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
    private readonly _dart_addAllowedPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_startTrackingPointer: (pointer: number, transform?: IMatrix4 | undefined) => void = undefined as any;
    private readonly _dart_handlePrimaryPointer: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_resolve: (disposition: GestureDisposition) => void = undefined as any;
    private readonly _dart_didExceedDeadline: () => void = undefined as any;
    private readonly _dart_acceptGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_rejectGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_handleNonAllowedPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_didExceedDeadlineWithEvent: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_didStopTrackingLastPointer: (pointer: number) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getState: () => GestureRecognizerState = undefined as any;
    private readonly _dart_getPrimaryPointer: () => number | undefined = undefined as any;
    private readonly _dart_getInitialPosition: () => IOffsetPair | undefined = undefined as any;
    private readonly _dart_resolvePointer: (pointer: number, disposition: GestureDisposition) => void = undefined as any;
    private readonly _dart_stopTrackingPointer: (pointer: number) => void = undefined as any;
    private readonly _dart_stopTrackingIfPointerNoLongerDown: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_getTeam: () => IGestureArenaTeam | undefined = undefined as any;
    private readonly _dart_setTeam: (value?: IGestureArenaTeam | undefined) => void = undefined as any;
    private readonly _dart_addPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_getKindForPointer: (pointer: number) => PointerDeviceKind = undefined as any;
    private readonly _dart_invokeCallback: <T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) => T | undefined = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public isPointerAllowed(event: IPointerDownEvent) : boolean {
    return this._dart_isPointerAllowed(event);
}
public handleTapDown( props : {  down : IPointerDownEvent,}) : void {
    return this._dart_handleTapDown(props);
}
public handleTapUp( props : {  down : IPointerDownEvent, up : IPointerUpEvent,}) : void {
    return this._dart_handleTapUp(props);
}
public handleTapCancel( props : {  cancel? : IPointerCancelEvent | undefined, down : IPointerDownEvent, reason : string,}) : void {
    return this._dart_handleTapCancel(props);
}
public getDebugDescription() : string {
    return this._dart_getDebugDescription();
}
public addAllowedPointer(event: IPointerDownEvent) : void {
    return this._dart_addAllowedPointer(event);
}
public startTrackingPointer(pointer: number, transform?: IMatrix4 | undefined) : void {
    return this._dart_startTrackingPointer(pointer, transform);
}
public handlePrimaryPointer(event: IPointerEvent) : void {
    return this._dart_handlePrimaryPointer(event);
}
public resolve(disposition: GestureDisposition) : void {
    return this._dart_resolve(disposition);
}
public didExceedDeadline() : void {
    return this._dart_didExceedDeadline();
}
public acceptGesture(pointer: number) : void {
    return this._dart_acceptGesture(pointer);
}
public rejectGesture(pointer: number) : void {
    return this._dart_rejectGesture(pointer);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public handleNonAllowedPointer(event: IPointerDownEvent) : void {
    return this._dart_handleNonAllowedPointer(event);
}
public handleEvent(event: IPointerEvent) : void {
    return this._dart_handleEvent(event);
}
public didExceedDeadlineWithEvent(event: IPointerDownEvent) : void {
    return this._dart_didExceedDeadlineWithEvent(event);
}
public didStopTrackingLastPointer(pointer: number) : void {
    return this._dart_didStopTrackingLastPointer(pointer);
}
public dispose() : void {
    return this._dart_dispose();
}
public getState() : GestureRecognizerState {
    return this._dart_getState();
}
public getPrimaryPointer() : number | undefined {
    return this._dart_getPrimaryPointer();
}
public getInitialPosition() : IOffsetPair | undefined {
    return this._dart_getInitialPosition();
}
public resolvePointer(pointer: number, disposition: GestureDisposition) : void {
    return this._dart_resolvePointer(pointer, disposition);
}
public stopTrackingPointer(pointer: number) : void {
    return this._dart_stopTrackingPointer(pointer);
}
public stopTrackingIfPointerNoLongerDown(event: IPointerEvent) : void {
    return this._dart_stopTrackingIfPointerNoLongerDown(event);
}
public getTeam() : IGestureArenaTeam | undefined {
    return this._dart_getTeam();
}
public setTeam(value?: IGestureArenaTeam | undefined) : void {
    return this._dart_setTeam(value);
}
public addPointer(event: IPointerDownEvent) : void {
    return this._dart_addPointer(event);
}
public getKindForPointer(pointer: number) : PointerDeviceKind {
    return this._dart_getKindForPointer(pointer);
}
public invokeCallback<T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) : T | undefined {
    return this._dart_invokeCallback(name, callback, props);
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public getHashCode() : number {
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
