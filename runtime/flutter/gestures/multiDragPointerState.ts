import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IDeviceGestureSettings } from "./deviceGestureSettings";
import { IDrag } from "./drag";
import { GestureDisposition } from "./gestureDisposition";
declare const flutter: {
    gestures: {
        multiDragPointerState: (
            this: void,
            multiDragPointerState: IMultiDragPointerState,
            initialPosition: IOffset,
            kind: PointerDeviceKind,
            gestureSettings?: IDeviceGestureSettings | undefined
        ) => IMultiDragPointerState;
    };
};
export interface IMultiDragPointerState {
    gestureSettings: IDeviceGestureSettings | undefined;
    initialPosition: IOffset;
    kind: PointerDeviceKind;
    getPendingDelta: () => IOffset | undefined;
    resolve: (disposition: GestureDisposition) => void;
    checkForResolutionAfterMove: () => void;
    accepted: (starter: (position: IOffset) => IDrag | undefined) => void;
    rejected: () => void;
    dispose: () => void;
}
export class MultiDragPointerState {
    public readonly gestureSettings: IDeviceGestureSettings | undefined =
        undefined as any;
    public readonly initialPosition: IOffset = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
    public constructor(
        initialPosition: IOffset,
        kind: PointerDeviceKind,
        gestureSettings?: IDeviceGestureSettings | undefined
    ) {
        flutter.gestures.multiDragPointerState(
            this,
            initialPosition,
            kind,
            gestureSettings
        );
    }
    private readonly _dart_getPendingDelta: () => IOffset | undefined =
        undefined as any;
    private readonly _dart_resolve: (disposition: GestureDisposition) => void =
        undefined as any;
    private readonly _dart_checkForResolutionAfterMove: () => void =
        undefined as any;
    private readonly _dart_accepted: (
        starter: (position: IOffset) => IDrag | undefined
    ) => void = undefined as any;
    private readonly _dart_rejected: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    public getPendingDelta(): IOffset | undefined {
        return this._dart_getPendingDelta();
    }
    public resolve(disposition: GestureDisposition): void {
        return this._dart_resolve(disposition);
    }
    public checkForResolutionAfterMove(): void {
        return this._dart_checkForResolutionAfterMove();
    }
    public accepted(starter: (position: IOffset) => IDrag | undefined): void {
        return this._dart_accepted(starter);
    }
    public rejected(): void {
        return this._dart_rejected();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
}
