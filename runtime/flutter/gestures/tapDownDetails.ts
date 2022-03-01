
import { IOffset,Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
declare const flutter: {
gestures: {
tapDownDetails: (this: void, tapDownDetails: ITapDownDetails, props : {  globalPosition : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined,}) => ITapDownDetails
}
};
export interface ITapDownDetails


{
globalPosition: IOffset;
kind: PointerDeviceKind | undefined;
localPosition: IOffset;
}export class TapDownDetails


{    public readonly globalPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind | undefined = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
public constructor( props : {  globalPosition? : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined,}){
flutter.gestures.tapDownDetails(this, {
...tapDownDetailsDefaultProps,
...props
});}
}
const tapDownDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
