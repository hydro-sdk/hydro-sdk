import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadius } from "./borderRadius";
declare const flutter: {
    painting: {
        borderRadiusGeometry: (
            this: void,
            borderRadiusGeometry: IBorderRadiusGeometry
        ) => IBorderRadiusGeometry;
        borderRadiusGeometryLerp: (
            a: IBorderRadiusGeometry | undefined,
            b: IBorderRadiusGeometry | undefined,
            t: number
        ) => IBorderRadiusGeometry | undefined;
    };
};
export interface IBorderRadiusGeometry {
    subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
    add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
    resolve: (direction?: TextDirection | undefined) => IBorderRadius;
    toString: () => string;
    getHashCode: () => number;
}
export class BorderRadiusGeometry {
    public constructor() {
        flutter.painting.borderRadiusGeometry(this);
    }
    public static lerp(
        a: IBorderRadiusGeometry | undefined,
        b: IBorderRadiusGeometry | undefined,
        t: number
    ): IBorderRadiusGeometry | undefined {
        return flutter.painting.borderRadiusGeometryLerp(a, b, t);
    }
    private readonly _dart_subtract: (
        other: IBorderRadiusGeometry
    ) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_add: (
        other: IBorderRadiusGeometry
    ) => IBorderRadiusGeometry = undefined as any;
    private readonly _dart_resolve: (
        direction?: TextDirection | undefined
    ) => IBorderRadius = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public subtract(other: IBorderRadiusGeometry): IBorderRadiusGeometry {
        return this._dart_subtract(other);
    }
    public add(other: IBorderRadiusGeometry): IBorderRadiusGeometry {
        return this._dart_add(other);
    }
    public resolve(direction?: TextDirection | undefined): IBorderRadius {
        return this._dart_resolve(direction);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
