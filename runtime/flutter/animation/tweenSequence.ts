
import { IList } from "../../dart/core/list";
import { ITweenSequenceItem } from "./tweenSequenceItem";
import { IAnimatable } from "./animatable";
import { IAnimation } from "./animation";
declare const flutter: {
animation: {
tweenSequence: <T>(this: void, tweenSequence: ITweenSequence<T>, items: IList<ITweenSequenceItem<T>>) => ITweenSequence<T>
}
};
export interface ITweenSequence
<T>

{
transform: (t: number) => T;
toString: () => string;
evaluate: (animation: IAnimation<number>) => T;
animate: (parent: IAnimation<number>) => IAnimation<T>;
chain: (parent: IAnimatable<number>) => IAnimatable<T>;
getHashCode: () => number;
}export class TweenSequence
<T>
 implements IAnimatable<T>
{public constructor(items: IList<ITweenSequenceItem<T>>){
flutter.animation.tweenSequence(this, items);}
    private readonly _dart_transform: (t: number) => T = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => T = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<T> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<T> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
