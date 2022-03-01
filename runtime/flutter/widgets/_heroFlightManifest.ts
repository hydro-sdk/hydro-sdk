
import { IRect } from "../../dart/ui/rect";
import { ITween } from "../animation/tween";
import { I_HeroState } from "./_heroState";
import { IPageRoute } from "./pageRoute";
import { ISize } from "../../dart/ui/size";
import { IOverlayState } from "./overlayState";
import { IBuildContext } from "./buildContext";
import { IAnimation } from "../animation/animation";
import { HeroFlightDirection } from "./heroFlightDirection";
import { IWidget } from "./widget";
declare const flutter: {
widgets: {
_heroFlightManifest: (this: void, _heroFlightManifest: I_HeroFlightManifest, props : {  createRectTween? : (begin?: IRect | undefined, end?: IRect | undefined) => ITween<IRect | undefined> | undefined, fromHero : I_HeroState, fromRoute : IPageRoute<any>, isDiverted : boolean, isUserGestureTransition : boolean, navigatorSize : ISize, overlay : IOverlayState, shuttleBuilder : (flightContext: IBuildContext, animation: IAnimation<number>, flightDirection: HeroFlightDirection, fromHeroContext: IBuildContext, toHeroContext: IBuildContext) => IWidget, toHero : I_HeroState, toRoute : IPageRoute<any>, type : HeroFlightDirection,}) => I_HeroFlightManifest
}
};
export interface I_HeroFlightManifest


{
type: HeroFlightDirection;
overlay: IOverlayState;
navigatorSize: ISize;
fromRoute: IPageRoute<any>;
toRoute: IPageRoute<any>;
fromHero: I_HeroState;
toHero: I_HeroState;
isUserGestureTransition: boolean;
isDiverted: boolean;
fromHeroLocation: IRect;
toHeroLocation: IRect;
isValid: boolean;
getTag: () => Object;
getAnimation: () => IAnimation<number>;
createHeroRectTween: ( props? : {  begin? : IRect | undefined, end? : IRect | undefined,}) => ITween<IRect | undefined>;
toString: () => string;
}export class _HeroFlightManifest


{    public readonly type: HeroFlightDirection = undefined as any;
    public readonly overlay: IOverlayState = undefined as any;
    public readonly navigatorSize: ISize = undefined as any;
    public readonly fromRoute: IPageRoute<any> = undefined as any;
    public readonly toRoute: IPageRoute<any> = undefined as any;
    public readonly fromHero: I_HeroState = undefined as any;
    public readonly toHero: I_HeroState = undefined as any;
    public readonly isUserGestureTransition: boolean = undefined as any;
    public readonly isDiverted: boolean = undefined as any;
    public readonly fromHeroLocation: IRect = undefined as any;
    public readonly toHeroLocation: IRect = undefined as any;
    public readonly isValid: boolean = undefined as any;
public constructor( props : {  createRectTween? : (begin?: IRect | undefined, end?: IRect | undefined) => ITween<IRect | undefined> | undefined, fromHero : I_HeroState, fromRoute : IPageRoute<any>, isDiverted : boolean, isUserGestureTransition : boolean, navigatorSize : ISize, overlay : IOverlayState, shuttleBuilder : (flightContext: IBuildContext, animation: IAnimation<number>, flightDirection: HeroFlightDirection, fromHeroContext: IBuildContext, toHeroContext: IBuildContext) => IWidget, toHero : I_HeroState, toRoute : IPageRoute<any>, type : HeroFlightDirection,}){
flutter.widgets._heroFlightManifest(this, props);}
    private readonly _dart_getTag: () => Object = undefined as any;
    private readonly _dart_getAnimation: () => IAnimation<number> = undefined as any;
    private readonly _dart_createHeroRectTween: ( props? : {  begin? : IRect | undefined, end? : IRect | undefined,}) => ITween<IRect | undefined> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getTag() : Object {
    return this._dart_getTag();
}
public getAnimation() : IAnimation<number> {
    return this._dart_getAnimation();
}
public createHeroRectTween( props? : {  begin? : IRect | undefined, end? : IRect | undefined,}) : ITween<IRect | undefined> {
    return this._dart_createHeroRectTween(props);
}
public toString() : string {
    return this._dart_toString();
}
}
