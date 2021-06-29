import { IFuture } from "../async/future";
import { IFrameInfo } from "./frameInfo";
declare const dart: {
    ui: {};
};
export interface ICodec {
    getFrameCount: () => number;
    getRepetitionCount: () => number;
    getNextFrame: () => IFuture<IFrameInfo>;
    dispose: () => void;
}
export class Codec {
    private readonly _dart_getFrameCount: () => number = undefined as any;
    private readonly _dart_getRepetitionCount: () => number = undefined as any;
    private readonly _dart_getNextFrame: () => IFuture<IFrameInfo> =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    public getFrameCount(): number {
        return this._dart_getFrameCount();
    }
    public getRepetitionCount(): number {
        return this._dart_getRepetitionCount();
    }
    public getNextFrame(): IFuture<IFrameInfo> {
        return this._dart_getNextFrame();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
}
