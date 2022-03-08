import { IOffset } from "../../dart/ui/offset";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
declare const flutter: {
    material: {
        floatingActionButtonLocation: (
            this: void,
            floatingActionButtonLocation: IFloatingActionButtonLocation
        ) => IFloatingActionButtonLocation;
    };
};
export interface IFloatingActionButtonLocation {
    getOffset: (scaffoldGeometry: IScaffoldPrelayoutGeometry) => IOffset;
    toString: () => string;
}
export class FloatingActionButtonLocation {
    public constructor() {
        flutter.material.floatingActionButtonLocation(this);
    }
    private readonly _dart_getOffset: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry
    ) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getOffset(scaffoldGeometry: IScaffoldPrelayoutGeometry): IOffset {
        return this._dart_getOffset(scaffoldGeometry);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
