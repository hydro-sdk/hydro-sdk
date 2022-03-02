import { IDateTime } from "../../dart/core/dateTime";
import { IStopwatch } from "../../dart/core/stopwatch";
declare const flutter: {
    gestures: {
        samplingClock: (
            this: void,
            samplingClock: ISamplingClock
        ) => ISamplingClock;
    };
};
export interface ISamplingClock {
    now: () => IDateTime;
    stopwatch: () => IStopwatch;
}
export class SamplingClock {
    public constructor() {
        flutter.gestures.samplingClock(this);
    }
    private readonly _dart_now: () => IDateTime = undefined as any;
    private readonly _dart_stopwatch: () => IStopwatch = undefined as any;
    public now(): IDateTime {
        return this._dart_now();
    }
    public stopwatch(): IStopwatch {
        return this._dart_stopwatch();
    }
}
