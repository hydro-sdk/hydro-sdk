import { IPattern } from "../../dart/core/pattern";
import { IStackFrame } from "./stackFrame";
declare const flutter: {
    foundation: {
        partialStackFrame: (
            this: void,
            partialStackFrame: IPartialStackFrame,
            props: { className: string; method: string; package: IPattern }
        ) => IPartialStackFrame;
    };
};
export interface IPartialStackFrame {
    package: IPattern;
    className: string;
    method: string;
    matches: (stackFrame: IStackFrame) => boolean;
}
export class PartialStackFrame {
    public static asynchronousSuspension = new PartialStackFrame({
        package: "",
        className: "",
        method: "asynchronous suspension",
    });
    public readonly package: IPattern = undefined as any;
    public readonly className: string = undefined as any;
    public readonly method: string = undefined as any;
    public constructor(props: {
        className: string;
        method: string;
        package: IPattern;
    }) {
        flutter.foundation.partialStackFrame(this, props);
    }
    private readonly _dart_matches: (stackFrame: IStackFrame) => boolean =
        undefined as any;
    public matches(stackFrame: IStackFrame): boolean {
        return this._dart_matches(stackFrame);
    }
}
