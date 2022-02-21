import { IList } from "../../dart/core/list";
import { IPartialStackFrame } from "./partialStackFrame";
import { IStackFilter } from "./stackFilter";
import { IStackFrame } from "./stackFrame";
declare const flutter: {
    foundation: {
        repetitiveStackFrameFilter: (
            this: void,
            repetitiveStackFrameFilter: IRepetitiveStackFrameFilter,
            props: { frames: IList<IPartialStackFrame>; replacement: string }
        ) => IRepetitiveStackFrameFilter;
    };
};
export interface IRepetitiveStackFrameFilter {
    frames: IList<IPartialStackFrame>;
    replacement: string;
    getNumFrames: () => number;
    filter: (
        stackFrames: IList<IStackFrame>,
        reasons: IList<string | undefined>
    ) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class RepetitiveStackFrameFilter implements IStackFilter {
    public readonly frames: IList<IPartialStackFrame> = undefined as any;
    public readonly replacement: string = undefined as any;
    public constructor(props: {
        frames: IList<IPartialStackFrame>;
        replacement: string;
    }) {
        flutter.foundation.repetitiveStackFrameFilter(this, props);
    }
    private readonly _dart_getNumFrames: () => number = undefined as any;
    private readonly _dart_filter: (
        stackFrames: IList<IStackFrame>,
        reasons: IList<string | undefined>
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getNumFrames(): number {
        return this._dart_getNumFrames();
    }
    public filter(
        stackFrames: IList<IStackFrame>,
        reasons: IList<string | undefined>
    ): void {
        return this._dart_filter(stackFrames, reasons);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
