import { IFuture } from "../../dart/async/future";
import { IByteData } from "../../dart/typed_data/byteData";
import { IUint8List } from "../../dart/typed_data/uint8List";
declare const flutter: {
    services: {
        fontLoader: (
            this: void,
            fontLoader: IFontLoader,
            family: string
        ) => IFontLoader;
    };
};
export interface IFontLoader {
    family: string;
    addFont: (bytes: IFuture<IByteData>) => void;
    load: () => IFuture<void>;
}
export class FontLoader {
    public readonly family: string = undefined as any;
    public constructor(family: string) {
        flutter.services.fontLoader(this, family);
    }
    private readonly _dart_addFont: (bytes: IFuture<IByteData>) => void =
        undefined as any;
    private readonly _dart_load: () => IFuture<void> = undefined as any;
    private readonly _dart_loadFont: (
        list: IUint8List,
        family: string
    ) => IFuture<void> = undefined as any;
    public addFont(bytes: IFuture<IByteData>): void {
        return this._dart_addFont(bytes);
    }
    public load(): IFuture<void> {
        return this._dart_load();
    }
    public loadFont(list: IUint8List, family: string): IFuture<void> {
        return this._dart_loadFont(list, family);
    }
}
