import { IDuration } from "../../dart/core/duration";
import { IOffset } from "../../dart/ui/offset";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { I_CopyPointerRemovedEvent } from "./_copyPointerRemovedEvent";
import { I_PointerEventDescription } from "./_pointerEventDescription";
import { I_TransformedPointerEvent } from "./_transformedPointerEvent";
import { IPointerEvent } from "./pointerEvent";
import { IPointerRemovedEvent } from "./pointerRemovedEvent";
declare const flutter: {
    gestures: {
        _transformedPointerRemovedEvent: (
            this: void,
            _transformedPointerRemovedEvent: I_TransformedPointerRemovedEvent,
            original: IPointerRemovedEvent,
            transform: IMatrix4
        ) => I_TransformedPointerRemovedEvent;
    };
};
export interface I_TransformedPointerRemovedEvent {
    original: IPointerRemovedEvent;
    transform: IMatrix4;
    localPosition: IOffset;
    localDelta: IOffset;
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
    transformed: (transform?: IMatrix4 | undefined) => IPointerRemovedEvent;
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
    }) => IPointerRemovedEvent;
    getOriginal: () => IPointerEvent;
    getTransform: () => IMatrix4;
    getEmbedderId: () => number;
    getTimeStamp: () => IDuration;
    getPointer: () => number;
    getKind: () => PointerDeviceKind;
    getDevice: () => number;
    getPosition: () => IOffset;
    getDelta: () => IOffset;
    getButtons: () => number;
    getDown: () => boolean;
    getObscured: () => boolean;
    getPressure: () => number;
    getPressureMin: () => number;
    getPressureMax: () => number;
    getDistance: () => number;
    getDistanceMin: () => number;
    getDistanceMax: () => number;
    getSize: () => number;
    getRadiusMajor: () => number;
    getRadiusMinor: () => number;
    getRadiusMin: () => number;
    getRadiusMax: () => number;
    getOrientation: () => number;
    getTilt: () => number;
    getPlatformData: () => number;
    getSynthesized: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringFull: () => string;
    getHashCode: () => number;
    getLocalPosition: () => IOffset;
    getLocalDelta: () => IOffset;
}
export class _TransformedPointerRemovedEvent
    implements
        Omit<I_TransformedPointerEvent, "copyWith" | "debugFillProperties">,
        I_CopyPointerRemovedEvent,
        IDiagnosticable,
        I_PointerEventDescription,
        Omit<IPointerRemovedEvent, "debugFillProperties">,
        Omit<IPointerEvent, "copyWith" | "debugFillProperties">
{
    public readonly original: IPointerRemovedEvent = undefined as any;
    public readonly transform: IMatrix4 = undefined as any;
    public readonly localPosition: IOffset = undefined as any;
    public readonly localDelta: IOffset = undefined as any;
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
    public constructor(original: IPointerRemovedEvent, transform: IMatrix4) {
        flutter.gestures._transformedPointerRemovedEvent(
            this,
            original,
            transform
        );
    }
    private readonly _dart_transformed: (
        transform?: IMatrix4 | undefined
    ) => IPointerRemovedEvent = undefined as any;
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
    }) => IPointerRemovedEvent = undefined as any;
    private readonly _dart_getOriginal: () => IPointerEvent = undefined as any;
    private readonly _dart_getTransform: () => IMatrix4 = undefined as any;
    private readonly _dart_getEmbedderId: () => number = undefined as any;
    private readonly _dart_getTimeStamp: () => IDuration = undefined as any;
    private readonly _dart_getPointer: () => number = undefined as any;
    private readonly _dart_getKind: () => PointerDeviceKind = undefined as any;
    private readonly _dart_getDevice: () => number = undefined as any;
    private readonly _dart_getPosition: () => IOffset = undefined as any;
    private readonly _dart_getDelta: () => IOffset = undefined as any;
    private readonly _dart_getButtons: () => number = undefined as any;
    private readonly _dart_getDown: () => boolean = undefined as any;
    private readonly _dart_getObscured: () => boolean = undefined as any;
    private readonly _dart_getPressure: () => number = undefined as any;
    private readonly _dart_getPressureMin: () => number = undefined as any;
    private readonly _dart_getPressureMax: () => number = undefined as any;
    private readonly _dart_getDistance: () => number = undefined as any;
    private readonly _dart_getDistanceMin: () => number = undefined as any;
    private readonly _dart_getDistanceMax: () => number = undefined as any;
    private readonly _dart_getSize: () => number = undefined as any;
    private readonly _dart_getRadiusMajor: () => number = undefined as any;
    private readonly _dart_getRadiusMinor: () => number = undefined as any;
    private readonly _dart_getRadiusMin: () => number = undefined as any;
    private readonly _dart_getRadiusMax: () => number = undefined as any;
    private readonly _dart_getOrientation: () => number = undefined as any;
    private readonly _dart_getTilt: () => number = undefined as any;
    private readonly _dart_getPlatformData: () => number = undefined as any;
    private readonly _dart_getSynthesized: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringFull: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getLocalPosition: () => IOffset = undefined as any;
    private readonly _dart_getLocalDelta: () => IOffset = undefined as any;
    public transformed(transform?: IMatrix4 | undefined): IPointerRemovedEvent {
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
    }): IPointerRemovedEvent {
        return this._dart_copyWith(props);
    }
    public getOriginal(): IPointerEvent {
        return this._dart_getOriginal();
    }
    public getTransform(): IMatrix4 {
        return this._dart_getTransform();
    }
    public getEmbedderId(): number {
        return this._dart_getEmbedderId();
    }
    public getTimeStamp(): IDuration {
        return this._dart_getTimeStamp();
    }
    public getPointer(): number {
        return this._dart_getPointer();
    }
    public getKind(): PointerDeviceKind {
        return this._dart_getKind();
    }
    public getDevice(): number {
        return this._dart_getDevice();
    }
    public getPosition(): IOffset {
        return this._dart_getPosition();
    }
    public getDelta(): IOffset {
        return this._dart_getDelta();
    }
    public getButtons(): number {
        return this._dart_getButtons();
    }
    public getDown(): boolean {
        return this._dart_getDown();
    }
    public getObscured(): boolean {
        return this._dart_getObscured();
    }
    public getPressure(): number {
        return this._dart_getPressure();
    }
    public getPressureMin(): number {
        return this._dart_getPressureMin();
    }
    public getPressureMax(): number {
        return this._dart_getPressureMax();
    }
    public getDistance(): number {
        return this._dart_getDistance();
    }
    public getDistanceMin(): number {
        return this._dart_getDistanceMin();
    }
    public getDistanceMax(): number {
        return this._dart_getDistanceMax();
    }
    public getSize(): number {
        return this._dart_getSize();
    }
    public getRadiusMajor(): number {
        return this._dart_getRadiusMajor();
    }
    public getRadiusMinor(): number {
        return this._dart_getRadiusMinor();
    }
    public getRadiusMin(): number {
        return this._dart_getRadiusMin();
    }
    public getRadiusMax(): number {
        return this._dart_getRadiusMax();
    }
    public getOrientation(): number {
        return this._dart_getOrientation();
    }
    public getTilt(): number {
        return this._dart_getTilt();
    }
    public getPlatformData(): number {
        return this._dart_getPlatformData();
    }
    public getSynthesized(): boolean {
        return this._dart_getSynthesized();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringFull(): string {
        return this._dart_toStringFull();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getLocalPosition(): IOffset {
        return this._dart_getLocalPosition();
    }
    public getLocalDelta(): IOffset {
        return this._dart_getLocalDelta();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};