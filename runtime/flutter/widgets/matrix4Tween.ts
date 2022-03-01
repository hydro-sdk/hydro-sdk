
import { IMatrix4 } from "../../vector_math/matrix4";
import { ITween } from "../animation/tween";
import { IAnimation } from "../animation/animation";
import { IAnimatable } from "../animation/animatable";
declare const flutter: {
widgets: {
matrix4Tween: (this: void, matrix4Tween: IMatrix4Tween, props? : {  begin? : IMatrix4 | undefined, end? : IMatrix4 | undefined,}) => IMatrix4Tween
}
};
export interface IMatrix4Tween


{
begin: IMatrix4 | undefined;
end: IMatrix4 | undefined;
lerp: (t: number) => IMatrix4;
transform: (t: number) => IMatrix4;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IMatrix4;
animate: (parent: IAnimation<number>) => IAnimation<IMatrix4>;
chain: (parent: IAnimatable<number>) => IAnimatable<IMatrix4>;
getHashCode: () => number;
}export class Matrix4Tween

 implements ITween<IMatrix4>
{    public readonly begin: IMatrix4 | undefined = undefined as any;
    public readonly end: IMatrix4 | undefined = undefined as any;
public constructor( props? : {  begin? : IMatrix4 | undefined, end? : IMatrix4 | undefined,}){
flutter.widgets.matrix4Tween(this, props);}
    private readonly _dart_lerp: (t: number) => IMatrix4 = undefined as any;
    private readonly _dart_transform: (t: number) => IMatrix4 = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IMatrix4 = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IMatrix4> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IMatrix4> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IMatrix4 {
    return this._dart_lerp(t);
}
public transform(t: number) : IMatrix4 {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IMatrix4 {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IMatrix4> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IMatrix4> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
