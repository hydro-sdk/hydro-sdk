
import { IIterable } from "../../dart/core/iterable";
import { IPointerData } from "../../dart/ui/pointerData";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
gestures: {
pointerEventConverterExpand: (data: IIterable<IPointerData>, devicePixelRatio: number) => IIterable<IPointerEvent>
}
};
export interface IPointerEventConverter


{
}export class PointerEventConverter


{public static expand(data: IIterable<IPointerData>, devicePixelRatio: number) : IIterable<IPointerEvent>{
return flutter.gestures.pointerEventConverterExpand(data, devicePixelRatio);
}}
