
import { IOffset } from "../../dart/ui/offset";
import { IVelocity } from "../gestures/velocity";
declare const flutter: {
widgets: {
draggableDetails: (this: void, draggableDetails: IDraggableDetails, props : {  wasAccepted : boolean, offset : IOffset, velocity : IVelocity,}) => IDraggableDetails
}
};
export interface IDraggableDetails


{
wasAccepted: boolean;
velocity: IVelocity;
offset: IOffset;
}export class DraggableDetails


{    public readonly wasAccepted: boolean = undefined as any;
    public readonly velocity: IVelocity = undefined as any;
    public readonly offset: IOffset = undefined as any;
public constructor( props : {  wasAccepted? : boolean, offset : IOffset, velocity : IVelocity,}){
flutter.widgets.draggableDetails(this, {
...draggableDetailsDefaultProps,
...props
});}
}
const draggableDetailsDefaultProps = {
    wasAccepted: false,
};
