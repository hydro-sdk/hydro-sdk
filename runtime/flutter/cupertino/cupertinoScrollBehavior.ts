import { ISet } from "../../dart/core/set";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { TargetPlatform } from "../foundation/targetPlatform";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IVelocityTracker } from "../gestures/velocityTracker";
import { AxisDirection } from "../painting/axisDirection";
import { AndroidOverscrollIndicator } from "../widgets/androidOverscrollIndicator";
import { IBuildContext } from "../widgets/buildContext";
import { IScrollableDetails } from "../widgets/scrollableDetails";
import { IScrollBehavior } from "../widgets/scrollBehavior";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        cupertinoScrollBehavior: (
            this: void,
            cupertinoScrollBehavior: ICupertinoScrollBehavior
        ) => ICupertinoScrollBehavior;
    };
};
export interface ICupertinoScrollBehavior {
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
    getScrollPhysics: (context: IBuildContext) => IScrollPhysics;
    copyWith: (props?: {
        androidOverscrollIndicator?: AndroidOverscrollIndicator | undefined;
        dragDevices?: ISet<PointerDeviceKind> | undefined;
        overscroll?: boolean | undefined;
        physics?: IScrollPhysics | undefined;
        platform?: TargetPlatform | undefined;
        scrollbars?: boolean | undefined;
    }) => IScrollBehavior;
    getPlatform: (context: IBuildContext) => TargetPlatform;
    buildViewportChrome: (
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ) => IWidget;
    velocityTrackerBuilder: (
        context: IBuildContext
    ) => (event: IPointerEvent) => IVelocityTracker;
    shouldNotify: (oldDelegate: unknown) => boolean;
    toString: () => string;
    getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator;
    getDragDevices: () => ISet<PointerDeviceKind>;
    getHashCode: () => number;
}
export class CupertinoScrollBehavior implements IScrollBehavior {
    public constructor() {
        flutter.cupertino.cupertinoScrollBehavior(this);
    }
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
    private readonly _dart_getScrollPhysics: (
        context: IBuildContext
    ) => IScrollPhysics = undefined as any;
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
    private readonly _dart_buildViewportChrome: (
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ) => IWidget = undefined as any;
    private readonly _dart_velocityTrackerBuilder: (
        context: IBuildContext
    ) => (event: IPointerEvent) => IVelocityTracker = undefined as any;
    private readonly _dart_shouldNotify: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator =
        undefined as any;
    private readonly _dart_getDragDevices: () => ISet<PointerDeviceKind> =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    public getScrollPhysics(context: IBuildContext): IScrollPhysics {
        return this._dart_getScrollPhysics(context);
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
    public buildViewportChrome(
        context: IBuildContext,
        child: IWidget,
        axisDirection: AxisDirection
    ): IWidget {
        return this._dart_buildViewportChrome(context, child, axisDirection);
    }
    public velocityTrackerBuilder(
        context: IBuildContext
    ): (event: IPointerEvent) => IVelocityTracker {
        return this._dart_velocityTrackerBuilder(context);
    }
    public shouldNotify(oldDelegate: any): boolean {
        return this._dart_shouldNotify(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getAndroidOverscrollIndicator(): AndroidOverscrollIndicator {
        return this._dart_getAndroidOverscrollIndicator();
    }
    public getDragDevices(): ISet<PointerDeviceKind> {
        return this._dart_getDragDevices();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
