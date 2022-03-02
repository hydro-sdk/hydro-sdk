import { ISet } from "../../dart/core/set";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { TargetPlatform } from "../foundation/targetPlatform";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IVelocityTracker } from "../gestures/velocityTracker";
import { AxisDirection } from "../painting/axisDirection";
import { AndroidOverscrollIndicator } from "./androidOverscrollIndicator";
import { BouncingScrollPhysics } from "./bouncingScrollPhysics";
import { IBuildContext } from "./buildContext";
import { ClampingScrollPhysics } from "./clampingScrollPhysics";
import { IScrollableDetails } from "./scrollableDetails";
import { IScrollPhysics } from "./scrollPhysics";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        scrollBehavior: (
            this: void,
            scrollBehavior: IScrollBehavior,
            props?: {
                androidOverscrollIndicator?:
                    | AndroidOverscrollIndicator
                    | undefined;
            }
        ) => IScrollBehavior;
    };
};
export interface IScrollBehavior {
    getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator;
    copyWith: (props?: {
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        dragDevices?: ISet<PointerDeviceKind> | undefined;
        overscroll?: boolean | undefined;
        physics?: IScrollPhysics | undefined;
        platform?: TargetPlatform | undefined;
        scrollbars?: boolean | undefined;
    }) => IScrollBehavior;
    getPlatform: (context: IBuildContext) => TargetPlatform;
    getDragDevices: () => ISet<PointerDeviceKind>;
    buildViewportChrome: (
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ) => IWidget;
    buildScrollbar: (
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ) => IWidget;
    buildOverscrollIndicator: (
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ) => IWidget;
    velocityTrackerBuilder: (
        context: IBuildContext
    ) => (event: IPointerEvent) => IVelocityTracker;
    getScrollPhysics: (context: IBuildContext) => IScrollPhysics;
    shouldNotify: (oldDelegate: unknown) => boolean;
    toString: () => string;
}
export class ScrollBehavior {
    public static _bouncingPhysics = new BouncingScrollPhysics();
    public static _clampingPhysics = new ClampingScrollPhysics();
    public constructor(props?: {
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
    }) {
        flutter.widgets.scrollBehavior(this, props);
    }
    private readonly _dart_getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator =
        undefined as any;
    private readonly _dart_copyWith: (props?: {
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        dragDevices?: ISet<PointerDeviceKind> | undefined;
        overscroll?: boolean | undefined;
        physics?: IScrollPhysics | undefined;
        platform?: TargetPlatform | undefined;
        scrollbars?: boolean | undefined;
    }) => IScrollBehavior = undefined as any;
    private readonly _dart_getPlatform: (
        context: IBuildContext
    ) => TargetPlatform = undefined as any;
    private readonly _dart_getDragDevices: () => ISet<PointerDeviceKind> =
        undefined as any;
    private readonly _dart_buildViewportChrome: (
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ) => IWidget = undefined as any;
    private readonly _dart_buildScrollbar: (
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ) => IWidget = undefined as any;
    private readonly _dart_buildOverscrollIndicator: (
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ) => IWidget = undefined as any;
    private readonly _dart_velocityTrackerBuilder: (
        context: IBuildContext
    ) => (event: IPointerEvent) => IVelocityTracker = undefined as any;
    private readonly _dart_getScrollPhysics: (
        context: IBuildContext
    ) => IScrollPhysics = undefined as any;
    private readonly _dart_shouldNotify: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getAndroidOverscrollIndicator(): AndroidOverscrollIndicator {
        return this._dart_getAndroidOverscrollIndicator();
    }
    public copyWith(props?: {
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        dragDevices?: ISet<PointerDeviceKind> | undefined;
        overscroll?: boolean | undefined;
        physics?: IScrollPhysics | undefined;
        platform?: TargetPlatform | undefined;
        scrollbars?: boolean | undefined;
    }): IScrollBehavior {
        return this._dart_copyWith(props);
    }
    public getPlatform(context: IBuildContext): TargetPlatform {
        return this._dart_getPlatform(context);
    }
    public getDragDevices(): ISet<PointerDeviceKind> {
        return this._dart_getDragDevices();
    }
    public buildViewportChrome(
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ): IWidget {
        return this._dart_buildViewportChrome(context, child, axisDirection);
    }
    public buildScrollbar(
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ): IWidget {
        return this._dart_buildScrollbar(context, child, details);
    }
    public buildOverscrollIndicator(
        context: IBuildContext,
        child: IWidget,
        details: IScrollableDetails
    ): IWidget {
        return this._dart_buildOverscrollIndicator(context, child, details);
    }
    public velocityTrackerBuilder(
        context: IBuildContext
    ): (event: IPointerEvent) => IVelocityTracker {
        return this._dart_velocityTrackerBuilder(context);
    }
    public getScrollPhysics(context: IBuildContext): IScrollPhysics {
        return this._dart_getScrollPhysics(context);
    }
    public shouldNotify(oldDelegate: any): boolean {
        return this._dart_shouldNotify(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
