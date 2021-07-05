import { IList } from "../core/list";
import { IFloat64List } from "../typed_data/float64List";
import { IColor } from "./color";
import { IOffset } from "./offset";
import { IShader } from "./shader";
import { TileMode } from "./tileMode";
export interface IGradient {
    toString: () => string;
    getHashCode: () => number;
}
export class Gradient implements IShader {
    public static linear(
        from: IOffset,
        to: IOffset,
        colors: IList<IColor>,
        colorStops: IList<number> | undefined,
        tileMode: TileMode = TileMode.clamp,
        matrix4?: IFloat64List | undefined
    ): IGradient {
        return dart.ui.gradientLinear(
            from,
            to,
            colors,
            tileMode,
            colorStops,
            matrix4
        );
    }
    public static radial(
        center: IOffset,
        radius: number,
        colors: IList<IColor>,
        colorStops: IList<number> | undefined,
        tileMode: TileMode = TileMode.clamp,
        matrix4: IFloat64List | undefined,
        focal: IOffset | undefined,
        focalRadius: number = 0.0
    ): IGradient {
        return dart.ui.gradientRadial(
            center,
            radius,
            colors,
            tileMode,
            focalRadius,
            colorStops,
            matrix4,
            focal
        );
    }
    public static sweep(
        center: IOffset,
        colors: IList<IColor>,
        colorStops: IList<number> | undefined,
        tileMode: TileMode = TileMode.clamp,
        startAngle: number = 0.0,
        endAngle: number = math.pi * 2,
        matrix4?: IFloat64List | undefined
    ): IGradient {
        return dart.ui.gradientSweep(
            center,
            colors,
            tileMode,
            startAngle,
            endAngle,
            colorStops,
            matrix4
        );
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
