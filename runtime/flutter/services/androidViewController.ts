import { IFuture } from "../../dart/async/future";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IAndroidMotionEvent } from "./androidMotionEvent";
import { IPlatformViewController } from "./platformViewController";
declare const flutter: {
    services: {
        androidViewControllerPointerAction: (
            pointerId: number,
            action: number
        ) => number;
    };
};
export interface IAndroidViewController {
    viewId: number;
    create: () => IFuture<void>;
    setSize: (size: ISize) => IFuture<void>;
    getTextureId: () => number | undefined;
    sendMotionEvent: (event: IAndroidMotionEvent) => IFuture<void>;
    getPointTransformer: () => (position: IOffset) => IOffset;
    setPointTransformer: (transformer: (position: IOffset) => IOffset) => void;
    getIsCreated: () => boolean;
    addOnPlatformViewCreatedListener: (listener: (id: number) => void) => void;
    removeOnPlatformViewCreatedListener: (
        listener: (id: number) => void
    ) => void;
    setLayoutDirection: (layoutDirection: TextDirection) => IFuture<void>;
    dispatchPointerEvent: (event: IPointerEvent) => IFuture<void>;
    clearFocus: () => IFuture<void>;
    dispose: () => IFuture<void>;
    getViewId: () => number;
    toString: () => string;
    getHashCode: () => number;
}
export class AndroidViewController implements IPlatformViewController {
    public static kActionDown = 0;
    public static kActionUp = 1;
    public static kActionMove = 2;
    public static kActionCancel = 3;
    public static kActionPointerDown = 5;
    public static kActionPointerUp = 6;
    public static kAndroidLayoutDirectionLtr = 0;
    public static kAndroidLayoutDirectionRtl = 1;
    public readonly viewId: number = undefined as any;
    public static pointerAction(pointerId: number, action: number): number {
        return flutter.services.androidViewControllerPointerAction(
            pointerId,
            action
        );
    }
    private readonly _dart_create: () => IFuture<void> = undefined as any;
    private readonly _dart_setSize: (size: ISize) => IFuture<void> =
        undefined as any;
    private readonly _dart_getTextureId: () => number | undefined =
        undefined as any;
    private readonly _dart_sendMotionEvent: (
        event: IAndroidMotionEvent
    ) => IFuture<void> = undefined as any;
    private readonly _dart_getPointTransformer: () => (
        position: IOffset
    ) => IOffset = undefined as any;
    private readonly _dart_setPointTransformer: (
        transformer: (position: IOffset) => IOffset
    ) => void = undefined as any;
    private readonly _dart_getIsCreated: () => boolean = undefined as any;
    private readonly _dart_addOnPlatformViewCreatedListener: (
        listener: (id: number) => void
    ) => void = undefined as any;
    private readonly _dart_removeOnPlatformViewCreatedListener: (
        listener: (id: number) => void
    ) => void = undefined as any;
    private readonly _dart_setLayoutDirection: (
        layoutDirection: TextDirection
    ) => IFuture<void> = undefined as any;
    private readonly _dart_dispatchPointerEvent: (
        event: IPointerEvent
    ) => IFuture<void> = undefined as any;
    private readonly _dart_clearFocus: () => IFuture<void> = undefined as any;
    private readonly _dart_dispose: () => IFuture<void> = undefined as any;
    private readonly _dart_getViewId: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public create(): IFuture<void> {
        return this._dart_create();
    }
    public setSize(size: ISize): IFuture<void> {
        return this._dart_setSize(size);
    }
    public getTextureId(): number | undefined {
        return this._dart_getTextureId();
    }
    public sendMotionEvent(event: IAndroidMotionEvent): IFuture<void> {
        return this._dart_sendMotionEvent(event);
    }
    public getPointTransformer(): (position: IOffset) => IOffset {
        return this._dart_getPointTransformer();
    }
    public setPointTransformer(
        transformer: (position: IOffset) => IOffset
    ): void {
        return this._dart_setPointTransformer(transformer);
    }
    public getIsCreated(): boolean {
        return this._dart_getIsCreated();
    }
    public addOnPlatformViewCreatedListener(
        listener: (id: number) => void
    ): void {
        return this._dart_addOnPlatformViewCreatedListener(listener);
    }
    public removeOnPlatformViewCreatedListener(
        listener: (id: number) => void
    ): void {
        return this._dart_removeOnPlatformViewCreatedListener(listener);
    }
    public setLayoutDirection(layoutDirection: TextDirection): IFuture<void> {
        return this._dart_setLayoutDirection(layoutDirection);
    }
    public dispatchPointerEvent(event: IPointerEvent): IFuture<void> {
        return this._dart_dispatchPointerEvent(event);
    }
    public clearFocus(): IFuture<void> {
        return this._dart_clearFocus();
    }
    public dispose(): IFuture<void> {
        return this._dart_dispose();
    }
    public getViewId(): number {
        return this._dart_getViewId();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
