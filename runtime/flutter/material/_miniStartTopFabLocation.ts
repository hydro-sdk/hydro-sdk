import { IOffset } from "../../dart/ui/offset";
import { IFabMiniOffsetAdjustment } from "./fabMiniOffsetAdjustment";
import { IFabStartOffsetX } from "./fabStartOffsetX";
import { IFabTopOffsetY } from "./fabTopOffsetY";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
import { IStandardFabLocation } from "./standardFabLocation";
declare const flutter: {
    material: {
        _miniStartTopFabLocation: (
            this: void,
            _miniStartTopFabLocation: I_MiniStartTopFabLocation
        ) => I_MiniStartTopFabLocation;
    };
};
export interface I_MiniStartTopFabLocation {
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
export class _MiniStartTopFabLocation
    implements
        IStandardFabLocation,
        IFabMiniOffsetAdjustment,
        IFabStartOffsetX,
        IFabTopOffsetY
{
    public constructor() {
        flutter.material._miniStartTopFabLocation(this);
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
