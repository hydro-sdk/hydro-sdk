import { ISliverConstraints } from "../rendering/sliverConstraints";
import { ISliverGridDelegate } from "../rendering/sliverGridDelegate";
import { ISliverGridLayout } from "../rendering/sliverGridLayout";
declare const flutter: {
    material: {
        _yearPickerGridDelegate: (
            this: void,
            _yearPickerGridDelegate: I_YearPickerGridDelegate
        ) => I_YearPickerGridDelegate;
    };
};
export interface I_YearPickerGridDelegate {
    getLayout: (constraints: ISliverConstraints) => ISliverGridLayout;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _YearPickerGridDelegate implements ISliverGridDelegate {
    public constructor() {
        flutter.material._yearPickerGridDelegate(this);
    }
    private readonly _dart_getLayout: (
        constraints: ISliverConstraints
    ) => ISliverGridLayout = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getLayout(constraints: ISliverConstraints): ISliverGridLayout {
        return this._dart_getLayout(constraints);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
