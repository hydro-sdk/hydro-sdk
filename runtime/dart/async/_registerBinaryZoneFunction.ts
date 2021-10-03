import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _registerBinaryZoneFunction: (
            this: void,
            _registerBinaryZoneFunction: I_RegisterBinaryZoneFunction,
            zone: I_Zone,
            phunction: <R, T1, T2>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg1: T1, arg2: T2) => R
            ) => (arg1: T1, arg2: T2) => R
        ) => I_RegisterBinaryZoneFunction;
    };
};
export interface I_RegisterBinaryZoneFunction {
    zone: I_Zone;
}
export class _RegisterBinaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R, T1, T2>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg1: T1, arg2: T2) => R
        ) => (arg1: T1, arg2: T2) => R
    ) {
        dart.async._registerBinaryZoneFunction(this, zone, phunction);
    }
}
