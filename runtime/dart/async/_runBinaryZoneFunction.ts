import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _runBinaryZoneFunction: (
            this: void,
            _runBinaryZoneFunction: I_RunBinaryZoneFunction,
            zone: I_Zone,
            phunction: <R, T1, T2>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg1: T1, arg2: T2) => R,
                arg1: T1,
                arg2: T2
            ) => R
        ) => I_RunBinaryZoneFunction;
    };
};
export interface I_RunBinaryZoneFunction {
    zone: I_Zone;
}
export class _RunBinaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R, T1, T2>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg1: T1, arg2: T2) => R,
            arg1: T1,
            arg2: T2
        ) => R
    ) {
        dart.async._runBinaryZoneFunction(this, zone, phunction);
    }
}
