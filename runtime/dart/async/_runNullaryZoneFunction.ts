import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _runNullaryZoneFunction: (
            this: void,
            _runNullaryZoneFunction: I_RunNullaryZoneFunction,
            zone: I_Zone,
            phunction: <R>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: () => R
            ) => R
        ) => I_RunNullaryZoneFunction;
    };
};
export interface I_RunNullaryZoneFunction {
    zone: I_Zone;
}
export class _RunNullaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: () => R
        ) => R
    ) {
        dart.async._runNullaryZoneFunction(this, zone, phunction);
    }
}
