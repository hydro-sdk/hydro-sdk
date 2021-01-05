import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { Type } from "./../core/type";

declare const dart: {
    ui: {
        radiusElliptical: (this: void, x: number, y: number) => Radius;
    };
};

export interface IRadius {}

export class Radius implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Radius);

    public static elliptical(x: number, y: number) {
        return dart.ui.radiusElliptical(x, y);
    }

    public static circular(radius: number): Radius {
        return Radius.elliptical(radius, radius);
    }

    public static zero: Radius = Radius.circular(0.0);
}
