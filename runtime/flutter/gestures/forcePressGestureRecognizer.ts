
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { ISet } from "../../dart/core/set";
import { IOneSequenceGestureRecognizer } from "./oneSequenceGestureRecognizer";
import { IPointerDownEvent } from "./pointerDownEvent";
import { IPointerEvent } from "./pointerEvent";
import { GestureDisposition } from "./gestureDisposition";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IGestureArenaTeam } from "./gestureArenaTeam";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IList } from "../../dart/core/list";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
declare const flutter: {
gestures: {
forcePressGestureRecognizer: (this: void, forcePressGestureRecognizer: IForcePressGestureRecognizer, props : {  debugOwner? : Object | undefined, interpolation : (pressureMin: number, pressureMax: number, pressure: number) => number, kind? : PointerDeviceKind | undefined, peakPressure : number, startPressure : number, supportedDevices? : ISet<PointerDeviceKind> | undefined,}) => IForcePressGestureRecognizer
}
};
export interface IForcePressGestureRecognizer


{
startPressure: number;
peakPressure: number;
debugOwner: Object | undefined;
gestureSettings: IDeviceGestureSettings | undefined;
addAllowedPointer: (event: IPointerDownEvent) => void;
handleEvent: (event: IPointerEvent) => void;
acceptGesture: (pointer: number) => void;
didStopTrackingLastPointer: (pointer: number) => void;
rejectGesture: (pointer: number) => void;
getDebugDescription: () => string;
handleNonAllowedPointer: (event: IPointerDownEvent) => void;
resolve: (disposition: GestureDisposition) => void;
resolvePointer: (pointer: number, disposition: GestureDisposition) => void;
dispose: () => void;
startTrackingPointer: (pointer: number, transform?: IMatrix4 | undefined) => void;
stopTrackingPointer: (pointer: number) => void;
stopTrackingIfPointerNoLongerDown: (event: IPointerEvent) => void;
getTeam: () => IGestureArenaTeam | undefined;
setTeam: (value?: IGestureArenaTeam | undefined) => void;
addPointer: (event: IPointerDownEvent) => void;
isPointerAllowed: (event: IPointerDownEvent) => boolean;
getKindForPointer: (pointer: number) => PointerDeviceKind;
invokeCallback: <T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) => T | undefined;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toStringShort: () => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getHashCode: () => number;
}export class ForcePressGestureRecognizer

 implements IOneSequenceGestureRecognizer, IDiagnosticableTreeMixin, IDiagnosticable, Omit<IDiagnosticableTree, "toStringShallow" | "toStringDeep" | "debugDescribeChildren" | "debugFillProperties" | "toStringShort" | "toDiagnosticsNode">
{    public readonly startPressure: number = undefined as any;
    public readonly peakPressure: number = undefined as any;
    public readonly debugOwner: Object | undefined = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings | undefined = undefined as any;
public constructor( props : {  debugOwner? : Object | undefined, interpolation : (pressureMin: number, pressureMax: number, pressure: number) => number, kind? : PointerDeviceKind | undefined, peakPressure? : number, startPressure? : number, supportedDevices? : ISet<PointerDeviceKind> | undefined,}){
flutter.gestures.forcePressGestureRecognizer(this, {
...forcePressGestureRecognizerDefaultProps,
...props
});}
    private readonly _dart_addAllowedPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_handleEvent: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_acceptGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_didStopTrackingLastPointer: (pointer: number) => void = undefined as any;
    private readonly _dart_rejectGesture: (pointer: number) => void = undefined as any;
    private readonly _dart_getDebugDescription: () => string = undefined as any;
    private readonly _dart_handleNonAllowedPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_resolve: (disposition: GestureDisposition) => void = undefined as any;
    private readonly _dart_resolvePointer: (pointer: number, disposition: GestureDisposition) => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_startTrackingPointer: (pointer: number, transform?: IMatrix4 | undefined) => void = undefined as any;
    private readonly _dart_stopTrackingPointer: (pointer: number) => void = undefined as any;
    private readonly _dart_stopTrackingIfPointerNoLongerDown: (event: IPointerEvent) => void = undefined as any;
    private readonly _dart_getTeam: () => IGestureArenaTeam | undefined = undefined as any;
    private readonly _dart_setTeam: (value?: IGestureArenaTeam | undefined) => void = undefined as any;
    private readonly _dart_addPointer: (event: IPointerDownEvent) => void = undefined as any;
    private readonly _dart_isPointerAllowed: (event: IPointerDownEvent) => boolean = undefined as any;
    private readonly _dart_getKindForPointer: (pointer: number) => PointerDeviceKind = undefined as any;
    private readonly _dart_invokeCallback: <T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) => T | undefined = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addAllowedPointer(event: IPointerDownEvent) : void {
    return this._dart_addAllowedPointer(event);
}
public handleEvent(event: IPointerEvent) : void {
    return this._dart_handleEvent(event);
}
public acceptGesture(pointer: number) : void {
    return this._dart_acceptGesture(pointer);
}
public didStopTrackingLastPointer(pointer: number) : void {
    return this._dart_didStopTrackingLastPointer(pointer);
}
public rejectGesture(pointer: number) : void {
    return this._dart_rejectGesture(pointer);
}
public getDebugDescription() : string {
    return this._dart_getDebugDescription();
}
public handleNonAllowedPointer(event: IPointerDownEvent) : void {
    return this._dart_handleNonAllowedPointer(event);
}
public resolve(disposition: GestureDisposition) : void {
    return this._dart_resolve(disposition);
}
public resolvePointer(pointer: number, disposition: GestureDisposition) : void {
    return this._dart_resolvePointer(pointer, disposition);
}
public dispose() : void {
    return this._dart_dispose();
}
public startTrackingPointer(pointer: number, transform?: IMatrix4 | undefined) : void {
    return this._dart_startTrackingPointer(pointer, transform);
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
public isPointerAllowed(event: IPointerDownEvent) : boolean {
    return this._dart_isPointerAllowed(event);
}
public getKindForPointer(pointer: number) : PointerDeviceKind {
    return this._dart_getKindForPointer(pointer);
}
public invokeCallback<T>(name: string, callback : () => T, props? : {  debugReport? : () => string | undefined,}) : T | undefined {
    return this._dart_invokeCallback(name, callback, props);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
const forcePressGestureRecognizerDefaultProps = {
    peakPressure: 0.85,
    startPressure: 0.4,
};
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
