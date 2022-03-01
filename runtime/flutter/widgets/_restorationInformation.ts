
import { _RouteRestorationType } from "./_routeRestorationType";
import { IBuildContext } from "./buildContext";
import { IRoute } from "./route";
import { IList } from "../../dart/core/list";
import { INavigatorState } from "./navigatorState";
import { _RouteLifecycle } from "./_routeLifecycle";
import { I_RouteEntry } from "./_routeEntry";
declare const flutter: {
widgets: {
_restorationInformation: (this: void, _restorationInformation: I_RestorationInformation, type: _RouteRestorationType) => I_RestorationInformation;
_restorationInformationNamed: ( props : {  arguments? : Object | undefined, name : string, restorationScopeId : number,}) => I_RestorationInformation;
_restorationInformationAnonymous: ( props : {  arguments? : Object | undefined, restorationScopeId : number, routeBuilder : (context: IBuildContext, arguments?: Object | undefined) => IRoute<any>,}) => I_RestorationInformation;
_restorationInformationFromSerializableData: (data: Object) => I_RestorationInformation
}
};
export interface I_RestorationInformation


{
type: _RouteRestorationType;
getRestorationScopeId: () => number;
getIsRestorable: () => boolean;
getSerializableData: () => Object;
computeSerializableData: () => IList<Object>;
createRoute: (navigator: INavigatorState) => IRoute<any>;
toRouteEntry: (navigator: INavigatorState, props : {  initialState : _RouteLifecycle,}) => I_RouteEntry;
}export class _RestorationInformation


{    public readonly type: _RouteRestorationType = undefined as any;
public constructor(type: _RouteRestorationType){
flutter.widgets._restorationInformation(this, type);}
public static named( props : {  arguments? : Object | undefined, name : string, restorationScopeId : number,}) : I_RestorationInformation{
return flutter.widgets._restorationInformationNamed(props);
}public static anonymous( props : {  arguments? : Object | undefined, restorationScopeId : number, routeBuilder : (context: IBuildContext, arguments?: Object | undefined) => IRoute<any>,}) : I_RestorationInformation{
return flutter.widgets._restorationInformationAnonymous(props);
}public static fromSerializableData(data: Object) : I_RestorationInformation{
return flutter.widgets._restorationInformationFromSerializableData(data);
}    private readonly _dart_getRestorationScopeId: () => number = undefined as any;
    private readonly _dart_getIsRestorable: () => boolean = undefined as any;
    private readonly _dart_getSerializableData: () => Object = undefined as any;
    private readonly _dart_computeSerializableData: () => IList<Object> = undefined as any;
    private readonly _dart_createRoute: (navigator: INavigatorState) => IRoute<any> = undefined as any;
    private readonly _dart_toRouteEntry: (navigator: INavigatorState, props : {  initialState : _RouteLifecycle,}) => I_RouteEntry = undefined as any;
public getRestorationScopeId() : number {
    return this._dart_getRestorationScopeId();
}
public getIsRestorable() : boolean {
    return this._dart_getIsRestorable();
}
public getSerializableData() : Object {
    return this._dart_getSerializableData();
}
public computeSerializableData() : IList<Object> {
    return this._dart_computeSerializableData();
}
public createRoute(navigator: INavigatorState) : IRoute<any> {
    return this._dart_createRoute(navigator);
}
public toRouteEntry(navigator: INavigatorState, props : {  initialState? : _RouteLifecycle,}) : I_RouteEntry {
    return this._dart_toRouteEntry(navigator, {
...toRouteEntryDefaultProps,
...props
});
}
}
const toRouteEntryDefaultProps = {
    initialState: _RouteLifecycle.add,
};
