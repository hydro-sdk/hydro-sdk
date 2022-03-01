
import { IOffset,Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
declare const flutter: {
gestures: {
longPressDownDetails: (this: void, longPressDownDetails: ILongPressDownDetails, props : {  globalPosition : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined,}) => ILongPressDownDetails
}
};
export interface ILongPressDownDetails


{
globalPosition: IOffset;
kind: PointerDeviceKind | undefined;
localPosition: IOffset;
}export class LongPressDownDetails


{    public readonly globalPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind | undefined = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
public constructor( props : {  globalPosition? : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined,}){
flutter.gestures.longPressDownDetails(this, {
...longPressDownDetailsDefaultProps,
...props
});}
}
const longPressDownDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
