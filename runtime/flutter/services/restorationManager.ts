import { IFuture } from "../../dart/async/future";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IRestorationBucket } from "./restorationBucket";
declare const flutter: {
    services: {
        restorationManager: (
            this: void,
            restorationManager: IRestorationManager
        ) => IRestorationManager;
    };
};
export interface IRestorationManager {
    initChannels: () => void;
    getRootBucket: () => IFuture<IRestorationBucket | undefined>;
    getIsReplacing: () => boolean;
    handleRestorationUpdateFromEngine: (props: {
        data?: IUint8List | undefined;
        enabled: boolean;
    }) => void;
    sendToEngine: (encodedData: IUint8List) => IFuture<void>;
    flushData: () => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class RestorationManager implements IChangeNotifier, IListenable {
    public constructor() {
        flutter.services.restorationManager(this);
    }
    private readonly _dart_initChannels: () => void = undefined as any;
    private readonly _dart_getRootBucket: () => IFuture<
        IRestorationBucket | undefined
    > = undefined as any;
    private readonly _dart_getIsReplacing: () => boolean = undefined as any;
    private readonly _dart_handleRestorationUpdateFromEngine: (props: {
        data?: IUint8List | undefined;
        enabled: boolean;
    }) => void = undefined as any;
    private readonly _dart_sendToEngine: (
        encodedData: IUint8List
    ) => IFuture<void> = undefined as any;
    private readonly _dart_scheduleSerializationFor: (
        bucket: IRestorationBucket
    ) => void = undefined as any;
    private readonly _dart_unscheduleSerializationFor: (
        bucket: IRestorationBucket
    ) => void = undefined as any;
    private readonly _dart_flushData: () => void = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public initChannels(): void {
        return this._dart_initChannels();
    }
    public getRootBucket(): IFuture<IRestorationBucket | undefined> {
        return this._dart_getRootBucket();
    }
    public getIsReplacing(): boolean {
        return this._dart_getIsReplacing();
    }
    public handleRestorationUpdateFromEngine(props: {
        data?: IUint8List | undefined;
        enabled: boolean;
    }): void {
        return this._dart_handleRestorationUpdateFromEngine(props);
    }
    public sendToEngine(encodedData: IUint8List): IFuture<void> {
        return this._dart_sendToEngine(encodedData);
    }
    public scheduleSerializationFor(bucket: IRestorationBucket): void {
        return this._dart_scheduleSerializationFor(bucket);
    }
    public unscheduleSerializationFor(bucket: IRestorationBucket): void {
        return this._dart_unscheduleSerializationFor(bucket);
    }
    public flushData(): void {
        return this._dart_flushData();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
