import { IFuture } from "../async/future";
import { IByteData } from "../typed_data/byteData";
import { ImageByteFormat } from "./imageByteFormat";
declare const dart: {
    ui: {};
};
export interface I_Image {
    getWidth: () => number;
    getHeight: () => number;
    toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined>;
    dispose: () => void;
    toString: () => string;
}
export class _Image {
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined> = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public toByteData(props: {
        format?: ImageByteFormat;
    }): IFuture<IByteData | undefined> {
        return this._dart_toByteData({
            ...toByteDataDefaultProps,
            ...props,
        });
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const toByteDataDefaultProps = {
    format: ImageByteFormat.rawRgba,
};
