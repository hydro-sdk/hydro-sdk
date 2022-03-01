
import { ILocalKey } from "../foundation/localKey";
import { IRouteSettings } from "./routeSettings";
import { IBuildContext } from "./buildContext";
import { IRoute } from "./route";
declare const flutter: {
widgets: {
page: <T>(this: void, page: IPage<T>, props? : {  arguments? : Object | undefined, key? : ILocalKey | undefined, name? : string | undefined, restorationId? : string | undefined,}) => IPage<T>
}
};
export interface IPage
<T>

{
key: ILocalKey | undefined;
restorationId: string | undefined;
name: string | undefined;
arguments: Object | undefined;
canUpdate: (other: IPage<any>) => boolean;
createRoute: (context: IBuildContext) => IRoute<T>;
toString: () => string;
copyWith: ( props? : {  arguments? : Object | undefined, name? : string | undefined,}) => IRouteSettings;
getHashCode: () => number;
}export class Page
<T>
 implements IRouteSettings
{    public readonly key: ILocalKey | undefined = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public readonly arguments: Object | undefined = undefined as any;
public constructor( props? : {  arguments? : Object | undefined, key? : ILocalKey | undefined, name? : string | undefined, restorationId? : string | undefined,}){
flutter.widgets.page(this, props);}
    private readonly _dart_canUpdate: (other: IPage<any>) => boolean = undefined as any;
    private readonly _dart_createRoute: (context: IBuildContext) => IRoute<T> = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_copyWith: ( props? : {  arguments? : Object | undefined, name? : string | undefined,}) => IRouteSettings = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public canUpdate(other: IPage<any>) : boolean {
    return this._dart_canUpdate(other);
}
public createRoute(context: IBuildContext) : IRoute<T> {
    return this._dart_createRoute(context);
}
public toString() : string {
    return this._dart_toString();
}
public copyWith( props? : {  arguments? : Object | undefined, name? : string | undefined,}) : IRouteSettings {
    return this._dart_copyWith(props);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
