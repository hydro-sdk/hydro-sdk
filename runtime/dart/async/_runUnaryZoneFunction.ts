import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _runUnaryZoneFunction: (
            this: void,
            _runUnaryZoneFunction: I_RunUnaryZoneFunction,
            zone: I_Zone,
            phunction: <R, T>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: (arg: T) => R,
                arg: T
            ) => R
        ) => I_RunUnaryZoneFunction;
    };
};
export interface I_RunUnaryZoneFunction {
    zone: I_Zone;
}
export class _RunUnaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R, T>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: (arg: T) => R,
            arg: T
        ) => R
    ) {
        dart.async._runUnaryZoneFunction(this, zone, phunction);
    }
}
