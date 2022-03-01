
declare const flutter: {
widgets: {
routeSettings: (this: void, routeSettings: IRouteSettings, props? : {  arguments? : Object | undefined, name? : string | undefined,}) => IRouteSettings
}
};
export interface IRouteSettings


{
name: string | undefined;
arguments: Object | undefined;
copyWith: ( props? : {  arguments? : Object | undefined, name? : string | undefined,}) => IRouteSettings;
toString: () => string;
}export class RouteSettings


{    public readonly name: string | undefined = undefined as any;
    public readonly arguments: Object | undefined = undefined as any;
public constructor( props? : {  arguments? : Object | undefined, name? : string | undefined,}){
flutter.widgets.routeSettings(this, props);}
    private readonly _dart_copyWith: ( props? : {  arguments? : Object | undefined, name? : string | undefined,}) => IRouteSettings = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public copyWith( props? : {  arguments? : Object | undefined, name? : string | undefined,}) : IRouteSettings {
    return this._dart_copyWith(props);
}
public toString() : string {
    return this._dart_toString();
}
}
