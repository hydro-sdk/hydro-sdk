
import { INavigatorState } from "./navigatorState";
import { IRoute } from "./route";
declare const flutter: {
widgets: {
navigatorObserver: (this: void, navigatorObserver: INavigatorObserver) => INavigatorObserver
}
};
export interface INavigatorObserver


{
getNavigator: () => INavigatorState | undefined;
didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void;
didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void;
didStopUserGesture: () => void;
}export class NavigatorObserver


{public constructor(){
flutter.widgets.navigatorObserver(this);}
    private readonly _dart_getNavigator: () => INavigatorState | undefined = undefined as any;
    private readonly _dart_didPush: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didPop: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didRemove: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didReplace: ( props? : {  newRoute? : IRoute<any> | undefined, oldRoute? : IRoute<any> | undefined,}) => void = undefined as any;
    private readonly _dart_didStartUserGesture: (route: IRoute<any>, previousRoute?: IRoute<any> | undefined) => void = undefined as any;
    private readonly _dart_didStopUserGesture: () => void = undefined as any;
public getNavigator() : INavigatorState | undefined {
    return this._dart_getNavigator();
}
public didPush(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPush(route, previousRoute);
}
public didPop(route: IRoute<any>, previousRoute?: IRoute<any> | undefined) : void {
    return this._dart_didPop(route, previousRoute);
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
}
