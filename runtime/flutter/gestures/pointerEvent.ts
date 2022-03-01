
import { IOffset,Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDuration,Duration } from "../../dart/core/duration";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
gestures: {
pointerEvent: (this: void, pointerEvent: IPointerEvent, props : {  buttons : number, delta : IOffset, device : number, distance : number, distanceMax : number, down : boolean, embedderId : number, kind : PointerDeviceKind, obscured : boolean, orientation : number, original? : IPointerEvent | undefined, platformData : number, pointer : number, position : IOffset, pressure : number, pressureMax : number, pressureMin : number, radiusMajor : number, radiusMax : number, radiusMin : number, radiusMinor : number, size : number, synthesized : boolean, tilt : number, timeStamp : IDuration, transform? : IMatrix4 | undefined,}) => IPointerEvent;
pointerEventTransformPosition: (transform: IMatrix4 | undefined, position: IOffset) => IOffset;
pointerEventTransformDeltaViaPositions: ( props : {  transformedEndPosition? : IOffset | undefined, transform? : IMatrix4 | undefined, untransformedDelta : IOffset, untransformedEndPosition : IOffset,}) => IOffset;
pointerEventRemovePerspectiveTransform: (transform: IMatrix4) => IMatrix4
}
};
export interface IPointerEvent


{
embedderId: number;
timeStamp: IDuration;
pointer: number;
kind: PointerDeviceKind;
device: number;
position: IOffset;
delta: IOffset;
buttons: number;
down: boolean;
obscured: boolean;
pressure: number;
pressureMin: number;
pressureMax: number;
distance: number;
distanceMax: number;
size: number;
radiusMajor: number;
radiusMinor: number;
radiusMin: number;
radiusMax: number;
orientation: number;
tilt: number;
platformData: number;
synthesized: boolean;
transform: IMatrix4 | undefined;
original: IPointerEvent | undefined;
getLocalPosition: () => IOffset;
getLocalDelta: () => IOffset;
getDistanceMin: () => number;
transformed: (transform?: IMatrix4 | undefined) => IPointerEvent;
copyWith: ( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) => IPointerEvent;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}export class PointerEvent

 implements IDiagnosticable
{    public readonly embedderId: number = undefined as any;
    public readonly timeStamp: IDuration = undefined as any;
    public readonly pointer: number = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
    public readonly device: number = undefined as any;
    public readonly position: IOffset = undefined as any;
    public readonly delta: IOffset = undefined as any;
    public readonly buttons: number = undefined as any;
    public readonly down: boolean = undefined as any;
    public readonly obscured: boolean = undefined as any;
    public readonly pressure: number = undefined as any;
    public readonly pressureMin: number = undefined as any;
    public readonly pressureMax: number = undefined as any;
    public readonly distance: number = undefined as any;
    public readonly distanceMax: number = undefined as any;
    public readonly size: number = undefined as any;
    public readonly radiusMajor: number = undefined as any;
    public readonly radiusMinor: number = undefined as any;
    public readonly radiusMin: number = undefined as any;
    public readonly radiusMax: number = undefined as any;
    public readonly orientation: number = undefined as any;
    public readonly tilt: number = undefined as any;
    public readonly platformData: number = undefined as any;
    public readonly synthesized: boolean = undefined as any;
    public readonly transform: IMatrix4 | undefined = undefined as any;
    public readonly original: IPointerEvent | undefined = undefined as any;
public constructor( props : {  buttons? : number, delta? : IOffset, device? : number, distance? : number, distanceMax? : number, down? : boolean, embedderId? : number, kind? : PointerDeviceKind, obscured? : boolean, orientation? : number, original? : IPointerEvent | undefined, platformData? : number, pointer? : number, position? : IOffset, pressure? : number, pressureMax? : number, pressureMin? : number, radiusMajor? : number, radiusMax? : number, radiusMin? : number, radiusMinor? : number, size? : number, synthesized? : boolean, tilt? : number, timeStamp? : IDuration, transform? : IMatrix4 | undefined,}){
flutter.gestures.pointerEvent(this, {
...pointerEventDefaultProps,
...props
});}
public static transformPosition(transform: IMatrix4 | undefined, position: IOffset) : IOffset{
return flutter.gestures.pointerEventTransformPosition(transform, position);
}public static transformDeltaViaPositions( props : {  transformedEndPosition? : IOffset | undefined, transform? : IMatrix4 | undefined, untransformedDelta : IOffset, untransformedEndPosition : IOffset,}) : IOffset{
return flutter.gestures.pointerEventTransformDeltaViaPositions(props);
}public static removePerspectiveTransform(transform: IMatrix4) : IMatrix4{
return flutter.gestures.pointerEventRemovePerspectiveTransform(transform);
}    private readonly _dart_getLocalPosition: () => IOffset = undefined as any;
    private readonly _dart_getLocalDelta: () => IOffset = undefined as any;
    private readonly _dart_getDistanceMin: () => number = undefined as any;
    private readonly _dart_transformed: (transform?: IMatrix4 | undefined) => IPointerEvent = undefined as any;
    private readonly _dart_copyWith: ( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) => IPointerEvent = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
public getLocalPosition() : IOffset {
    return this._dart_getLocalPosition();
}
public getLocalDelta() : IOffset {
    return this._dart_getLocalDelta();
}
public getDistanceMin() : number {
    return this._dart_getDistanceMin();
}
public transformed(transform?: IMatrix4 | undefined) : IPointerEvent {
    return this._dart_transformed(transform);
}
public copyWith( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) : IPointerEvent {
    return this._dart_copyWith(props);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
}
const pointerEventDefaultProps = {
    buttons: 0,
    delta: Offset.zero,
    device: 0,
    distance: 0.0,
    distanceMax: 0.0,
    down: false,
    embedderId: 0,
    kind: PointerDeviceKind.touch,
    obscured: false,
    orientation: 0.0,
    platformData: 0,
    pointer: 0,
    position: Offset.zero,
    pressure: 1.0,
    pressureMax: 1.0,
    pressureMin: 1.0,
    radiusMajor: 0.0,
    radiusMax: 0.0,
    radiusMin: 0.0,
    radiusMinor: 0.0,
    size: 0.0,
    synthesized: false,
    tilt: 0.0,
    timeStamp: Duration.zero,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
