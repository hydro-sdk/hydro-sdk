
import { IBorderRadius } from "../painting/borderRadius";
import { ITween } from "../animation/tween";
import { IAnimation } from "../animation/animation";
import { IAnimatable } from "../animation/animatable";
declare const flutter: {
widgets: {
borderRadiusTween: (this: void, borderRadiusTween: IBorderRadiusTween, props? : {  begin? : IBorderRadius | undefined, end? : IBorderRadius | undefined,}) => IBorderRadiusTween
}
};
export interface IBorderRadiusTween


{
begin: IBorderRadius | undefined;
end: IBorderRadius | undefined;
lerp: (t: number) => IBorderRadius | undefined;
transform: (t: number) => IBorderRadius | undefined;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IBorderRadius | undefined;
animate: (parent: IAnimation<number>) => IAnimation<IBorderRadius | undefined>;
chain: (parent: IAnimatable<number>) => IAnimatable<IBorderRadius | undefined>;
getHashCode: () => number;
}export class BorderRadiusTween

 implements ITween<IBorderRadius?>
{    public readonly begin: IBorderRadius | undefined = undefined as any;
    public readonly end: IBorderRadius | undefined = undefined as any;
public constructor( props? : {  begin? : IBorderRadius | undefined, end? : IBorderRadius | undefined,}){
flutter.widgets.borderRadiusTween(this, props);}
    private readonly _dart_lerp: (t: number) => IBorderRadius | undefined = undefined as any;
    private readonly _dart_transform: (t: number) => IBorderRadius | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IBorderRadius | undefined = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IBorderRadius | undefined> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IBorderRadius | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IBorderRadius | undefined {
    return this._dart_lerp(t);
}
public transform(t: number) : IBorderRadius | undefined {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IBorderRadius | undefined {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IBorderRadius | undefined> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IBorderRadius | undefined> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
