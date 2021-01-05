declare const dart: {
    ui: {
        callbackHandleFromRawHandle: (_handle: number) => ICallbackHandle;
    };
};
export interface ICallbackHandle {
    toRawHandle: () => number;
    getHashCode: () => number;
}
export class CallbackHandle {
    public static fromRawHandle(_handle: number): ICallbackHandle {
        return dart.ui.callbackHandleFromRawHandle(_handle);
    }
    private readonly _dart_toRawHandle: () => number = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toRawHandle(): number {
        return this._dart_toRawHandle();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
