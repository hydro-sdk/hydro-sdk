
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
tweenSequenceItem: <T>(this: void, tweenSequenceItem: ITweenSequenceItem<T>, props : {  tween : IAnimatable<T>, weight : number,}) => ITweenSequenceItem<T>
}
};
export interface ITweenSequenceItem
<T>

{
tween: IAnimatable<T>;
weight: number;
}export class TweenSequenceItem
<T>

{    public readonly tween: IAnimatable<T> = undefined as any;
    public readonly weight: number = undefined as any;
public constructor( props : {  tween : IAnimatable<T>, weight : number,}){
flutter.animation.tweenSequenceItem(this, props);}
}
