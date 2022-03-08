import { IOffset } from "../../dart/ui/offset";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
declare const flutter: {
    material: {
        standardFabLocation: (
            this: void,
            standardFabLocation: IStandardFabLocation
        ) => IStandardFabLocation;
    };
};
export interface IStandardFabLocation {
    getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
    getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
    isMini: () => boolean;
    getOffset: (scaffoldGeometry: IScaffoldPrelayoutGeometry) => IOffset;
    toString: () => string;
    getHashCode: () => number;
}
export class StandardFabLocation implements IFloatingActionButtonLocation {
    public constructor() {
        flutter.material.standardFabLocation(this);
    }
    private readonly _dart_getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number = undefined as any;
    private readonly _dart_getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number = undefined as any;
    private readonly _dart_isMini: () => boolean = undefined as any;
    private readonly _dart_getOffset: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry
    ) => IOffset = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getOffsetX(
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ): number {
        return this._dart_getOffsetX(scaffoldGeometry, adjustment);
    }
    public getOffsetY(
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ): number {
        return this._dart_getOffsetY(scaffoldGeometry, adjustment);
    }
    public isMini(): boolean {
        return this._dart_isMini();
    }
    public getOffset(scaffoldGeometry: IScaffoldPrelayoutGeometry): IOffset {
        return this._dart_getOffset(scaffoldGeometry);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
