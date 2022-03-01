
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IOffset,Offset } from "../../dart/ui/offset";
import { IDuration,Duration } from "../../dart/core/duration";
import { IPointerEvent } from "./pointerEvent";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IMatrix4 } from "../../vector_math/matrix4";
import { I_PointerEventDescription } from "./_pointerEventDescription";
import { I_CopyPointerAddedEvent } from "./_copyPointerAddedEvent";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
gestures: {
pointerAddedEvent: (this: void, pointerAddedEvent: IPointerAddedEvent, props : {  device : number, distance : number, distanceMax : number, embedderId : number, kind : PointerDeviceKind, obscured : boolean, orientation : number, pointer : number, position : IOffset, pressureMax : number, pressureMin : number, radiusMax : number, radiusMin : number, tilt : number, timeStamp : IDuration,}) => IPointerAddedEvent
}
};
export interface IPointerAddedEvent


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
transformed: (transform?: IMatrix4 | undefined) => IPointerAddedEvent;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringFull: () => string;
copyWith: ( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) => IPointerAddedEvent;
getLocalPosition: () => IOffset;
getLocalDelta: () => IOffset;
getDistanceMin: () => number;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class PointerAddedEvent

 implements Omit<IPointerEvent, "debugFillProperties" | "copyWith">, I_PointerEventDescription, I_CopyPointerAddedEvent, IDiagnosticable
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
public constructor( props : {  device? : number, distance? : number, distanceMax? : number, embedderId? : number, kind? : PointerDeviceKind, obscured? : boolean, orientation? : number, pointer? : number, position? : IOffset, pressureMax? : number, pressureMin? : number, radiusMax? : number, radiusMin? : number, tilt? : number, timeStamp? : IDuration,}){
flutter.gestures.pointerAddedEvent(this, {
...pointerAddedEventDefaultProps,
...props
});}
    private readonly _dart_transformed: (transform?: IMatrix4 | undefined) => IPointerAddedEvent = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringFull: () => string = undefined as any;
    private readonly _dart_copyWith: ( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) => IPointerAddedEvent = undefined as any;
    private readonly _dart_getLocalPosition: () => IOffset = undefined as any;
    private readonly _dart_getLocalDelta: () => IOffset = undefined as any;
    private readonly _dart_getDistanceMin: () => number = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transformed(transform?: IMatrix4 | undefined) : IPointerAddedEvent {
    return this._dart_transformed(transform);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public toStringFull() : string {
    return this._dart_toStringFull();
}
public copyWith( props? : {  buttons? : number | undefined, delta? : IOffset | undefined, device? : number | undefined, distance? : number | undefined, distanceMax? : number | undefined, embedderId? : number | undefined, kind? : PointerDeviceKind | undefined, obscured? : boolean | undefined, orientation? : number | undefined, pointer? : number | undefined, position? : IOffset | undefined, pressure? : number | undefined, pressureMax? : number | undefined, pressureMin? : number | undefined, radiusMajor? : number | undefined, radiusMax? : number | undefined, radiusMin? : number | undefined, radiusMinor? : number | undefined, size? : number | undefined, synthesized? : boolean | undefined, tilt? : number | undefined, timeStamp? : IDuration | undefined,}) : IPointerAddedEvent {
    return this._dart_copyWith(props);
}
public getLocalPosition() : IOffset {
    return this._dart_getLocalPosition();
}
public getLocalDelta() : IOffset {
    return this._dart_getLocalDelta();
}
public getDistanceMin() : number {
    return this._dart_getDistanceMin();
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
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const pointerAddedEventDefaultProps = {
    device: 0,
    distance: 0.0,
    distanceMax: 0.0,
    embedderId: 0,
    kind: PointerDeviceKind.touch,
    obscured: false,
    orientation: 0.0,
    pointer: 0,
    position: Offset.zero,
    pressureMax: 1.0,
    pressureMin: 1.0,
    radiusMax: 0.0,
    radiusMin: 0.0,
    tilt: 0.0,
    timeStamp: Duration.zero,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
