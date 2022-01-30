import { IOffset, Offset } from "../../dart/ui/offset";
declare const flutter: {
    gestures: {
        scaleUpdateDetails: (
            this: void,
            scaleUpdateDetails: IScaleUpdateDetails,
            props: {
                focalPoint: IOffset;
                focalPointDelta: IOffset;
                horizontalScale: number;
                localFocalPoint?: IOffset | undefined;
                pointerCount: number;
                rotation: number;
                scale: number;
                verticalScale: number;
            }
        ) => IScaleUpdateDetails;
    };
};
export interface IScaleUpdateDetails {
    focalPointDelta: IOffset;
    focalPoint: IOffset;
    localFocalPoint: IOffset;
    scale: number;
    horizontalScale: number;
    verticalScale: number;
    rotation: number;
    pointerCount: number;
    toString: () => string;
}
export class ScaleUpdateDetails {
    public readonly focalPointDelta: IOffset = undefined as any;
    public readonly focalPoint: IOffset = undefined as any;
    public readonly localFocalPoint: IOffset = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly horizontalScale: number = undefined as any;
    public readonly verticalScale: number = undefined as any;
    public readonly rotation: number = undefined as any;
    public readonly pointerCount: number = undefined as any;
    public constructor(props: {
        focalPoint?: IOffset;
        focalPointDelta?: IOffset;
        horizontalScale?: number;
        localFocalPoint?: IOffset | undefined;
        pointerCount?: number;
        rotation?: number;
        scale?: number;
        verticalScale?: number;
    }) {
        flutter.gestures.scaleUpdateDetails(this, {
            ...scaleUpdateDetailsDefaultProps,
            ...props,
        });
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
const scaleUpdateDetailsDefaultProps = {
    focalPoint: Offset.zero,
    focalPointDelta: Offset.zero,
    horizontalScale: 1.0,
    pointerCount: 0,
    rotation: 0.0,
    scale: 1.0,
    verticalScale: 1.0,
};
