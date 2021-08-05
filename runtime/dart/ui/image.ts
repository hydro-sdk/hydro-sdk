import { IFuture } from "../async/future";
import { IList } from "../core/list";
import { IStackTrace } from "../core/stackTrace";
import { IByteData } from "../typed_data/byteData";
import { ImageByteFormat } from "./imageByteFormat";
export interface IImage {
    getWidth: () => number;
    getHeight: () => number;
    dispose: () => void;
    getDebugDisposed: () => boolean;
    toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined>;
    debugGetOpenHandleStackTraces: () => IList<IStackTrace> | undefined;
    clone: () => IImage;
    isCloneOf: (other: IImage) => boolean;
    toString: () => string;
}
