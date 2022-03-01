
import { IDateTime } from "../../dart/core/dateTime";
import { IRestorableValue } from "./restorableValue";
import { IListenable } from "../foundation/listenable";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
widgets: {
restorableDateTimeN: (this: void, restorableDateTimeN: IRestorableDateTimeN, defaultValue?: IDateTime | undefined) => IRestorableDateTimeN
}
};
export interface IRestorableDateTimeN


{
createDefaultValue: () => IDateTime | undefined;
didUpdateValue: (oldValue?: IDateTime | undefined) => void;
fromPrimitives: (data?: Object | undefined) => IDateTime | undefined;
toPrimitives: () => Object | undefined;
initWithValue: (value?: IDateTime | undefined) => void;
getValue: () => IDateTime | undefined;
setValue: (newValue?: IDateTime | undefined) => void;
dispose: () => void;
getEnabled: () => boolean;
getState: () => IState<IStatefulWidget>;
getIsRegistered: () => boolean;
addListener: (listener : () => void) => void;
removeListener: (listener : () => void) => void;
getHasListeners: () => boolean;
toString: () => string;
getHashCode: () => number;
}export class RestorableDateTimeN

 implements IRestorableValue<IDateTime?>, IListenable
{public constructor(defaultValue?: IDateTime | undefined){
flutter.widgets.restorableDateTimeN(this, defaultValue);}
    private readonly _dart_createDefaultValue: () => IDateTime | undefined = undefined as any;
    private readonly _dart_didUpdateValue: (oldValue?: IDateTime | undefined) => void = undefined as any;
    private readonly _dart_fromPrimitives: (data?: Object | undefined) => IDateTime | undefined = undefined as any;
    private readonly _dart_toPrimitives: () => Object | undefined = undefined as any;
    private readonly _dart_initWithValue: (value?: IDateTime | undefined) => void = undefined as any;
    private readonly _dart_getValue: () => IDateTime | undefined = undefined as any;
    private readonly _dart_setValue: (newValue?: IDateTime | undefined) => void = undefined as any;
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
public createDefaultValue() : IDateTime | undefined {
    return this._dart_createDefaultValue();
}
public didUpdateValue(oldValue?: IDateTime | undefined) : void {
    return this._dart_didUpdateValue(oldValue);
}
public fromPrimitives(data?: Object | undefined) : IDateTime | undefined {
    return this._dart_fromPrimitives(data);
}
public toPrimitives() : Object | undefined {
    return this._dart_toPrimitives();
}
public initWithValue(value?: IDateTime | undefined) : void {
    return this._dart_initWithValue(value);
}
public getValue() : IDateTime | undefined {
    return this._dart_getValue();
}
public setValue(newValue?: IDateTime | undefined) : void {
    return this._dart_setValue(newValue);
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
