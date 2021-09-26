import { I_Zone } from "./_zone";
declare const dart: {
    async: {
        _zoneFunction: <T>(
            this: void,
            _zoneFunction: I_ZoneFunction<T>,
            zone: I_Zone,
            phunction: T
        ) => I_ZoneFunction<T>;
    };
};
export interface I_ZoneFunction<T> {
    zone: I_Zone;
}
export class _ZoneFunction<T> {
    public readonly zone: I_Zone = undefined as any;
    public constructor(zone: I_Zone, phunction: T) {
        dart.async._zoneFunction(this, zone, phunction);
    }
}
