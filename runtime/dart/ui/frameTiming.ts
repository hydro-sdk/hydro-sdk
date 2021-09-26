import { IDuration } from "../core/duration";
import { FramePhase } from "./framePhase";
declare const dart: {
    ui: {
        frameTiming: (
            this: void,
            frameTiming: IFrameTiming,
            props: {
                buildFinish: number;
                buildStart: number;
                rasterFinish: number;
                rasterStart: number;
                vsyncStart: number;
            }
        ) => IFrameTiming;
    };
};
export interface IFrameTiming {
    timestampInMicroseconds: (phase: FramePhase) => number;
    getBuildDuration: () => IDuration;
    getRasterDuration: () => IDuration;
    getVsyncOverhead: () => IDuration;
    getTotalSpan: () => IDuration;
    toString: () => string;
}
export class FrameTiming {
    public constructor(props: {
        buildFinish: number;
        buildStart: number;
        rasterFinish: number;
        rasterStart: number;
        vsyncStart: number;
    }) {
        dart.ui.frameTiming(this, props);
    }
    private readonly _dart_timestampInMicroseconds: (
        phase: FramePhase
    ) => number = undefined as any;
    private readonly _dart_getBuildDuration: () => IDuration = undefined as any;
    private readonly _dart_getRasterDuration: () => IDuration =
        undefined as any;
    private readonly _dart_getVsyncOverhead: () => IDuration = undefined as any;
    private readonly _dart_getTotalSpan: () => IDuration = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public timestampInMicroseconds(phase: FramePhase): number {
        return this._dart_timestampInMicroseconds(phase);
    }
    public getBuildDuration(): IDuration {
        return this._dart_getBuildDuration();
    }
    public getRasterDuration(): IDuration {
        return this._dart_getRasterDuration();
    }
    public getVsyncOverhead(): IDuration {
        return this._dart_getVsyncOverhead();
    }
    public getTotalSpan(): IDuration {
        return this._dart_getTotalSpan();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
