import { I_Zone } from "./_zone";
import { IZone } from "./zone";
import { IZoneDelegate } from "./zoneDelegate";
declare const dart: {
    async: {
        _registerNullaryZoneFunction: (
            this: void,
            _registerNullaryZoneFunction: I_RegisterNullaryZoneFunction,
            zone: I_Zone,
            phunction: <R>(
                self: IZone,
                parent: IZoneDelegate,
                zone: IZone,
                f: () => R
            ) => () => R
        ) => I_RegisterNullaryZoneFunction;
    };
};
export interface I_RegisterNullaryZoneFunction {
    zone: I_Zone;
}
export class _RegisterNullaryZoneFunction {
    public readonly zone: I_Zone = undefined as any;
    public constructor(
        zone: I_Zone,
        phunction: <R>(
            self: IZone,
            parent: IZoneDelegate,
            zone: IZone,
            f: () => R
        ) => () => R
    ) {
        dart.async._registerNullaryZoneFunction(this, zone, phunction);
    }
}
