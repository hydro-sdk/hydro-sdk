import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IPointerEvent } from "./pointerEvent";
declare const flutter: {
    gestures: {
        _abstractPointerEvent: (
            this: void,
            _abstractPointerEvent: I_AbstractPointerEvent
        ) => I_AbstractPointerEvent;
    };
};
export interface I_AbstractPointerEvent {
    embedderId: number;
    timeStamp: IDuration;
    pointer: number;
    kind: PointerDeviceKind;
    device: number;
    position: IOffset;
    delta: IOffset;
    buttons: number;
    down: boolean;
    obscured: boolean;
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
    synthesized: boolean;
    transform: IMatrix4 | undefined;
    original: IPointerEvent | undefined;
    transformed: (transform?: IMatrix4 | undefined) => IPointerEvent;
    copyWith: (props?: {
        buttons?: number | undefined;
        delta?: IOffset | undefined;
        device?: number | undefined;
        distance?: number | undefined;
        distanceMax?: number | undefined;
        embedderId?: number | undefined;
        kind?: PointerDeviceKind | undefined;
        obscured?: boolean | undefined;
        orientation?: number | undefined;
        pointer?: number | undefined;
        position?: IOffset | undefined;
        pressure?: number | undefined;
        pressureMax?: number | undefined;
        pressureMin?: number | undefined;
        radiusMajor?: number | undefined;
        radiusMax?: number | undefined;
        radiusMin?: number | undefined;
        radiusMinor?: number | undefined;
        size?: number | undefined;
        synthesized?: boolean | undefined;
        tilt?: number | undefined;
        timeStamp?: IDuration | undefined;
    }) => IPointerEvent;
    getLocalPosition: () => IOffset;
    getLocalDelta: () => IOffset;
    getDistanceMin: () => number;
}
export class _AbstractPointerEvent
    implements IDiagnosticable, Omit<IPointerEvent>
{
    public readonly embedderId: number = undefined as any;
    public readonly timeStamp: IDuration = undefined as any;
    public readonly pointer: number = undefined as any;
    public readonly kind: PointerDeviceKind = undefined as any;
    public readonly device: number = undefined as any;
    public readonly position: IOffset = undefined as any;
    public readonly delta: IOffset = undefined as any;
    public readonly buttons: number = undefined as any;
    public readonly down: boolean = undefined as any;
    public readonly obscured: boolean = undefined as any;
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
    public readonly synthesized: boolean = undefined as any;
    public readonly transform: IMatrix4 | undefined = undefined as any;
    public readonly original: IPointerEvent | undefined = undefined as any;
    public constructor() {
        flutter.gestures._abstractPointerEvent(this);
    }
    private readonly _dart_transformed: (
        transform?: IMatrix4 | undefined
    ) => IPointerEvent = undefined as any;
    private readonly _dart_copyWith: (props?: {
        buttons?: number | undefined;
        delta?: IOffset | undefined;
        device?: number | undefined;
        distance?: number | undefined;
        distanceMax?: number | undefined;
        embedderId?: number | undefined;
        kind?: PointerDeviceKind | undefined;
        obscured?: boolean | undefined;
        orientation?: number | undefined;
        pointer?: number | undefined;
        position?: IOffset | undefined;
        pressure?: number | undefined;
        pressureMax?: number | undefined;
        pressureMin?: number | undefined;
        radiusMajor?: number | undefined;
        radiusMax?: number | undefined;
        radiusMin?: number | undefined;
        radiusMinor?: number | undefined;
        size?: number | undefined;
        synthesized?: boolean | undefined;
        tilt?: number | undefined;
        timeStamp?: IDuration | undefined;
    }) => IPointerEvent = undefined as any;
    private readonly _dart_getLocalPosition: () => IOffset = undefined as any;
    private readonly _dart_getLocalDelta: () => IOffset = undefined as any;
    private readonly _dart_getDistanceMin: () => number = undefined as any;
    public transformed(transform?: IMatrix4 | undefined): IPointerEvent {
        return this._dart_transformed(transform);
    }
    public copyWith(props?: {
        buttons?: number | undefined;
        delta?: IOffset | undefined;
        device?: number | undefined;
        distance?: number | undefined;
        distanceMax?: number | undefined;
        embedderId?: number | undefined;
        kind?: PointerDeviceKind | undefined;
        obscured?: boolean | undefined;
        orientation?: number | undefined;
        pointer?: number | undefined;
        position?: IOffset | undefined;
        pressure?: number | undefined;
        pressureMax?: number | undefined;
        pressureMin?: number | undefined;
        radiusMajor?: number | undefined;
        radiusMax?: number | undefined;
        radiusMin?: number | undefined;
        radiusMinor?: number | undefined;
        size?: number | undefined;
        synthesized?: boolean | undefined;
        tilt?: number | undefined;
        timeStamp?: IDuration | undefined;
    }): IPointerEvent {
        return this._dart_copyWith(props);
    }
    public getLocalPosition(): IOffset {
        return this._dart_getLocalPosition();
    }
    public getLocalDelta(): IOffset {
        return this._dart_getLocalDelta();
    }
    public getDistanceMin(): number {
        return this._dart_getDistanceMin();
    }
}
