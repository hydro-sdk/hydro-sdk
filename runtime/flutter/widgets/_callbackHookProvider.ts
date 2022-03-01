
declare const flutter: {
widgets: {
_callbackHookProvider: <T>(this: void, _callbackHookProvider: I_CallbackHookProvider<T>) => I_CallbackHookProvider<T>
}
};
export interface I_CallbackHookProvider
<T>

{
getHasCallbacks: () => boolean;
addCallback: (callback : () => T) => void;
removeCallback: (callback : () => T) => void;
invokeCallback: (defaultValue: T) => T;
}export class _CallbackHookProvider
<T>

{public constructor(){
flutter.widgets._callbackHookProvider(this);}
    private readonly _dart_getHasCallbacks: () => boolean = undefined as any;
    private readonly _dart_addCallback: (callback : () => T) => void = undefined as any;
    private readonly _dart_removeCallback: (callback : () => T) => void = undefined as any;
    private readonly _dart_invokeCallback: (defaultValue: T) => T = undefined as any;
public getHasCallbacks() : boolean {
    return this._dart_getHasCallbacks();
}
public addCallback(callback : () => T) : void {
    return this._dart_addCallback(callback);
}
public removeCallback(callback : () => T) : void {
    return this._dart_removeCallback(callback);
}
public invokeCallback(defaultValue: T) : T {
    return this._dart_invokeCallback(defaultValue);
}
}
