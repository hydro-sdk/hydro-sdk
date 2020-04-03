import { DartObject } from "./../../dart/core/object";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";

declare const flutter: {
    painting: {
        alignment: (this: void, x: number, y: number) => Alignment;
    }
}

export class Alignment extends JITAllocatingRTManagedBox<undefined, Alignment> implements Readonly<DartObject>{
    public readonly runtimeType = "Alignment";
    public props = undefined;
    public readonly x: number;
    public readonly y: number;
    public constructor(x: number, y: number) {
        super();
        this.x = x;
        this.y = y;
    }

    public unwrap(): Alignment {
        return flutter.painting.alignment(this.x, this.y);
    }

    public static topLeft = new Alignment(-1.0, -1.0);
    public static topCenter = new Alignment(0.0, -1.0);
    public static topRight = new Alignment(1.0, -1.0);
    public static centerLeft = new Alignment(-1.0, 0.0);
    public static center = new Alignment(0.0, 0.0);
    public static centerRight = new Alignment(1.0, 0.0);
    public static bottomLeft = new Alignment(-1.0, 1.0);
    public static bottomCenter = new Alignment(0.0, 1.0);
    public static bottomRight = new Alignment(1.0, 1.0);
}