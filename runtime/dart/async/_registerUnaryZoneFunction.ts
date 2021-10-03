import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _registerUnaryZoneFunction: (
            this: void,
            _registerUnaryZoneFunction: I_RegisterUnaryZoneFunction,
            zone: I_Zone,
            phunction: <R, T>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg: T) => R
            ) => (arg: T) => R
        ) => I_RegisterUnaryZoneFunction;
    };
};
export interface I_RegisterUnaryZoneFunction {
    zone: I_Zone;
}
export class _RegisterUnaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R, T>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg: T) => R
        ) => (arg: T) => R
    ) {
        dart.async._registerUnaryZoneFunction(this, zone, phunction);
    }
}
