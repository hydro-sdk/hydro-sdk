
import { AndroidOverscrollIndicator } from "./androidOverscrollIndicator";
import { ISet } from "../../dart/core/set";
import { PointerDeviceKind } from "../../dart/ui/pointerDeviceKind";
import { IScrollPhysics } from "./scrollPhysics";
import { TargetPlatform } from "../foundation/targetPlatform";
import { IScrollBehavior } from "./scrollBehavior";
import { IBuildContext } from "./buildContext";
import { IWidget } from "./widget";
import { IScrollableDetails } from "./scrollableDetails";
import { AxisDirection } from "../painting/axisDirection";
import { IPointerEvent } from "../gestures/pointerEvent";
import { IVelocityTracker } from "../gestures/velocityTracker";
declare const flutter: {
widgets: {
_wrappedScrollBehavior: (this: void, _wrappedScrollBehavior: I_WrappedScrollBehavior, props : {  androidOverscrollIndicator? : AndroidOverscrollIndicator | undefined, dragDevices? : ISet<PointerDeviceKind> | undefined, overscroll : boolean, physics? : IScrollPhysics | undefined, platform? : TargetPlatform | undefined, scrollbars : boolean, delegate : IScrollBehavior,}) => I_WrappedScrollBehavior
}
};
export interface I_WrappedScrollBehavior


{
delegate: IScrollBehavior;
scrollbars: boolean;
overscroll: boolean;
physics: IScrollPhysics | undefined;
platform: TargetPlatform | undefined;
getDragDevices: () => ISet<PointerDeviceKind>;
getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator;
buildOverscrollIndicator: (context: IBuildContext, child: IWidget, details: IScrollableDetails) => IWidget;
buildScrollbar: (context: IBuildContext, child: IWidget, details: IScrollableDetails) => IWidget;
buildViewportChrome: (context: IBuildContext, child: IWidget, axisDirection: AxisDirection) => IWidget;
copyWith: ( props? : {  androidOverscrollIndicator? : AndroidOverscrollIndicator | undefined, dragDevices? : ISet<PointerDeviceKind> | undefined, overscroll? : boolean | undefined, physics? : IScrollPhysics | undefined, platform? : TargetPlatform | undefined, scrollbars? : boolean | undefined,}) => IScrollBehavior;
getPlatform: (context: IBuildContext) => TargetPlatform;
getScrollPhysics: (context: IBuildContext) => IScrollPhysics;
shouldNotify: (oldDelegate: unknown) => boolean;
velocityTrackerBuilder: (context: IBuildContext) => (event: IPointerEvent) => IVelocityTracker;
toString: () => string;
}export class _WrappedScrollBehavior

 implements IScrollBehavior
{    public readonly delegate: IScrollBehavior = undefined as any;
    public readonly scrollbars: boolean = undefined as any;
    public readonly overscroll: boolean = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly platform: TargetPlatform | undefined = undefined as any;
public constructor( props : {  androidOverscrollIndicator? : AndroidOverscrollIndicator | undefined, dragDevices? : ISet<PointerDeviceKind> | undefined, overscroll? : boolean, physics? : IScrollPhysics | undefined, platform? : TargetPlatform | undefined, scrollbars? : boolean, delegate : IScrollBehavior,}){
flutter.widgets._wrappedScrollBehavior(this, {
..._wrappedScrollBehaviorDefaultProps,
...props
});}
    private readonly _dart_getDragDevices: () => ISet<PointerDeviceKind> = undefined as any;
    private readonly _dart_getAndroidOverscrollIndicator: () => AndroidOverscrollIndicator = undefined as any;
    private readonly _dart_buildOverscrollIndicator: (context: IBuildContext, child: IWidget, details: IScrollableDetails) => IWidget = undefined as any;
    private readonly _dart_buildScrollbar: (context: IBuildContext, child: IWidget, details: IScrollableDetails) => IWidget = undefined as any;
    private readonly _dart_buildViewportChrome: (context: IBuildContext, child: IWidget, axisDirection: AxisDirection) => IWidget = undefined as any;
    private readonly _dart_copyWith: ( props? : {  androidOverscrollIndicator? : AndroidOverscrollIndicator | undefined, dragDevices? : ISet<PointerDeviceKind> | undefined, overscroll? : boolean | undefined, physics? : IScrollPhysics | undefined, platform? : TargetPlatform | undefined, scrollbars? : boolean | undefined,}) => IScrollBehavior = undefined as any;
    private readonly _dart_getPlatform: (context: IBuildContext) => TargetPlatform = undefined as any;
    private readonly _dart_getScrollPhysics: (context: IBuildContext) => IScrollPhysics = undefined as any;
    private readonly _dart_shouldNotify: (oldDelegate: any) => boolean = undefined as any;
    private readonly _dart_velocityTrackerBuilder: (context: IBuildContext) => (event: IPointerEvent) => IVelocityTracker = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getDragDevices() : ISet<PointerDeviceKind> {
    return this._dart_getDragDevices();
}
public getAndroidOverscrollIndicator() : AndroidOverscrollIndicator {
    return this._dart_getAndroidOverscrollIndicator();
}
public buildOverscrollIndicator(context: IBuildContext, child: IWidget, details: IScrollableDetails) : IWidget {
    return this._dart_buildOverscrollIndicator(context, child, details);
}
public buildScrollbar(context: IBuildContext, child: IWidget, details: IScrollableDetails) : IWidget {
    return this._dart_buildScrollbar(context, child, details);
}
public buildViewportChrome(context: IBuildContext, child: IWidget, axisDirection: AxisDirection) : IWidget {
    return this._dart_buildViewportChrome(context, child, axisDirection);
}
public copyWith( props? : {  androidOverscrollIndicator? : AndroidOverscrollIndicator | undefined, dragDevices? : ISet<PointerDeviceKind> | undefined, overscroll? : boolean | undefined, physics? : IScrollPhysics | undefined, platform? : TargetPlatform | undefined, scrollbars? : boolean | undefined,}) : IScrollBehavior {
    return this._dart_copyWith(props);
}
public getPlatform(context: IBuildContext) : TargetPlatform {
    return this._dart_getPlatform(context);
}
public getScrollPhysics(context: IBuildContext) : IScrollPhysics {
    return this._dart_getScrollPhysics(context);
}
public shouldNotify(oldDelegate: any) : boolean {
    return this._dart_shouldNotify(oldDelegate);
}
public velocityTrackerBuilder(context: IBuildContext) : (event: IPointerEvent) => IVelocityTracker {
    return this._dart_velocityTrackerBuilder(context);
}
public toString() : string {
    return this._dart_toString();
}
}
const _wrappedScrollBehaviorDefaultProps = {
    overscroll: true,
    scrollbars: true,
};
