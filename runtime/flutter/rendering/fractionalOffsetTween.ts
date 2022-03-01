
import { IFractionalOffset } from "../painting/fractionalOffset";
import { ITween } from "../animation/tween";
import { IAnimation } from "../animation/animation";
import { IAnimatable } from "../animation/animatable";
declare const flutter: {
rendering: {
fractionalOffsetTween: (this: void, fractionalOffsetTween: IFractionalOffsetTween, props? : {  begin? : IFractionalOffset | undefined, end? : IFractionalOffset | undefined,}) => IFractionalOffsetTween
}
};
export interface IFractionalOffsetTween


{
begin: IFractionalOffset | undefined;
end: IFractionalOffset | undefined;
lerp: (t: number) => IFractionalOffset | undefined;
transform: (t: number) => IFractionalOffset | undefined;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IFractionalOffset | undefined;
animate: (parent: IAnimation<number>) => IAnimation<IFractionalOffset | undefined>;
chain: (parent: IAnimatable<number>) => IAnimatable<IFractionalOffset | undefined>;
getHashCode: () => number;
}export class FractionalOffsetTween

 implements ITween<IFractionalOffset?>
{    public readonly begin: IFractionalOffset | undefined = undefined as any;
    public readonly end: IFractionalOffset | undefined = undefined as any;
public constructor( props? : {  begin? : IFractionalOffset | undefined, end? : IFractionalOffset | undefined,}){
flutter.rendering.fractionalOffsetTween(this, props);}
    private readonly _dart_lerp: (t: number) => IFractionalOffset | undefined = undefined as any;
    private readonly _dart_transform: (t: number) => IFractionalOffset | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IFractionalOffset | undefined = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IFractionalOffset | undefined> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IFractionalOffset | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IFractionalOffset | undefined {
    return this._dart_lerp(t);
}
public transform(t: number) : IFractionalOffset | undefined {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IFractionalOffset | undefined {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IFractionalOffset | undefined> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IFractionalOffset | undefined> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
