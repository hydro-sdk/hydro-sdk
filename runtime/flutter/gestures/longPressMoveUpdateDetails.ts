
import { IOffset,Offset } from "../../dart/ui/offset";
declare const flutter: {
gestures: {
longPressMoveUpdateDetails: (this: void, longPressMoveUpdateDetails: ILongPressMoveUpdateDetails, props : {  globalPosition : IOffset, localOffsetFromOrigin? : IOffset | undefined, localPosition? : IOffset | undefined, offsetFromOrigin : IOffset,}) => ILongPressMoveUpdateDetails
}
};
export interface ILongPressMoveUpdateDetails


{
globalPosition: IOffset;
localPosition: IOffset;
offsetFromOrigin: IOffset;
localOffsetFromOrigin: IOffset;
}export class LongPressMoveUpdateDetails


{    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly offsetFromOrigin: IOffset = undefined as any;
    public readonly localOffsetFromOrigin: IOffset = undefined as any;
public constructor( props : {  globalPosition? : IOffset, localOffsetFromOrigin? : IOffset | undefined, localPosition? : IOffset | undefined, offsetFromOrigin? : IOffset,}){
flutter.gestures.longPressMoveUpdateDetails(this, {
...longPressMoveUpdateDetailsDefaultProps,
...props
});}
}
const longPressMoveUpdateDetailsDefaultProps = {
    globalPosition: Offset.zero,
    offsetFromOrigin: Offset.zero,
};
