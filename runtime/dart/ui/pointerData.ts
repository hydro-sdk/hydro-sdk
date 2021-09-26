import { Duration, IDuration } from "../core/duration";
import { PointerChange } from "./pointerChange";
import { PointerDeviceKind } from "./pointerDeviceKind";
import { PointerSignalKind } from "./pointerSignalKind";
declare const dart: {
    ui: {
        pointerData: (
            this: void,
            pointerData: IPointerData,
            props: {
                buttons: number;
                change: PointerChange;
                device: number;
                distance: number;
                distanceMax: number;
                embedderId: number;
                kind: PointerDeviceKind;
                obscured: boolean;
                orientation: number;
                physicalDeltaX: number;
                physicalDeltaY: number;
                physicalX: number;
                physicalY: number;
                platformData: number;
                pointerIdentifier: number;
                pressure: number;
                pressureMax: number;
                pressureMin: number;
                radiusMajor: number;
                radiusMax: number;
                radiusMin: number;
                radiusMinor: number;
                scrollDeltaX: number;
                scrollDeltaY: number;
                signalKind?: PointerSignalKind | undefined;
                size: number;
                synthesized: boolean;
                tilt: number;
                timeStamp: IDuration;
            }
        ) => IPointerData;
    };
};
export interface IPointerData {
    embedderId: number;
    timeStamp: IDuration;
    change: PointerChange;
    kind: PointerDeviceKind;
    signalKind: PointerSignalKind | undefined;
    device: number;
    pointerIdentifier: number;
    physicalX: number;
    physicalY: number;
    physicalDeltaX: number;
    physicalDeltaY: number;
    buttons: number;
    obscured: boolean;
    synthesized: boolean;
    pressure: number;
    pressureMin: number;
    pressureMax: number;
    distance: number;
    distanceMax: number;
    size: number;
    radiusMajor: number;
    radiusMinor: number;
    radiusMin: number;
    radiusMax: number;
    orientation: number;
    tilt: number;
    platformData: number;
    scrollDeltaX: number;
    scrollDeltaY: number;
    toString: () => string;
    toStringFull: () => string;
}
export class PointerData {
    public readonly embedderId: number = undefined as any;
    public readonly timeStamp: IDuration = undefined as any;
    public readonly change: PointerChange = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
    public readonly signalKind: PointerSignalKind | undefined =
        undefined as any;
    public readonly device: number = undefined as any;
    public readonly pointerIdentifier: number = undefined as any;
    public readonly physicalX: number = undefined as any;
    public readonly physicalY: number = undefined as any;
    public readonly physicalDeltaX: number = undefined as any;
    public readonly physicalDeltaY: number = undefined as any;
    public readonly buttons: number = undefined as any;
    public readonly obscured: boolean = undefined as any;
    public readonly synthesized: boolean = undefined as any;
    public readonly pressure: number = undefined as any;
    public readonly pressureMin: number = undefined as any;
    public readonly pressureMax: number = undefined as any;
    public readonly distance: number = undefined as any;
    public readonly distanceMax: number = undefined as any;
    public readonly size: number = undefined as any;
    public readonly radiusMajor: number = undefined as any;
    public readonly radiusMinor: number = undefined as any;
    public readonly radiusMin: number = undefined as any;
    public readonly radiusMax: number = undefined as any;
    public readonly orientation: number = undefined as any;
    public readonly tilt: number = undefined as any;
    public readonly platformData: number = undefined as any;
    public readonly scrollDeltaX: number = undefined as any;
    public readonly scrollDeltaY: number = undefined as any;
    public constructor(props: {
        buttons?: number;
        change?: PointerChange;
        device?: number;
        distance?: number;
        distanceMax?: number;
        embedderId?: number;
        kind?: PointerDeviceKind;
        obscured?: boolean;
        orientation?: number;
        physicalDeltaX?: number;
        physicalDeltaY?: number;
        physicalX?: number;
        physicalY?: number;
        platformData?: number;
        pointerIdentifier?: number;
        pressure?: number;
        pressureMax?: number;
        pressureMin?: number;
        radiusMajor?: number;
        radiusMax?: number;
        radiusMin?: number;
        radiusMinor?: number;
        scrollDeltaX?: number;
        scrollDeltaY?: number;
        signalKind?: PointerSignalKind | undefined;
        size?: number;
        synthesized?: boolean;
        tilt?: number;
        timeStamp?: IDuration;
    }) {
        dart.ui.pointerData(this, {
            ...pointerDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_toStringFull: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
    public toStringFull(): string {
        return this._dart_toStringFull();
    }
}
const pointerDataDefaultProps = {
    buttons: 0,
    change: PointerChange.cancel,
    device: 0,
    distance: 0.0,
    distanceMax: 0.0,
    embedderId: 0,
    kind: PointerDeviceKind.touch,
    obscured: false,
    orientation: 0.0,
    physicalDeltaX: 0.0,
    physicalDeltaY: 0.0,
    physicalX: 0.0,
    physicalY: 0.0,
    platformData: 0,
    pointerIdentifier: 0,
    pressure: 0.0,
    pressureMax: 0.0,
    pressureMin: 0.0,
    radiusMajor: 0.0,
    radiusMax: 0.0,
    radiusMin: 0.0,
    radiusMinor: 0.0,
    scrollDeltaX: 0.0,
    scrollDeltaY: 0.0,
    size: 0.0,
    synthesized: false,
    tilt: 0.0,
    timeStamp: Duration.zero,
};
