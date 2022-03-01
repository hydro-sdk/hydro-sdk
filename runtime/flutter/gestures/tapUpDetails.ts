
import { IOffset,Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
declare const flutter: {
gestures: {
tapUpDetails: (this: void, tapUpDetails: ITapUpDetails, props : {  globalPosition : IOffset, localPosition? : IOffset | undefined, kind : PointerDeviceKind,}) => ITapUpDetails
}
};
export interface ITapUpDetails


{
globalPosition: IOffset;
localPosition: IOffset;
kind: PointerDeviceKind;
}export class TapUpDetails


{    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
public constructor( props : {  globalPosition? : IOffset, localPosition? : IOffset | undefined, kind : PointerDeviceKind,}){
flutter.gestures.tapUpDetails(this, {
...tapUpDetailsDefaultProps,
...props
});}
}
const tapUpDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
