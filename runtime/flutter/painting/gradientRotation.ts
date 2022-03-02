import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IGradientTransform } from "./gradientTransform";
declare const flutter: {
    painting: {
        gradientRotation: (
            this: void,
            gradientRotation: IGradientRotation,
            radians: number
        ) => IGradientRotation;
    };
};
export interface IGradientRotation {
    radians: number;
    transform: (
        bounds: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IMatrix4;
    getHashCode: () => number;
    toString: () => string;
}
export class GradientRotation implements IGradientTransform {
    public readonly radians: number = undefined as any;
    public constructor(radians: number) {
        flutter.painting.gradientRotation(this, radians);
    }
    private readonly _dart_transform: (
        bounds: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ) => IMatrix4 = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public transform(
        bounds: IRect,
        props?: { textDirection?: TextDirection | undefined }
    ): IMatrix4 {
        return this._dart_transform(bounds, props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
}
