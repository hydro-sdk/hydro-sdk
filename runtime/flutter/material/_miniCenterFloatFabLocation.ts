import { IOffset } from "../../dart/ui/offset";
import { IFabCenterOffsetX } from "./fabCenterOffsetX";
import { IFabFloatOffsetY } from "./fabFloatOffsetY";
import { IFabMiniOffsetAdjustment } from "./fabMiniOffsetAdjustment";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
import { IStandardFabLocation } from "./standardFabLocation";
declare const flutter: {
    material: {
        _miniCenterFloatFabLocation: (
            this: void,
            _miniCenterFloatFabLocation: I_MiniCenterFloatFabLocation
        ) => I_MiniCenterFloatFabLocation;
    };
};
export interface I_MiniCenterFloatFabLocation {
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
export class _MiniCenterFloatFabLocation
    implements
        IStandardFabLocation,
        IFabMiniOffsetAdjustment,
        IFabCenterOffsetX,
        IFabFloatOffsetY
{
    public constructor() {
        flutter.material._miniCenterFloatFabLocation(this);
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
