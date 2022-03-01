
import { IOffset,Offset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDuration } from "../../dart/core/duration";
declare const flutter: {
gestures: {
dragStartDetails: (this: void, dragStartDetails: IDragStartDetails, props : {  globalPosition : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined, sourceTimeStamp? : IDuration | undefined,}) => IDragStartDetails
}
};
export interface IDragStartDetails


{
sourceTimeStamp: IDuration | undefined;
globalPosition: IOffset;
localPosition: IOffset;
kind: PointerDeviceKind | undefined;
toString: () => string;
}export class DragStartDetails


{    public readonly sourceTimeStamp: IDuration | undefined = undefined as any;
    public readonly globalPosition: IOffset = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind | undefined = undefined as any;
public constructor( props : {  globalPosition? : IOffset, kind? : PointerDeviceKind | undefined, localPosition? : IOffset | undefined, sourceTimeStamp? : IDuration | undefined,}){
flutter.gestures.dragStartDetails(this, {
...dragStartDetailsDefaultProps,
...props
});}
    private readonly _dart_toString: () => string = undefined as any;
public toString() : string {
    return this._dart_toString();
}
}
const dragStartDetailsDefaultProps = {
    globalPosition: Offset.zero,
};
