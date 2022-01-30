import { IDuration } from "../../dart/core/duration";
import { IPointerEvent } from "./pointerEvent";
import { ISamplingClock } from "./samplingClock";
declare const flutter: {
    gestures: {
        _resampler: (
            this: void,
            _resampler: I_Resampler,
            _handlePointerEvent: (event: IPointerEvent) => void,
            _handleSampleTimeChanged: () => void,
            _samplingInterval: IDuration
        ) => I_Resampler;
    };
};
export interface I_Resampler {
    addOrDispatch: (event: IPointerEvent) => void;
    sample: (samplingOffset: IDuration, clock: ISamplingClock) => void;
    stop: () => void;
}
export class _Resampler {
    public constructor(
        _handlePointerEvent: (event: IPointerEvent) => void,
        _handleSampleTimeChanged: () => void,
        _samplingInterval: IDuration
    ) {
        flutter.gestures._resampler(
            this,
            _handlePointerEvent,
            _handleSampleTimeChanged,
            _samplingInterval
        );
    }
    private readonly _dart_addOrDispatch: (event: IPointerEvent) => void =
        undefined as any;
    private readonly _dart_sample: (
        samplingOffset: IDuration,
        clock: ISamplingClock
    ) => void = undefined as any;
    private readonly _dart_stop: () => void = undefined as any;
    public addOrDispatch(event: IPointerEvent): void {
        return this._dart_addOrDispatch(event);
    }
    public sample(samplingOffset: IDuration, clock: ISamplingClock): void {
        return this._dart_sample(samplingOffset, clock);
    }
    public stop(): void {
        return this._dart_stop();
    }
}
