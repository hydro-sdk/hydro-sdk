import { TextDirection } from "../../dart/ui/textDirection";
import { IAlignment } from "./alignment";
import { IAlignmentGeometry } from "./alignmentGeometry";
declare const flutter: {
    painting: {
        alignmentDirectional: (
            this: void,
            alignmentDirectional: IAlignmentDirectional,
            start: number,
            y: number
        ) => IAlignmentDirectional;
        alignmentDirectionalLerp: (
            a: IAlignmentDirectional | undefined,
            b: IAlignmentDirectional | undefined,
            t: number
        ) => IAlignmentDirectional | undefined;
    };
};
export interface IAlignmentDirectional {
    start: number;
    y: number;
    add: (other: IAlignmentGeometry) => IAlignmentGeometry;
    resolve: (direction?: TextDirection | undefined) => IAlignment;
    toString: () => string;
    getHashCode: () => number;
}
export class AlignmentDirectional implements IAlignmentGeometry {
    public static topStart = new AlignmentDirectional(-1.0, -1.0);
    public static topCenter = new AlignmentDirectional(0.0, -1.0);
    public static topEnd = new AlignmentDirectional(1.0, -1.0);
    public static centerStart = new AlignmentDirectional(-1.0, 0.0);
    public static center = new AlignmentDirectional(0.0, 0.0);
    public static centerEnd = new AlignmentDirectional(1.0, 0.0);
    public static bottomStart = new AlignmentDirectional(-1.0, 1.0);
    public static bottomCenter = new AlignmentDirectional(0.0, 1.0);
    public static bottomEnd = new AlignmentDirectional(1.0, 1.0);
    public readonly start: number = undefined as any;
    public readonly y: number = undefined as any;
    public constructor(start: number, y: number) {
        flutter.painting.alignmentDirectional(this, start, y);
    }
    public static lerp(
        a: IAlignmentDirectional | undefined,
        b: IAlignmentDirectional | undefined,
        t: number
    ): IAlignmentDirectional | undefined {
        return flutter.painting.alignmentDirectionalLerp(a, b, t);
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
