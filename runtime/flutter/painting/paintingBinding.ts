import { IFuture } from "../../dart/async/future";
import { IUint8List } from "../../dart/typed_data/uint8List";
import { ICodec } from "../../dart/ui/codec";
import { IListenable } from "../foundation/listenable";
import { IImageCache } from "./imageCache";
export interface IPaintingBinding {
    initInstances: () => void;
    getImageCache: () => IImageCache | undefined;
    createImageCache: () => IImageCache;
    instantiateImageCodec: (
        bytes: IUint8List,
        props: {
            allowUpscaling: boolean;
            cacheHeight?: number | undefined;
            cacheWidth?: number | undefined;
        }
    ) => IFuture<ICodec>;
    evict: (asset: string) => void;
    handleMemoryPressure: () => void;
    getSystemFonts: () => IListenable;
    handleSystemMessage: (systemMessage: Object) => IFuture<void>;
}
