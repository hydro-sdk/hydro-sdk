
import { DismissDirection } from "./dismissDirection";
declare const flutter: {
widgets: {
dismissUpdateDetails: (this: void, dismissUpdateDetails: IDismissUpdateDetails, props : {  direction : DismissDirection, previousReached : boolean, reached : boolean,}) => IDismissUpdateDetails
}
};
export interface IDismissUpdateDetails


{
direction: DismissDirection;
reached: boolean;
previousReached: boolean;
}export class DismissUpdateDetails


{    public readonly direction: DismissDirection = undefined as any;
    public readonly reached: boolean = undefined as any;
    public readonly previousReached: boolean = undefined as any;
public constructor( props : {  direction? : DismissDirection, previousReached? : boolean, reached? : boolean,}){
flutter.widgets.dismissUpdateDetails(this, {
...dismissUpdateDetailsDefaultProps,
...props
});}
}
const dismissUpdateDetailsDefaultProps = {
    direction: DismissDirection.horizontal,
    previousReached: false,
    reached: false,
};
