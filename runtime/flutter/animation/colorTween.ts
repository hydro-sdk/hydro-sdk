
import { IColor } from "../../dart/ui/color";
import { ITween } from "./tween";
import { IAnimation } from "./animation";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
colorTween: (this: void, colorTween: IColorTween, props? : {  begin? : IColor | undefined, end? : IColor | undefined,}) => IColorTween
}
};
export interface IColorTween


{
begin: IColor | undefined;
end: IColor | undefined;
lerp: (t: number) => IColor | undefined;
transform: (t: number) => IColor | undefined;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IColor | undefined;
animate: (parent: IAnimation<number>) => IAnimation<IColor | undefined>;
chain: (parent: IAnimatable<number>) => IAnimatable<IColor | undefined>;
getHashCode: () => number;
}export class ColorTween

 implements ITween<IColor?>
{    public readonly begin: IColor | undefined = undefined as any;
    public readonly end: IColor | undefined = undefined as any;
public constructor( props? : {  begin? : IColor | undefined, end? : IColor | undefined,}){
flutter.animation.colorTween(this, props);}
    private readonly _dart_lerp: (t: number) => IColor | undefined = undefined as any;
    private readonly _dart_transform: (t: number) => IColor | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IColor | undefined = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IColor | undefined> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IColor | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IColor | undefined {
    return this._dart_lerp(t);
}
public transform(t: number) : IColor | undefined {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IColor | undefined {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IColor | undefined> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IColor | undefined> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
