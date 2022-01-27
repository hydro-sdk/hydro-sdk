import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IImageStreamListener } from "./imageStreamListener";
declare const flutter: {
    painting: {
        _pendingImage: (
            this: void,
            _pendingImage: I_PendingImage,
            completer: IImageStreamCompleter,
            listener: IImageStreamListener
        ) => I_PendingImage;
    };
};
export interface I_PendingImage {
    completer: IImageStreamCompleter;
    listener: IImageStreamListener;
    removeListener: () => void;
}
export class _PendingImage {
    public readonly completer: IImageStreamCompleter = undefined as any;
    public readonly listener: IImageStreamListener = undefined as any;
    public constructor(
        completer: IImageStreamCompleter,
        listener: IImageStreamListener
    ) {
        flutter.painting._pendingImage(this, completer, listener);
    }
    private readonly _dart_removeListener: () => void = undefined as any;
    public removeListener(): void {
        return this._dart_removeListener();
    }
}
