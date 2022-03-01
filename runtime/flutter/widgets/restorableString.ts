
import { I_RestorablePrimitiveValue } from "./_restorablePrimitiveValue";
import { IListenable } from "../foundation/listenable";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
widgets: {
restorableString: (this: void, restorableString: IRestorableString, defaultValue: string) => IRestorableString
}
};
export interface IRestorableString


{
fromPrimitives: (serialized?: Object | undefined) => string;
toPrimitives: () => Object;
setValue: (value: string) => void;
createDefaultValue: () => string;
didUpdateValue: (oldValue?: string | undefined) => void;
initWithValue: (value: string) => void;
getValue: () => string;
dispose: () => void;
getEnabled: () => boolean;
getState: () => IState<IStatefulWidget>;
getIsRegistered: () => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class RestorableString

 implements I_RestorablePrimitiveValue<string>, IListenable
{public constructor(defaultValue: string){
flutter.widgets.restorableString(this, defaultValue);}
    private readonly _dart_fromPrimitives: (serialized?: Object | undefined) => string = undefined as any;
    private readonly _dart_toPrimitives: () => Object = undefined as any;
    private readonly _dart_setValue: (value: string) => void = undefined as any;
    private readonly _dart_createDefaultValue: () => string = undefined as any;
    private readonly _dart_didUpdateValue: (oldValue?: string | undefined) => void = undefined as any;
    private readonly _dart_initWithValue: (value: string) => void = undefined as any;
    private readonly _dart_getValue: () => string = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_getState: () => IState<IStatefulWidget> = undefined as any;
    private readonly _dart_getIsRegistered: () => boolean = undefined as any;
    private readonly _dart_addListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_removeListener: (listener : () => void) => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public fromPrimitives(serialized?: Object | undefined) : string {
    return this._dart_fromPrimitives(serialized);
}
public toPrimitives() : Object {
    return this._dart_toPrimitives();
}
public setValue(value: string) : void {
    return this._dart_setValue(value);
}
public createDefaultValue() : string {
    return this._dart_createDefaultValue();
}
public didUpdateValue(oldValue?: string | undefined) : void {
    return this._dart_didUpdateValue(oldValue);
}
public initWithValue(value: string) : void {
    return this._dart_initWithValue(value);
}
public getValue() : string {
    return this._dart_getValue();
}
public dispose() : void {
    return this._dart_dispose();
}
public getEnabled() : boolean {
    return this._dart_getEnabled();
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
