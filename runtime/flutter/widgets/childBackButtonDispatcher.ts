import { IFuture } from "../../dart/async/future";
import { IBackButtonDispatcher } from "./backButtonDispatcher";
declare const flutter: {
    widgets: {
        childBackButtonDispatcher: (
            this: void,
            childBackButtonDispatcher: IChildBackButtonDispatcher,
            parent: IBackButtonDispatcher
        ) => IChildBackButtonDispatcher;
    };
};
export interface IChildBackButtonDispatcher {
    parent: IBackButtonDispatcher;
    notifiedByParent: (defaultValue: IFuture<boolean>) => IFuture<boolean>;
    takePriority: () => void;
    deferTo: (child: IChildBackButtonDispatcher) => void;
    removeCallback: (callback: () => IFuture<boolean>) => void;
    invokeCallback: (defaultValue: IFuture<boolean>) => IFuture<boolean>;
    createChildBackButtonDispatcher: () => IChildBackButtonDispatcher;
    forget: (child: IChildBackButtonDispatcher) => void;
    getHasCallbacks: () => boolean;
    addCallback: (callback: () => IFuture<boolean>) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ChildBackButtonDispatcher implements IBackButtonDispatcher {
    public readonly parent: IBackButtonDispatcher = undefined as any;
    public constructor(parent: IBackButtonDispatcher) {
        flutter.widgets.childBackButtonDispatcher(this, parent);
    }
    private readonly _dart_notifiedByParent: (
        defaultValue: IFuture<boolean>
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_takePriority: () => void = undefined as any;
    private readonly _dart_deferTo: (
        child: IChildBackButtonDispatcher
    ) => void = undefined as any;
    private readonly _dart_removeCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_invokeCallback: (
        defaultValue: IFuture<boolean>
    ) => IFuture<boolean> = undefined as any;
    private readonly _dart_createChildBackButtonDispatcher: () => IChildBackButtonDispatcher =
        undefined as any;
    private readonly _dart_forget: (child: IChildBackButtonDispatcher) => void =
        undefined as any;
    private readonly _dart_getHasCallbacks: () => boolean = undefined as any;
    private readonly _dart_addCallback: (
        callback: () => IFuture<boolean>
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public notifiedByParent(defaultValue: IFuture<boolean>): IFuture<boolean> {
        return this._dart_notifiedByParent(defaultValue);
    }
    public takePriority(): void {
        return this._dart_takePriority();
    }
    public deferTo(child: IChildBackButtonDispatcher): void {
        return this._dart_deferTo(child);
    }
    public removeCallback(callback: () => IFuture<boolean>): void {
        return this._dart_removeCallback(callback);
    }
    public invokeCallback(defaultValue: IFuture<boolean>): IFuture<boolean> {
        return this._dart_invokeCallback(defaultValue);
    }
    public createChildBackButtonDispatcher(): IChildBackButtonDispatcher {
        return this._dart_createChildBackButtonDispatcher();
    }
    public forget(child: IChildBackButtonDispatcher): void {
        return this._dart_forget(child);
    }
    public getHasCallbacks(): boolean {
        return this._dart_getHasCallbacks();
    }
    public addCallback(callback: () => IFuture<boolean>): void {
        return this._dart_addCallback(callback);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
