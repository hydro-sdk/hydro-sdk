import { ISet } from "../../dart/core/set";
import { IOffset } from "../../dart/ui/offset";
import { IPointerCancelEvent } from "../gestures/pointerCancelEvent";
import { IPointerDownEvent } from "../gestures/pointerDownEvent";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IPointerUpEvent } from "../gestures/pointerUpEvent";
import { IAndroidMotionEvent } from "./androidMotionEvent";
import { IAndroidPointerCoords } from "./androidPointerCoords";
import { IAndroidPointerProperties } from "./androidPointerProperties";
declare const flutter: {
    services: {
        _androidMotionEventConverter: (
            this: void,
            _androidMotionEventConverter: I_AndroidMotionEventConverter
        ) => I_AndroidMotionEventConverter;
    };
};
export interface I_AndroidMotionEventConverter {
    pointerPositions: { [index: number]: IAndroidPointerCoords };
    pointerProperties: { [index: number]: IAndroidPointerProperties };
    usedAndroidPointerIds: ISet<number>;
    downTimeMillis: number | undefined;
    getPointTransformer: () => (position: IOffset) => IOffset;
    setPointTransformer: (transformer: (position: IOffset) => IOffset) => void;
    handlePointerDownEvent: (event: IPointerDownEvent) => void;
    updatePointerPositions: (event: IPointerEvent) => void;
    handlePointerUpEvent: (event: IPointerUpEvent) => void;
    handlePointerCancelEvent: (event: IPointerCancelEvent) => void;
    toAndroidMotionEvent: (
        event: IPointerEvent
    ) => IAndroidMotionEvent | undefined;
    propertiesFor: (
        event: IPointerEvent,
        pointerId: number
    ) => IAndroidPointerProperties;
    isSinglePointerAction: (event: IPointerEvent) => boolean;
}
export class _AndroidMotionEventConverter {
    public readonly pointerPositions: {
        [index: number]: IAndroidPointerCoords;
    } = undefined as any;
    public readonly pointerProperties: {
        [index: number]: IAndroidPointerProperties;
    } = undefined as any;
    public readonly usedAndroidPointerIds: ISet<number> = undefined as any;
    public readonly downTimeMillis: number | undefined = undefined as any;
    public constructor() {
        flutter.services._androidMotionEventConverter(this);
    }
    private readonly _dart_getPointTransformer: () => (
        position: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_setPointTransformer: (
        transformer: (position: IOffset) => IOffset
    ) => void = undefined as any;
    private readonly _dart_handlePointerDownEvent: (
        event: IPointerDownEvent
    ) => void = undefined as any;
    private readonly _dart_updatePointerPositions: (
        event: IPointerEvent
    ) => void = undefined as any;
    private readonly _dart_handlePointerUpEvent: (
        event: IPointerUpEvent
    ) => void = undefined as any;
    private readonly _dart_handlePointerCancelEvent: (
        event: IPointerCancelEvent
    ) => void = undefined as any;
    private readonly _dart_toAndroidMotionEvent: (
        event: IPointerEvent
    ) => IAndroidMotionEvent | undefined = undefined as any;
    private readonly _dart_propertiesFor: (
        event: IPointerEvent,
        pointerId: number
    ) => IAndroidPointerProperties = undefined as any;
    private readonly _dart_isSinglePointerAction: (
        event: IPointerEvent
    ) => boolean = undefined as any;
    public getPointTransformer(): (position: IOffset) => IOffset {
        return this._dart_getPointTransformer();
    }
    public setPointTransformer(
        transformer: (position: IOffset) => IOffset
    ): void {
        return this._dart_setPointTransformer(transformer);
    }
    public handlePointerDownEvent(event: IPointerDownEvent): void {
        return this._dart_handlePointerDownEvent(event);
    }
    public updatePointerPositions(event: IPointerEvent): void {
        return this._dart_updatePointerPositions(event);
    }
    public handlePointerUpEvent(event: IPointerUpEvent): void {
        return this._dart_handlePointerUpEvent(event);
    }
    public handlePointerCancelEvent(event: IPointerCancelEvent): void {
        return this._dart_handlePointerCancelEvent(event);
    }
    public toAndroidMotionEvent(
        event: IPointerEvent
    ): IAndroidMotionEvent | undefined {
        return this._dart_toAndroidMotionEvent(event);
    }
    public propertiesFor(
        event: IPointerEvent,
        pointerId: number
    ): IAndroidPointerProperties {
        return this._dart_propertiesFor(event, pointerId);
    }
    public isSinglePointerAction(event: IPointerEvent): boolean {
        return this._dart_isSinglePointerAction(event);
    }
}
