import { IOffset } from "../../dart/ui/offset";
import { IFabDockedOffsetY } from "./fabDockedOffsetY";
import { IFabEndOffsetX } from "./fabEndOffsetX";
import { IFabMiniOffsetAdjustment } from "./fabMiniOffsetAdjustment";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
import { IStandardFabLocation } from "./standardFabLocation";
declare const flutter: {
    material: {
        _miniEndDockedFabLocation: (
            this: void,
            _miniEndDockedFabLocation: I_MiniEndDockedFabLocation
        ) => I_MiniEndDockedFabLocation;
    };
};
export interface I_MiniEndDockedFabLocation {
    toString: () => string;
    isMini: () => boolean;
    getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
    getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
    getOffset: (scaffoldGeometry: IScaffoldPrelayoutGeometry) => IOffset;
    getHashCode: () => number;
}
export class _MiniEndDockedFabLocation
    implements
        IStandardFabLocation,
        IFabMiniOffsetAdjustment,
        IFabEndOffsetX,
        IFabDockedOffsetY
{
    public constructor() {
        flutter.material._miniEndDockedFabLocation(this);
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_isMini: () => boolean = undefined as any;
    private readonly _dart_getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number = undefined as any;
    private readonly _dart_getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number = undefined as any;
    private readonly _dart_getOffset: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry
    ) => IOffset = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public isMini(): boolean {
        return this._dart_isMini();
    }
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
    public getOffset(scaffoldGeometry: IScaffoldPrelayoutGeometry): IOffset {
        return this._dart_getOffset(scaffoldGeometry);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
