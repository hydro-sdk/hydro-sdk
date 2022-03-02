import { IImage } from "../../dart/ui/image";
declare const flutter: {
    painting: {
        imageInfo: (
            this: void,
            imageInfo: IImageInfo,
            props: {
                debugLabel?: string | undefined;
                scale: number;
                image: IImage;
            }
        ) => IImageInfo;
    };
};
export interface IImageInfo {
    image: IImage;
    scale: number;
    debugLabel: string | undefined;
    clone: () => IImageInfo;
    isCloneOf: (other: IImageInfo) => boolean;
    getSizeBytes: () => number;
    dispose: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ImageInfo {
    public readonly image: IImage = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(props: {
        debugLabel?: string | undefined;
        scale?: number;
        image: IImage;
    }) {
        flutter.painting.imageInfo(this, {
            ...imageInfoDefaultProps,
            ...props,
        });
    }
    private readonly _dart_clone: () => IImageInfo = undefined as any;
    private readonly _dart_isCloneOf: (other: IImageInfo) => boolean =
        undefined as any;
    private readonly _dart_getSizeBytes: () => number = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public clone(): IImageInfo {
        return this._dart_clone();
    }
    public isCloneOf(other: IImageInfo): boolean {
        return this._dart_isCloneOf(other);
    }
    public getSizeBytes(): number {
        return this._dart_getSizeBytes();
    }
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
const imageInfoDefaultProps = {
    scale: 1.0,
};
