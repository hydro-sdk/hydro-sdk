import { IFuture } from "../async/future";
import { IList } from "../core/list";
import { IStackTrace } from "../core/stackTrace";
import { IByteData } from "../typed_data/byteData";
import { ImageByteFormat } from "./imageByteFormat";
declare const dart: {
    ui: {};
};
const toByteDataDefaultProps = {
    format: ImageByteFormat.rawRgba,
};
export interface IImage {
    getWidth: () => number;
    getHeight: () => number;
    dispose: () => void;
    getDebugDisposed: () => boolean;
    toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined>;
    debugGetOpenHandleStackTraces: () => IList<IStackTrace> | undefined;
    clone: () => IImage;
    isCloneOf: (other: IImage) => boolean;
    toString: () => string;
}
export class Image {
    private readonly _dart_getWidth: () => number = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_getDebugDisposed: () => boolean = undefined as any;
    private readonly _dart_toByteData: (props: {
        format: ImageByteFormat;
    }) => IFuture<IByteData | undefined> = undefined as any;
    private readonly _dart_debugGetOpenHandleStackTraces: () =>
        | IList<IStackTrace>
        | undefined = undefined as any;
    private readonly _dart_clone: () => IImage = undefined as any;
    private readonly _dart_isCloneOf: (other: IImage) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getWidth(): number {
        return this._dart_getWidth();
    }
    public getHeight(): number {
        return this._dart_getHeight();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public getDebugDisposed(): boolean {
        return this._dart_getDebugDisposed();
    }
    public toByteData(props: {
        format?: ImageByteFormat;
    }): IFuture<IByteData | undefined> {
        return this._dart_toByteData({
            ...toByteDataDefaultProps,
            ...props,
        });
    }
    public debugGetOpenHandleStackTraces(): IList<IStackTrace> | undefined {
        return this._dart_debugGetOpenHandleStackTraces();
    }
    public clone(): IImage {
        return this._dart_clone();
    }
    public isCloneOf(other: IImage): boolean {
        return this._dart_isCloneOf(other);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
