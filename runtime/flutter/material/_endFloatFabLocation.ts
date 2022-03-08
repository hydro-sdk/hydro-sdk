import { IOffset } from "../../dart/ui/offset";
import { IFabEndOffsetX } from "./fabEndOffsetX";
import { IFabFloatOffsetY } from "./fabFloatOffsetY";
import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
import { IStandardFabLocation } from "./standardFabLocation";
declare const flutter: {
    material: {
        _endFloatFabLocation: (
            this: void,
            _endFloatFabLocation: I_EndFloatFabLocation
        ) => I_EndFloatFabLocation;
    };
};
export interface I_EndFloatFabLocation {
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
export class _EndFloatFabLocation
    implements IStandardFabLocation, IFabEndOffsetX, IFabFloatOffsetY
{
    public constructor() {
        flutter.material._endFloatFabLocation(this);
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
