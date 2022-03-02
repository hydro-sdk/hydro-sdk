import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IImageStreamCompleterHandle } from "./imageStreamCompleterHandle";
declare const flutter: {
    painting: {
        _cachedImageBase: (
            this: void,
            _cachedImageBase: I_CachedImageBase,
            completer: IImageStreamCompleter,
            props?: { sizeBytes?: number | undefined }
        ) => I_CachedImageBase;
    };
};
export interface I_CachedImageBase {
    completer: IImageStreamCompleter;
    sizeBytes: number | undefined;
    handle: IImageStreamCompleterHandle | undefined;
    dispose: () => void;
}
export class _CachedImageBase {
    public readonly completer: IImageStreamCompleter = undefined as any;
    public readonly sizeBytes: number | undefined = undefined as any;
    public readonly handle: IImageStreamCompleterHandle | undefined =
        undefined as any;
    public constructor(
        completer: IImageStreamCompleter,
        props?: { sizeBytes?: number | undefined }
    ) {
        flutter.painting._cachedImageBase(this, completer, props);
    }
    private readonly _dart_dispose: () => void = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
}
