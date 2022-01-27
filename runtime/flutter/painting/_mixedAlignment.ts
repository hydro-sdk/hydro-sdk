import { TextDirection } from "../../dart/ui/textDirection";
import { IAlignment } from "./alignment";
import { IAlignmentGeometry } from "./alignmentGeometry";
declare const flutter: {
    painting: {
        _mixedAlignment: (
            this: void,
            _mixedAlignment: I_MixedAlignment,
            _x: number,
            _start: number,
            _y: number
        ) => I_MixedAlignment;
    };
};
export interface I_MixedAlignment {
    resolve: (direction?: TextDirection | undefined) => IAlignment;
    add: (other: IAlignmentGeometry) => IAlignmentGeometry;
    toString: () => string;
    getHashCode: () => number;
}
export class _MixedAlignment implements IAlignmentGeometry {
    public constructor(_x: number, _start: number, _y: number) {
        flutter.painting._mixedAlignment(this, _x, _start, _y);
    }
    private readonly _dart_resolve: (
        direction?: TextDirection | undefined
    ) => IAlignment = undefined as any;
    private readonly _dart_add: (
        other: IAlignmentGeometry
    ) => IAlignmentGeometry = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(direction?: TextDirection | undefined): IAlignment {
        return this._dart_resolve(direction);
    }
    public add(other: IAlignmentGeometry): IAlignmentGeometry {
        return this._dart_add(other);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
