import { IFuture } from "../../dart/async/future";
import { I_CallbackHookProvider } from "./_callbackHookProvider";
import { IChildBackButtonDispatcher } from "./childBackButtonDispatcher";
declare const flutter: {
    widgets: {
        backButtonDispatcher: (
            this: void,
            backButtonDispatcher: IBackButtonDispatcher
        ) => IBackButtonDispatcher;
    };
};
export interface IBackButtonDispatcher {
    getHasCallbacks: () => boolean;
    invokeCallback: (defaultValue: IFuture<boolean>) => IFuture<boolean>;
    createChildBackButtonDispatcher: () => IChildBackButtonDispatcher;
    takePriority: () => void;
    deferTo: (child: IChildBackButtonDispatcher) => void;
    forget: (child: IChildBackButtonDispatcher) => void;
    addCallback: (callback: () => IFuture<boolean>) => void;
    removeCallback: (callback: () => IFuture<boolean>) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class BackButtonDispatcher
    implements I_CallbackHookProvider<IFuture<boolean>>
{
    public constructor() {
        flutter.widgets.backButtonDispatcher(this);
    }
    private readonly _dart_getHasCallbacks: () => boolean = undefined as any;
    private readonly _dart_invokeCallback: (
        defaultValue: IFuture<boolean>
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_createChildBackButtonDispatcher: () => IChildBackButtonDispatcher =
        undefined as any;
    private readonly _dart_takePriority: () => void = undefined as any;
    private readonly _dart_deferTo: (
        child: IChildBackButtonDispatcher
    ) => void = undefined as any;
    private readonly _dart_forget: (child: IChildBackButtonDispatcher) => void =
        undefined as any;
    private readonly _dart_addCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_removeCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHasCallbacks(): boolean {
        return this._dart_getHasCallbacks();
    }
    public invokeCallback(defaultValue: IFuture<boolean>): IFuture<boolean> {
        return this._dart_invokeCallback(defaultValue);
    }
    public createChildBackButtonDispatcher(): IChildBackButtonDispatcher {
        return this._dart_createChildBackButtonDispatcher();
    }
    public takePriority(): void {
        return this._dart_takePriority();
    }
    public deferTo(child: IChildBackButtonDispatcher): void {
        return this._dart_deferTo(child);
    }
    public forget(child: IChildBackButtonDispatcher): void {
        return this._dart_forget(child);
    }
    public addCallback(callback: () => IFuture<boolean>): void {
        return this._dart_addCallback(callback);
    }
    public removeCallback(callback: () => IFuture<boolean>): void {
        return this._dart_removeCallback(callback);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
