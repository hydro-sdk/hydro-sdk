import { IFuture } from "../async/future";
import { IFrameInfo } from "./frameInfo";
export interface ICodec {
    getFrameCount: () => number;
    getRepetitionCount: () => number;
    getNextFrame: () => IFuture<IFrameInfo>;
    dispose: () => void;
}
