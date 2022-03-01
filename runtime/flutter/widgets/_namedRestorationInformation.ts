
import { I_RestorationInformation } from "./_restorationInformation";
import { IList } from "../../dart/core/list";
import { INavigatorState } from "./navigatorState";
import { IRoute } from "./route";
import { _RouteLifecycle } from "./_routeLifecycle";
import { I_RouteEntry } from "./_routeEntry";
import { _RouteRestorationType } from "./_routeRestorationType";
declare const flutter: {
widgets: {
_namedRestorationInformation: (this: void, _namedRestorationInformation: I_NamedRestorationInformation, props : {  arguments? : Object | undefined, name : string, restorationScopeId : number,}) => I_NamedRestorationInformation;
_namedRestorationInformationFromSerializableData: (data: IList<Object | undefined>) => I_NamedRestorationInformation
}
};
export interface I_NamedRestorationInformation


{
restorationScopeId: number;
name: string;
arguments: Object | undefined;
type: _RouteRestorationType;
computeSerializableData: () => IList<Object>;
createRoute: (navigator: INavigatorState) => IRoute<any>;
getSerializableData: () => Object;
toRouteEntry: (navigator: INavigatorState, props : {  initialState : _RouteLifecycle,}) => I_RouteEntry;
getRestorationScopeId: () => number;
getIsRestorable: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _NamedRestorationInformation

 implements I_RestorationInformation
{    public readonly restorationScopeId: number = undefined as any;
    public readonly name: string = undefined as any;
    public readonly arguments: Object | undefined = undefined as any;
    public readonly type: _RouteRestorationType = undefined as any;
public constructor( props : {  arguments? : Object | undefined, name : string, restorationScopeId : number,}){
flutter.widgets._namedRestorationInformation(this, props);}
public static fromSerializableData(data: IList<Object | undefined>) : I_NamedRestorationInformation{
return flutter.widgets._namedRestorationInformationFromSerializableData(data);
}    private readonly _dart_computeSerializableData: () => IList<Object> = undefined as any;
    private readonly _dart_createRoute: (navigator: INavigatorState) => IRoute<any> = undefined as any;
    private readonly _dart_getSerializableData: () => Object = undefined as any;
    private readonly _dart_toRouteEntry: (navigator: INavigatorState, props : {  initialState : _RouteLifecycle,}) => I_RouteEntry = undefined as any;
    private readonly _dart_getRestorationScopeId: () => number = undefined as any;
    private readonly _dart_getIsRestorable: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public computeSerializableData() : IList<Object> {
    return this._dart_computeSerializableData();
}
public createRoute(navigator: INavigatorState) : IRoute<any> {
    return this._dart_createRoute(navigator);
}
public getSerializableData() : Object {
    return this._dart_getSerializableData();
}
public toRouteEntry(navigator: INavigatorState, props : {  initialState? : _RouteLifecycle,}) : I_RouteEntry {
    return this._dart_toRouteEntry(navigator, {
...toRouteEntryDefaultProps,
...props
});
}
public getRestorationScopeId() : number {
    return this._dart_getRestorationScopeId();
}
public getIsRestorable() : boolean {
    return this._dart_getIsRestorable();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toRouteEntryDefaultProps = {
    initialState: _RouteLifecycle.add,
};
