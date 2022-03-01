
import { IAnimation } from "./animation";
declare const flutter: {
animation: {
animatable: <T>(this: void, animatable: IAnimatable<T>) => IAnimatable<T>
}
};
export interface IAnimatable
<T>

{
transform: (t: number) => T;
evaluate: (animation: IAnimation<number>) => T;
animate: (parent: IAnimation<number>) => IAnimation<T>;
chain: (parent: IAnimatable<number>) => IAnimatable<T>;
}export class Animatable
<T>

{public constructor(){
flutter.animation.animatable(this);}
    private readonly _dart_transform: (t: number) => T = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => T = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<T> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<T> = undefined as any;
public transform(t: number) : T {
    return this._dart_transform(t);
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
}
