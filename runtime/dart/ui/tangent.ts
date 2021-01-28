import { IOffset } from "./offset";
declare const dart: {
    ui: {
        tangent: (
            this: void,
            tangent: ITangent,
            position: IOffset,
            vector: IOffset
        ) => ITangent;
        tangentFromAngle: (position: IOffset, angle: number) => ITangent;
    };
};
export interface ITangent {
    position: IOffset;
    vector: IOffset;
    getAngle: () => number;
}
export class Tangent {
    public readonly position: IOffset = undefined as any;
    public readonly vector: IOffset = undefined as any;
    public constructor(position: IOffset, vector: IOffset) {
        dart.ui.tangent(this, position, vector);
    }
    public static fromAngle(position: IOffset, angle: number): ITangent {
        return dart.ui.tangentFromAngle(position, angle);
    }
    private readonly _dart_getAngle: () => number = undefined as any;
    public getAngle(): number {
        return this._dart_getAngle();
    }
}
