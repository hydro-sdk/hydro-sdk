import { IRadius, Radius } from "../../dart/ui/radius";
import { IRect } from "../../dart/ui/rect";
import { IRRect } from "../../dart/ui/rRect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IBorderRadiusGeometry } from "./borderRadiusGeometry";
declare const flutter: {
    painting: {
        borderRadiusLerp: (
            a: IBorderRadius | undefined,
            b: IBorderRadius | undefined,
            t: number
        ) => IBorderRadius | undefined;
    };
};
export interface IBorderRadius {
    topLeft: IRadius;
    topRight: IRadius;
    bottomLeft: IRadius;
    bottomRight: IRadius;
    copyWith: (props?: {
        bottomLeft?: IRadius | undefined;
        bottomRight?: IRadius | undefined;
        topLeft?: IRadius | undefined;
        topRight?: IRadius | undefined;
    }) => IBorderRadius;
    toRRect: (rect: IRect) => IRRect;
    subtract: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
    add: (other: IBorderRadiusGeometry) => IBorderRadiusGeometry;
    resolve: (direction?: TextDirection | undefined) => IBorderRadius;
    toString: () => string;
    getHashCode: () => number;
}
export class BorderRadius implements IBorderRadiusGeometry {
    public static zero = BorderRadius.all(Radius.zero);
    public readonly topLeft: IRadius = undefined as any;
    public readonly topRight: IRadius = undefined as any;
    public readonly bottomLeft: IRadius = undefined as any;
    public readonly bottomRight: IRadius = undefined as any;
    public static lerp(
        a: IBorderRadius | undefined,
        b: IBorderRadius | undefined,
        t: number
    ): IBorderRadius | undefined {
        return flutter.painting.borderRadiusLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        bottomLeft?: IRadius | undefined;
        bottomRight?: IRadius | undefined;
        topLeft?: IRadius | undefined;
        topRight?: IRadius | undefined;
    }) => IBorderRadius = undefined as any;
    private readonly _dart_toRRect: (rect: IRect) => IRRect = undefined as any;
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
    public copyWith(props?: {
        bottomLeft?: IRadius | undefined;
        bottomRight?: IRadius | undefined;
        topLeft?: IRadius | undefined;
        topRight?: IRadius | undefined;
    }): IBorderRadius {
        return this._dart_copyWith(props);
    }
    public toRRect(rect: IRect): IRRect {
        return this._dart_toRRect(rect);
    }
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
