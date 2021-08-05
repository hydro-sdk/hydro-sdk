import { IFuture } from "../async/future";
import { IByteData } from "../typed_data/byteData";
import { ImageByteFormat } from "./imageByteFormat";
export interface I_Image {
    getWidth: () => number;
    getHeight: () => number;
    toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined>;
    dispose: () => void;
    toString: () => string;
}
