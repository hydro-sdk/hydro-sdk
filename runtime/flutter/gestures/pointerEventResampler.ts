import { IDuration } from "../../dart/core/duration";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
    gestures: {
        pointerEventResampler: (
            this: void,
            pointerEventResampler: IPointerEventResampler
        ) => IPointerEventResampler;
    };
};
export interface IPointerEventResampler {
    addEvent: (event: IPointerEvent) => void;
    sample: (
        sampleTime: IDuration,
        nextSampleTime: IDuration,
        callback: (event: IPointerEvent) => void
    ) => void;
    stop: (callback: (event: IPointerEvent) => void) => void;
    getHasPendingEvents: () => boolean;
    getIsTracked: () => boolean;
    getIsDown: () => boolean;
}
export class PointerEventResampler {
    public constructor() {
        flutter.gestures.pointerEventResampler(this);
    }
    private readonly _dart_addEvent: (event: IPointerEvent) => void =
        undefined as any;
    private readonly _dart_sample: (
        sampleTime: IDuration,
        nextSampleTime: IDuration,
        callback: (event: IPointerEvent) => void
    ) => void = undefined as any;
    private readonly _dart_stop: (
        callback: (event: IPointerEvent) => void
    ) => void = undefined as any;
    private readonly _dart_getHasPendingEvents: () => boolean =
        undefined as any;
    private readonly _dart_getIsTracked: () => boolean = undefined as any;
    private readonly _dart_getIsDown: () => boolean = undefined as any;
    public addEvent(event: IPointerEvent): void {
        return this._dart_addEvent(event);
    }
    public sample(
        sampleTime: IDuration,
        nextSampleTime: IDuration,
        callback: (event: IPointerEvent) => void
    ): void {
        return this._dart_sample(sampleTime, nextSampleTime, callback);
    }
    public stop(callback: (event: IPointerEvent) => void): void {
        return this._dart_stop(callback);
    }
    public getHasPendingEvents(): boolean {
        return this._dart_getHasPendingEvents();
    }
    public getIsTracked(): boolean {
        return this._dart_getIsTracked();
    }
    public getIsDown(): boolean {
        return this._dart_getIsDown();
    }
}
