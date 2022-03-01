
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { ITween } from "../animation/tween";
import { IAnimation } from "../animation/animation";
import { IAnimatable } from "../animation/animatable";
declare const flutter: {
rendering: {
alignmentGeometryTween: (this: void, alignmentGeometryTween: IAlignmentGeometryTween, props? : {  begin? : IAlignmentGeometry | undefined, end? : IAlignmentGeometry | undefined,}) => IAlignmentGeometryTween
}
};
export interface IAlignmentGeometryTween


{
begin: IAlignmentGeometry | undefined;
end: IAlignmentGeometry | undefined;
lerp: (t: number) => IAlignmentGeometry | undefined;
transform: (t: number) => IAlignmentGeometry | undefined;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IAlignmentGeometry | undefined;
animate: (parent: IAnimation<number>) => IAnimation<IAlignmentGeometry | undefined>;
chain: (parent: IAnimatable<number>) => IAnimatable<IAlignmentGeometry | undefined>;
getHashCode: () => number;
}export class AlignmentGeometryTween

 implements ITween<IAlignmentGeometry?>
{    public readonly begin: IAlignmentGeometry | undefined = undefined as any;
    public readonly end: IAlignmentGeometry | undefined = undefined as any;
public constructor( props? : {  begin? : IAlignmentGeometry | undefined, end? : IAlignmentGeometry | undefined,}){
flutter.rendering.alignmentGeometryTween(this, props);}
    private readonly _dart_lerp: (t: number) => IAlignmentGeometry | undefined = undefined as any;
    private readonly _dart_transform: (t: number) => IAlignmentGeometry | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IAlignmentGeometry | undefined = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IAlignmentGeometry | undefined> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IAlignmentGeometry | undefined> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IAlignmentGeometry | undefined {
    return this._dart_lerp(t);
}
public transform(t: number) : IAlignmentGeometry | undefined {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IAlignmentGeometry | undefined {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IAlignmentGeometry | undefined> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IAlignmentGeometry | undefined> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
