
import { IOffset } from "../../dart/ui/offset";
import { IDuration } from "../../dart/core/duration";
declare const flutter: {
gestures: {
_pointAtTime: (this: void, _pointAtTime: I_PointAtTime, point: IOffset, time: IDuration) => I_PointAtTime
}
};
export interface I_PointAtTime


{
time: IDuration;
point: IOffset;
toString: () => string;
}export class _PointAtTime


{    public readonly time: IDuration = undefined as any;
    public readonly point: IOffset = undefined as any;
public constructor(point: IOffset, time: IDuration){
flutter.gestures._pointAtTime(this, point, time);}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
