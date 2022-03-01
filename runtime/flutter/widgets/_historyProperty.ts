
import { IRestorableProperty } from "./restorableProperty";
import { IMap } from "../../dart/core/map";
import { IList } from "../../dart/core/list";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
import { IListenable } from "../foundation/listenable";
import { I_RouteEntry } from "./_routeEntry";
import { INavigatorState } from "./navigatorState";
declare const flutter: {
widgets: {
_historyProperty: (this: void, _historyProperty: I_HistoryProperty) => I_HistoryProperty
}
};
export interface I_HistoryProperty


{
update: (history: IList<I_RouteEntry>) => void;
clear: () => void;
getHasData: () => boolean;
restoreEntriesForPage: (page: I_RouteEntry | undefined, navigator: INavigatorState) => IList<I_RouteEntry>;
createDefaultValue: () => {[index: string | undefined]: IList<Object>} | undefined;
fromPrimitives: (data?: Object | undefined) => {[index: string | undefined]: IList<Object>} | undefined;
initWithValue: (value?: {[index: string | undefined]: IList<Object>} | undefined) => void;
toPrimitives: () => Object | undefined;
getEnabled: () => boolean;
dispose: () => void;
getState: () => IState<IStatefulWidget>;
getIsRegistered: () => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class _HistoryProperty

 implements IRestorableProperty<IMap<string?,IList<Object>>?>, IListenable
{public constructor(){
flutter.widgets._historyProperty(this);}
    private readonly _dart_update: (history: IList<I_RouteEntry>) => void = undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_getHasData: () => boolean = undefined as any;
    private readonly _dart_restoreEntriesForPage: (page: I_RouteEntry | undefined, navigator: INavigatorState) => IList<I_RouteEntry> = undefined as any;
    private readonly _dart_createDefaultValue: () => {[index: string | undefined]: IList<Object>} | undefined = undefined as any;
    private readonly _dart_fromPrimitives: (data?: Object | undefined) => {[index: string | undefined]: IList<Object>} | undefined = undefined as any;
    private readonly _dart_initWithValue: (value?: {[index: string | undefined]: IList<Object>} | undefined) => void = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getState: () => IState<IStatefulWidget> = undefined as any;
    private readonly _dart_getIsRegistered: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public update(history: IList<I_RouteEntry>) : void {
    return this._dart_update(history);
}
public clear() : void {
    return this._dart_clear();
}
public getHasData() : boolean {
    return this._dart_getHasData();
}
public restoreEntriesForPage(page: I_RouteEntry | undefined, navigator: INavigatorState) : IList<I_RouteEntry> {
    return this._dart_restoreEntriesForPage(page, navigator);
}
public createDefaultValue() : {[index: string | undefined]: IList<Object>} | undefined {
    return this._dart_createDefaultValue();
}
public fromPrimitives(data?: Object | undefined) : {[index: string | undefined]: IList<Object>} | undefined {
    return this._dart_fromPrimitives(data);
}
public initWithValue(value?: {[index: string | undefined]: IList<Object>} | undefined) : void {
    return this._dart_initWithValue(value);
}
public toPrimitives() : Object | undefined {
    return this._dart_toPrimitives();
}
public getEnabled() : boolean {
    return this._dart_getEnabled();
}
public dispose() : void {
    return this._dart_dispose();
}
public getState() : IState<IStatefulWidget> {
    return this._dart_getState();
}
public getIsRegistered() : boolean {
    return this._dart_getIsRegistered();
}
public addListener(listener : () => void) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener : () => void) : void {
    return this._dart_removeListener(listener);
}
public notifyListeners() : void {
    return this._dart_notifyListeners();
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toString() : string {
    return this._dart_toString();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
