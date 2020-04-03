import {DartObject} from "./../core/object";

declare const dart: {
    ui: {
        radiusElliptical: (this: void, x: number, y: number) => Radius;
    };
};

export class Radius implements Readonly<DartObject>
{
    public readonly runtimeType = "Radius";

    public static elliptical(x: number, y: number) 
    {
        return dart.ui.radiusElliptical(x, y);
    }

    public static circular(radius: number): Radius 
    {
        return Radius.elliptical(radius, radius);
    }

    public static zero: Radius = Radius.circular(0.0);
}