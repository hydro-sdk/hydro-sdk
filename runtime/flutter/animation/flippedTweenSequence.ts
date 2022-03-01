
import { IList } from "../../dart/core/list";
import { ITweenSequenceItem } from "./tweenSequenceItem";
import { ITweenSequence } from "./tweenSequence";
import { IAnimation } from "./animation";
import { IAnimatable } from "./animatable";
declare const flutter: {
animation: {
flippedTweenSequence: (this: void, flippedTweenSequence: IFlippedTweenSequence, items: IList<ITweenSequenceItem<number>>) => IFlippedTweenSequence
}
};
export interface IFlippedTweenSequence


{
transform: (t: number) => number;
toString: () => string;
evaluate: (animation: IAnimation<number>) => number;
animate: (parent: IAnimation<number>) => IAnimation<number>;
chain: (parent: IAnimatable<number>) => IAnimatable<number>;
getHashCode: () => number;
}export class FlippedTweenSequence

 implements ITweenSequence<number>
{public constructor(items: IList<ITweenSequenceItem<number>>){
flutter.animation.flippedTweenSequence(this, items);}
    private readonly _dart_transform: (t: number) => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => number = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<number> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<number> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public transform(t: number) : number {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : number {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<number> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<number> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
