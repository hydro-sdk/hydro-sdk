import { IOffset } from "./offset";
declare const dart: {
    ui: {
        tangent: (
            this: void,
            tangent: Tangent,
            position: Offset,
            vector: Offset
        ) => Tangent;
        tangentFromAngle: (position: Offset, angle: number) => Tangent;
    };
};
export interface ITangent {
    position: IOffset;
    vector: IOffset;
    getAngle: () => number;
}
export class Tangent {
    public readonly position: Offset = undefined as any;
    public readonly vector: Offset = undefined as any;
    public constructor(position: Offset, vector: Offset) {
        dart.ui.tangent(this, position, vector);
    }
    public static fromAngle(position: Offset, angle: number): Tangent {
        return dart.ui.tangentFromAngle(position, angle);
    }
    private readonly _dart_getAngle: () => number = undefined as any;
    public getAngle(): number {
        return this._dart_getAngle();
    }
}
