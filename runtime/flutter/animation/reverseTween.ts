
import { ITween } from "./tween";
import { IAnimation } from "./animation";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
reverseTween: <T>(this: void, reverseTween: IReverseTween<T>, parent: ITween<T>) => IReverseTween<T>
}
};
export interface IReverseTween
<T>

{
parent: ITween<T>;
begin: T | undefined;
end: T | undefined;
lerp: (t: number) => T;
transform: (t: number) => T;
toString: () => string;
evaluate: (animation: IAnimation<number>) => T;
animate: (parent: IAnimation<number>) => IAnimation<T>;
chain: (parent: IAnimatable<number>) => IAnimatable<T>;
getHashCode: () => number;
}export class ReverseTween
<T>
 implements ITween<T>
{    public readonly parent: ITween<T> = undefined as any;
    public readonly begin: T | undefined = undefined as any;
    public readonly end: T | undefined = undefined as any;
public constructor(parent: ITween<T>){
flutter.animation.reverseTween(this, parent);}
    private readonly _dart_lerp: (t: number) => T = undefined as any;
    private readonly _dart_transform: (t: number) => T = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => T = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<T> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<T> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : T {
    return this._dart_lerp(t);
}
public transform(t: number) : T {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : T {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<T> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<T> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
