import { I_CachedImageBase } from "./_cachedImageBase";
import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IImageStreamCompleterHandle } from "./imageStreamCompleterHandle";
declare const flutter: {
    painting: {
        _cachedImage: (
            this: void,
            _cachedImage: I_CachedImage,
            completer: IImageStreamCompleter,
            props?: { sizeBytes?: number | undefined }
        ) => I_CachedImage;
    };
};
export interface I_CachedImage {
    completer: IImageStreamCompleter;
    sizeBytes: number | undefined;
    handle: IImageStreamCompleterHandle | undefined;
    dispose: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class _CachedImage implements I_CachedImageBase {
    public readonly completer: IImageStreamCompleter = undefined as any;
    public readonly sizeBytes: number | undefined = undefined as any;
    public readonly handle: IImageStreamCompleterHandle | undefined =
        undefined as any;
    public constructor(
        completer: IImageStreamCompleter,
        props?: { sizeBytes?: number | undefined }
    ) {
        flutter.painting._cachedImage(this, completer, props);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
