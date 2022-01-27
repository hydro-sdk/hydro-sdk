import { TextDirection } from "../../dart/ui/textDirection";
import { IAlignment } from "./alignment";
declare const flutter: {
    painting: {
        alignmentGeometry: (
            this: void,
            alignmentGeometry: IAlignmentGeometry
        ) => IAlignmentGeometry;
        alignmentGeometryLerp: (
            a: IAlignmentGeometry | undefined,
            b: IAlignmentGeometry | undefined,
            t: number
        ) => IAlignmentGeometry | undefined;
    };
};
export interface IAlignmentGeometry {
    add: (other: IAlignmentGeometry) => IAlignmentGeometry;
    resolve: (direction?: TextDirection | undefined) => IAlignment;
    toString: () => string;
    getHashCode: () => number;
}
export class AlignmentGeometry {
    public constructor() {
        flutter.painting.alignmentGeometry(this);
    }
    public static lerp(
        a: IAlignmentGeometry | undefined,
        b: IAlignmentGeometry | undefined,
        t: number
    ): IAlignmentGeometry | undefined {
        return flutter.painting.alignmentGeometryLerp(a, b, t);
    }
    private readonly _dart_add: (
        other: IAlignmentGeometry
    ) => IAlignmentGeometry = undefined as any;
    private readonly _dart_resolve: (
        direction?: TextDirection | undefined
    ) => IAlignment = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public add(other: IAlignmentGeometry): IAlignmentGeometry {
        return this._dart_add(other);
    }
    public resolve(direction?: TextDirection | undefined): IAlignment {
        return this._dart_resolve(direction);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
