import { IFuture } from "../async/future";
import { ICodec } from "./codec";
import { IImmutableBuffer } from "./immutableBuffer";
import { PixelFormat } from "./pixelFormat";
declare const dart: {
    ui: {
        imageDescriptorRaw: (
            buffer: IImmutableBuffer,
            props: {
                rowBytes?: number | undefined;
                height: number;
                pixelFormat: PixelFormat;
                width: number;
            }
        ) => IImageDescriptor;
        imageDescriptorEncoded: (
            buffer: IImmutableBuffer
        ) => IFuture<IImageDescriptor>;
    };
};
export interface IImageDescriptor {
    getWidth: () => number;
    getHeight: () => number;
    getBytesPerPixel: () => number;
    dispose: () => void;
    instantiateCodec: (props?: {
        targetHeight?: number | undefined;
        targetWidth?: number | undefined;
    }) => IFuture<ICodec>;
}
export class ImageDescriptor {
    public static raw(
        buffer: IImmutableBuffer,
        props: {
            rowBytes?: number | undefined;
            height: number;
            pixelFormat: PixelFormat;
            width: number;
        }
    ): IImageDescriptor {
        return dart.ui.imageDescriptorRaw(buffer, props);
    }
    public static encoded(buffer: IImmutableBuffer): IFuture<IImageDescriptor> {
        return dart.ui.imageDescriptorEncoded(buffer);
    }
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_getBytesPerPixel: () => number = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_instantiateCodec: (props?: {
        targetHeight?: number | undefined;
        targetWidth?: number | undefined;
    }) => IFuture<ICodec> = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public getBytesPerPixel(): number {
        return this._dart_getBytesPerPixel();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public instantiateCodec(props?: {
        targetHeight?: number | undefined;
        targetWidth?: number | undefined;
    }): IFuture<ICodec> {
        return this._dart_instantiateCodec(props);
    }
}
