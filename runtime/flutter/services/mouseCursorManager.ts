import { IIterable } from "../../dart/core/iterable";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IMouseCursor } from "./mouseCursor";
declare const flutter: {
    services: {
        mouseCursorManager: (
            this: void,
            mouseCursorManager: IMouseCursorManager,
            fallbackMouseCursor: IMouseCursor
        ) => IMouseCursorManager;
    };
};
export interface IMouseCursorManager {
    fallbackMouseCursor: IMouseCursor;
    debugDeviceActiveCursor: (device: number) => IMouseCursor | undefined;
    handleDeviceCursorUpdate: (
        device: number,
        triggeringEvent: IPointerEvent | undefined,
        cursorCandidates: IIterable<IMouseCursor>
    ) => void;
}
export class MouseCursorManager {
    public readonly fallbackMouseCursor: IMouseCursor = undefined as any;
    public constructor(fallbackMouseCursor: IMouseCursor) {
        flutter.services.mouseCursorManager(this, fallbackMouseCursor);
    }
    private readonly _dart_debugDeviceActiveCursor: (
        device: number
    ) => IMouseCursor | undefined = undefined as any;
    private readonly _dart_handleDeviceCursorUpdate: (
        device: number,
        triggeringEvent: IPointerEvent | undefined,
        cursorCandidates: IIterable<IMouseCursor>
    ) => void = undefined as any;
    public debugDeviceActiveCursor(device: number): IMouseCursor | undefined {
        return this._dart_debugDeviceActiveCursor(device);
    }
    public handleDeviceCursorUpdate(
        device: number,
        triggeringEvent: IPointerEvent | undefined,
        cursorCandidates: IIterable<IMouseCursor>
    ): void {
        return this._dart_handleDeviceCursorUpdate(
            device,
            triggeringEvent,
            cursorCandidates
        );
    }
}
