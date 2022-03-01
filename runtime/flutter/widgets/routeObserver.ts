
import { IRoute } from "./route";
import { INavigatorObserver } from "./navigatorObserver";
import { INavigatorState } from "./navigatorState";
import { IRouteAware } from "./routeAware";
declare const flutter: {
widgets: {
routeObserver: <R>(this: void, routeObserver: IRouteObserver<R>) => IRouteObserver<R>
}
};
export interface IRouteObserver
<R>

{
subscribe: (routeAware: IRouteAware, route: R) => void;
unsubscribe: (routeAware: IRouteAware) => void;
didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void;
didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didStopUserGesture: () => void;
getNavigator: () => INavigatorState | undefined;
toString: () => string;
getHashCode: () => number;
}export class RouteObserver
<R>
 implements INavigatorObserver
{public constructor(){
flutter.widgets.routeObserver(this);}
    private readonly _dart_subscribe: (routeAware: IRouteAware, route: R) => void = undefined as any;
    private readonly _dart_unsubscribe: (routeAware: IRouteAware) => void = undefined as any;
    private readonly _dart_didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void = undefined as any;
    private readonly _dart_didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didStopUserGesture: () => void = undefined as any;
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public subscribe(routeAware: IRouteAware, route: R) : void {
    return this._dart_subscribe(routeAware, route);
}
public unsubscribe(routeAware: IRouteAware) : void {
    return this._dart_unsubscribe(routeAware);
}
public didPop(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPop(route, previousRoute);
}
public didPush(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPush(route, previousRoute);
}
public didRemove(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didRemove(route, previousRoute);
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
