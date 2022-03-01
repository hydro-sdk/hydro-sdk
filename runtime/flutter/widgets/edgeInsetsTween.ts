
import { IEdgeInsets } from "../painting/edgeInsets";
import { ITween } from "../animation/tween";
import { IAnimation } from "../animation/animation";
import { IAnimatable } from "../animation/animatable";
declare const flutter: {
widgets: {
edgeInsetsTween: (this: void, edgeInsetsTween: IEdgeInsetsTween, props? : {  begin? : IEdgeInsets | undefined, end? : IEdgeInsets | undefined,}) => IEdgeInsetsTween
}
};
export interface IEdgeInsetsTween


{
begin: IEdgeInsets | undefined;
end: IEdgeInsets | undefined;
lerp: (t: number) => IEdgeInsets;
transform: (t: number) => IEdgeInsets;
toString: () => string;
evaluate: (animation: IAnimation<number>) => IEdgeInsets;
animate: (parent: IAnimation<number>) => IAnimation<IEdgeInsets>;
chain: (parent: IAnimatable<number>) => IAnimatable<IEdgeInsets>;
getHashCode: () => number;
}export class EdgeInsetsTween

 implements ITween<IEdgeInsets>
{    public readonly begin: IEdgeInsets | undefined = undefined as any;
    public readonly end: IEdgeInsets | undefined = undefined as any;
public constructor( props? : {  begin? : IEdgeInsets | undefined, end? : IEdgeInsets | undefined,}){
flutter.widgets.edgeInsetsTween(this, props);}
    private readonly _dart_lerp: (t: number) => IEdgeInsets = undefined as any;
    private readonly _dart_transform: (t: number) => IEdgeInsets = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_evaluate: (animation: IAnimation<number>) => IEdgeInsets = undefined as any;
    private readonly _dart_animate: (parent: IAnimation<number>) => IAnimation<IEdgeInsets> = undefined as any;
    private readonly _dart_chain: (parent: IAnimatable<number>) => IAnimatable<IEdgeInsets> = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public lerp(t: number) : IEdgeInsets {
    return this._dart_lerp(t);
}
public transform(t: number) : IEdgeInsets {
    return this._dart_transform(t);
}
public toString() : string {
    return this._dart_toString();
}
public evaluate(animation: IAnimation<number>) : IEdgeInsets {
    return this._dart_evaluate(animation);
}
public animate(parent: IAnimation<number>) : IAnimation<IEdgeInsets> {
    return this._dart_animate(parent);
}
public chain(parent: IAnimatable<number>) : IAnimatable<IEdgeInsets> {
    return this._dart_chain(parent);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
