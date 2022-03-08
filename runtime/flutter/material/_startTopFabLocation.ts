import { IOffset } from "../../dart/ui/offset";
import { IFabStartOffsetX } from "./fabStartOffsetX";
import { IFabTopOffsetY } from "./fabTopOffsetY";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
import { IStandardFabLocation } from "./standardFabLocation";
declare const flutter: {
    material: {
        _startTopFabLocation: (
            this: void,
            _startTopFabLocation: I_StartTopFabLocation
        ) => I_StartTopFabLocation;
    };
};
export interface I_StartTopFabLocation {
    toString: () => string;
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
    getHashCode: () => number;
}
export class _StartTopFabLocation
    implements IStandardFabLocation, IFabStartOffsetX, IFabTopOffsetY
{
    public constructor() {
        flutter.material._startTopFabLocation(this);
    }
    private readonly _dart_toString: () => string = undefined as any;
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
    private readonly _dart_getHashCode: () => number = undefined as any;
    public toString(): string {
        return this._dart_toString();
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
    public isMini(): boolean {
        return this._dart_isMini();
    }
    public getOffset(scaffoldGeometry: IScaffoldPrelayoutGeometry): IOffset {
        return this._dart_getOffset(scaffoldGeometry);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
