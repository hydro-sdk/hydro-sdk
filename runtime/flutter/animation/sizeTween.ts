
import { ISize } from "../../dart/ui/size";
import { ITween } from "./tween";
import { IAnimation } from "./animation";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
sizeTween: (this: void, sizeTween: ISizeTween, props? : {  begin? : ISize | undefined, end? : ISize | undefined,}) => ISizeTween
}
};
export interface ISizeTween


{
begin: ISize | undefined;
end: ISize | undefined;
lerp: (t: number) => ISize | undefined;
transform: (t: number) => ISize | undefined;
toString: () => string;
evaluate: (animation: IAnimation<number>) => ISize | undefined;
animate: (parent: IAnimation<number>) => IAnimation<ISize | undefined>;
chain: (parent: IAnimatable<number>) => IAnimatable<ISize | undefined>;
getHashCode: () => number;
}export class SizeTween

 implements ITween<ISize?>
{    public readonly begin: ISize | undefined = undefined as any;
    public readonly end: ISize | undefined = undefined as any;
public constructor( props? : {  begin? : ISize | undefined, end? : ISize | undefined,}){
flutter.animation.sizeTween(this, props);}
    private readonly _dart_lerp: (t: number) => ISize | undefined = undefined as any;
    private readonly _dart_transform: (t: number) => ISize | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => ISize | undefined = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<ISize | undefined> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<ISize | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : ISize | undefined {
    return this._dart_lerp(t);
}
public transform(t: number) : ISize | undefined {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : ISize | undefined {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<ISize | undefined> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<ISize | undefined> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
