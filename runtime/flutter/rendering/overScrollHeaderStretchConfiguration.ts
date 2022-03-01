
import { IFuture } from "../../dart/async/future";
declare const flutter: {
rendering: {
overScrollHeaderStretchConfiguration: (this: void, overScrollHeaderStretchConfiguration: IOverScrollHeaderStretchConfiguration, props : {  onStretchTrigger? : () => IFuture<void> | undefined, stretchTriggerOffset : number,}) => IOverScrollHeaderStretchConfiguration
}
};
export interface IOverScrollHeaderStretchConfiguration


{
stretchTriggerOffset: number;
}export class OverScrollHeaderStretchConfiguration


{    public readonly stretchTriggerOffset: number = undefined as any;
public constructor( props : {  onStretchTrigger? : () => IFuture<void> | undefined, stretchTriggerOffset? : number,}){
flutter.rendering.overScrollHeaderStretchConfiguration(this, {
...overScrollHeaderStretchConfigurationDefaultProps,
...props
});}
}
const overScrollHeaderStretchConfigurationDefaultProps = {
    stretchTriggerOffset: 100.0,
};
