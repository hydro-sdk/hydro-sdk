import { double } from "../core/double";
import { IOffsetBase } from "./offsetBase";
declare const dart: {
    ui: {
        offset: (
            this: void,
            offset: IOffset,
            dx: number,
            dy: number
        ) => IOffset;
        offsetFromDirection: (direction: number, distance: number) => IOffset;
        offsetLerp: (
            a: IOffset | undefined,
            b: IOffset | undefined,
            t: number
        ) => IOffset | undefined;
    };
};
export interface IOffset {
    getDx: () => number;
    getDy: () => number;
    getDistance: () => number;
    getDistanceSquared: () => number;
    getDirection: () => number;
    scale: (scaleX: number, scaleY: number) => IOffset;
    translate: (translateX: number, translateY: number) => IOffset;
    getHashCode: () => number;
    toString: () => string;
    getIsInfinite: () => boolean;
    getIsFinite: () => boolean;
}
export class Offset implements IOffsetBase {
    public static zero = new Offset(0.0, 0.0);
    public static infinite = new Offset(double.infinity, double.infinity);
    public constructor(dx: number, dy: number) {
        dart.ui.offset(this, dx, dy);
    }
    public static fromDirection(
        direction: number,
        distance: number = 1.0
    ): IOffset {
        return dart.ui.offsetFromDirection(direction, distance);
    }
    public static lerp(
        a: IOffset | undefined,
        b: IOffset | undefined,
        t: number
    ): IOffset | undefined {
        return dart.ui.offsetLerp(a, b, t);
    }
    private readonly _dart_getDx: () => number = undefined as any;
    private readonly _dart_getDy: () => number = undefined as any;
    private readonly _dart_getDistance: () => number = undefined as any;
    private readonly _dart_getDistanceSquared: () => number = undefined as any;
    private readonly _dart_getDirection: () => number = undefined as any;
    private readonly _dart_scale: (
        scaleX: number,
        scaleY: number
    ) => IOffset = undefined as any;
    private readonly _dart_translate: (
        translateX: number,
        translateY: number
    ) => IOffset = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsInfinite: () => boolean = undefined as any;
    private readonly _dart_getIsFinite: () => boolean = undefined as any;
    public getDx(): number {
        return this._dart_getDx();
    }
    public getDy(): number {
        return this._dart_getDy();
    }
    public getDistance(): number {
        return this._dart_getDistance();
    }
    public getDistanceSquared(): number {
        return this._dart_getDistanceSquared();
    }
    public getDirection(): number {
        return this._dart_getDirection();
    }
    public scale(scaleX: number, scaleY: number): IOffset {
        return this._dart_scale(scaleX, scaleY);
    }
    public translate(translateX: number, translateY: number): IOffset {
        return this._dart_translate(translateX, translateY);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getIsInfinite(): boolean {
        return this._dart_getIsInfinite();
    }
    public getIsFinite(): boolean {
        return this._dart_getIsFinite();
    }
}
