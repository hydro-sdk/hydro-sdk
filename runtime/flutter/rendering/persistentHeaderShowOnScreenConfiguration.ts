
import { double } from "../../dart/core/double";
declare const flutter: {
rendering: {
persistentHeaderShowOnScreenConfiguration: (this: void, persistentHeaderShowOnScreenConfiguration: IPersistentHeaderShowOnScreenConfiguration, props : {  maxShowOnScreenExtent : number, minShowOnScreenExtent : number,}) => IPersistentHeaderShowOnScreenConfiguration
}
};
export interface IPersistentHeaderShowOnScreenConfiguration


{
minShowOnScreenExtent: number;
maxShowOnScreenExtent: number;
}export class PersistentHeaderShowOnScreenConfiguration


{    public readonly minShowOnScreenExtent: number = undefined as any;
    public readonly maxShowOnScreenExtent: number = undefined as any;
public constructor( props : {  maxShowOnScreenExtent? : number, minShowOnScreenExtent? : number,}){
flutter.rendering.persistentHeaderShowOnScreenConfiguration(this, {
...persistentHeaderShowOnScreenConfigurationDefaultProps,
...props
});}
}
const persistentHeaderShowOnScreenConfigurationDefaultProps = {
    maxShowOnScreenExtent: double.infinity,
    minShowOnScreenExtent: double.negativeInfinity,
};
