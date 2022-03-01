
import { IRect } from "../../dart/ui/rect";
import { ITween } from "../animation/tween";
import { INavigatorObserver } from "./navigatorObserver";
import { IRoute } from "./route";
import { INavigatorState } from "./navigatorState";
declare const flutter: {
widgets: {
heroController: (this: void, heroController: IHeroController, props? : {  createRectTween? : (begin?: IRect | undefined, end?: IRect | undefined) => ITween<IRect | undefined> | undefined,}) => IHeroController
}
};
export interface IHeroController


{
didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void;
didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didStopUserGesture: () => void;
didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
getNavigator: () => INavigatorState | undefined;
toString: () => string;
getHashCode: () => number;
}export class HeroController

 implements INavigatorObserver
{public constructor( props? : {  createRectTween? : (begin?: IRect | undefined, end?: IRect | undefined) => ITween<IRect | undefined> | undefined,}){
flutter.widgets.heroController(this, props);}
    private readonly _dart_didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void = undefined as any;
    private readonly _dart_didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didStopUserGesture: () => void = undefined as any;
    private readonly _dart_didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public didPush(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPush(route, previousRoute);
}
public didPop(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPop(route, previousRoute);
}
public didReplace( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) : void {
    return this._dart_didReplace(props);
}
public didStartUserGesture(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didStartUserGesture(route, previousRoute);
}
public didStopUserGesture() : void {
    return this._dart_didStopUserGesture();
}
public didRemove(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didRemove(route, previousRoute);
}
public getNavigator() : INavigatorState | undefined {
    return this._dart_getNavigator();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
