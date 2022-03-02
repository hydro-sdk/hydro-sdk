import { ISize } from "../../dart/ui/size";
declare const flutter: {
    painting: {
        imageSizeInfo: (
            this: void,
            imageSizeInfo: IImageSizeInfo,
            props: {
                source?: string | undefined;
                displaySize: ISize;
                imageSize: ISize;
            }
        ) => IImageSizeInfo;
    };
};
export interface IImageSizeInfo {
    source: string | undefined;
    displaySize: ISize;
    imageSize: ISize;
    getDisplaySizeInBytes: () => number;
    getDecodedSizeInBytes: () => number;
    toJson: () => { [index: string]: Object | undefined };
    getHashCode: () => number;
    toString: () => string;
}
export class ImageSizeInfo {
    public readonly source: string | undefined = undefined as any;
    public readonly displaySize: ISize = undefined as any;
    public readonly imageSize: ISize = undefined as any;
    public constructor(props: {
        source?: string | undefined;
        displaySize: ISize;
        imageSize: ISize;
    }) {
        flutter.painting.imageSizeInfo(this, props);
    }
    private readonly _dart_getDisplaySizeInBytes: () => number =
        undefined as any;
    private readonly _dart_getDecodedSizeInBytes: () => number =
        undefined as any;
    private readonly _dart_toJson: () => {
        [index: string]: Object | undefined;
    } = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getDisplaySizeInBytes(): number {
        return this._dart_getDisplaySizeInBytes();
    }
    public getDecodedSizeInBytes(): number {
        return this._dart_getDecodedSizeInBytes();
    }
    public toJson(): { [index: string]: Object | undefined } {
        return this._dart_toJson();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
