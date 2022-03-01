
import { IOffset,Offset } from "../../dart/ui/offset";
declare const flutter: {
gestures: {
scaleStartDetails: (this: void, scaleStartDetails: IScaleStartDetails, props : {  focalPoint : IOffset, localFocalPoint? : IOffset | undefined, pointerCount : number,}) => IScaleStartDetails
}
};
export interface IScaleStartDetails


{
focalPoint: IOffset;
localFocalPoint: IOffset;
pointerCount: number;
toString: () => string;
}export class ScaleStartDetails


{    public readonly focalPoint: IOffset = undefined as any;
    public readonly localFocalPoint: IOffset = undefined as any;
    public readonly pointerCount: number = undefined as any;
public constructor( props : {  focalPoint? : IOffset, localFocalPoint? : IOffset | undefined, pointerCount? : number,}){
flutter.gestures.scaleStartDetails(this, {
...scaleStartDetailsDefaultProps,
...props
});}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
const scaleStartDetailsDefaultProps = {
    focalPoint: Offset.zero,
    pointerCount: 0,
};
