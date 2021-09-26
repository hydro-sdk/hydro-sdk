import { IFloat64List } from "../typed_data/float64List";
import { IImage } from "./image";
import { IShader } from "./shader";
import { TileMode } from "./tileMode";
declare const dart: {
    ui: {
        imageShader: (
            this: void,
            imageShader: IImageShader,
            image: IImage,
            tmx: TileMode,
            tmy: TileMode,
            matrix4: IFloat64List
        ) => IImageShader;
    };
};
export interface IImageShader {
    toString: () => string;
    getHashCode: () => number;
}
export class ImageShader implements IShader {
    public constructor(
        image: IImage,
        tmx: TileMode,
        tmy: TileMode,
        matrix4: IFloat64List
    ) {
        dart.ui.imageShader(this, image, tmx, tmy, matrix4);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
