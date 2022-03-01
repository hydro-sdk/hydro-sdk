
import { IDeviceGestureSettings,DeviceGestureSettings } from "../gestures/deviceGestureSettings";
import { NavigationMode } from "./navigationMode";
import { IEdgeInsets,EdgeInsets } from "../painting/edgeInsets";
import { Brightness } from "../../dart/ui/brightness";
import { ISize,Size } from "../../dart/ui/size";
import { Orientation } from "./orientation";
declare const flutter: {
widgets: {
mediaQueryData: (this: void, mediaQueryData: IMediaQueryData, props : {  accessibleNavigation : boolean, alwaysUse24HourFormat : boolean, boldText : boolean, devicePixelRatio : number, disableAnimations : boolean, gestureSettings : IDeviceGestureSettings, highContrast : boolean, invertColors : boolean, navigationMode : NavigationMode, padding : IEdgeInsets, platformBrightness : Brightness, size : ISize, systemGestureInsets : IEdgeInsets, textScaleFactor : number, viewInsets : IEdgeInsets, viewPadding : IEdgeInsets,}) => IMediaQueryData
}
};
export interface IMediaQueryData


{
size: ISize;
devicePixelRatio: number;
textScaleFactor: number;
platformBrightness: Brightness;
viewInsets: IEdgeInsets;
padding: IEdgeInsets;
viewPadding: IEdgeInsets;
systemGestureInsets: IEdgeInsets;
alwaysUse24HourFormat: boolean;
accessibleNavigation: boolean;
invertColors: boolean;
highContrast: boolean;
disableAnimations: boolean;
boldText: boolean;
navigationMode: NavigationMode;
gestureSettings: IDeviceGestureSettings;
getOrientation: () => Orientation;
copyWith: ( props? : {  accessibleNavigation? : boolean | undefined, alwaysUse24HourFormat? : boolean | undefined, boldText? : boolean | undefined, devicePixelRatio? : number | undefined, disableAnimations? : boolean | undefined, gestureSettings? : IDeviceGestureSettings | undefined, highContrast? : boolean | undefined, invertColors? : boolean | undefined, navigationMode? : NavigationMode | undefined, padding? : IEdgeInsets | undefined, platformBrightness? : Brightness | undefined, size? : ISize | undefined, systemGestureInsets? : IEdgeInsets | undefined, textScaleFactor? : number | undefined, viewInsets? : IEdgeInsets | undefined, viewPadding? : IEdgeInsets | undefined,}) => IMediaQueryData;
removePadding: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData;
removeViewInsets: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData;
removeViewPadding: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData;
getHashCode: () => number;
toString: () => string;
}export class MediaQueryData


{    public readonly size: ISize = undefined as any;
    public readonly devicePixelRatio: number = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly platformBrightness: Brightness = undefined as any;
    public readonly viewInsets: IEdgeInsets = undefined as any;
    public readonly padding: IEdgeInsets = undefined as any;
    public readonly viewPadding: IEdgeInsets = undefined as any;
    public readonly systemGestureInsets: IEdgeInsets = undefined as any;
    public readonly alwaysUse24HourFormat: boolean = undefined as any;
    public readonly accessibleNavigation: boolean = undefined as any;
    public readonly invertColors: boolean = undefined as any;
    public readonly highContrast: boolean = undefined as any;
    public readonly disableAnimations: boolean = undefined as any;
    public readonly boldText: boolean = undefined as any;
    public readonly navigationMode: NavigationMode = undefined as any;
    public readonly gestureSettings: IDeviceGestureSettings = undefined as any;
public constructor( props : {  accessibleNavigation? : boolean, alwaysUse24HourFormat? : boolean, boldText? : boolean, devicePixelRatio? : number, disableAnimations? : boolean, gestureSettings? : IDeviceGestureSettings, highContrast? : boolean, invertColors? : boolean, navigationMode? : NavigationMode, padding? : IEdgeInsets, platformBrightness? : Brightness, size? : ISize, systemGestureInsets? : IEdgeInsets, textScaleFactor? : number, viewInsets? : IEdgeInsets, viewPadding? : IEdgeInsets,}){
flutter.widgets.mediaQueryData(this, {
...mediaQueryDataDefaultProps,
...props
});}
    private readonly _dart_getOrientation: () => Orientation = undefined as any;
    private readonly _dart_copyWith: ( props? : {  accessibleNavigation? : boolean | undefined, alwaysUse24HourFormat? : boolean | undefined, boldText? : boolean | undefined, devicePixelRatio? : number | undefined, disableAnimations? : boolean | undefined, gestureSettings? : IDeviceGestureSettings | undefined, highContrast? : boolean | undefined, invertColors? : boolean | undefined, navigationMode? : NavigationMode | undefined, padding? : IEdgeInsets | undefined, platformBrightness? : Brightness | undefined, size? : ISize | undefined, systemGestureInsets? : IEdgeInsets | undefined, textScaleFactor? : number | undefined, viewInsets? : IEdgeInsets | undefined, viewPadding? : IEdgeInsets | undefined,}) => IMediaQueryData = undefined as any;
    private readonly _dart_removePadding: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData = undefined as any;
    private readonly _dart_removeViewInsets: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData = undefined as any;
    private readonly _dart_removeViewPadding: ( props : {  removeBottom : boolean, removeLeft : boolean, removeRight : boolean, removeTop : boolean,}) => IMediaQueryData = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getOrientation() : Orientation {
    return this._dart_getOrientation();
}
public copyWith( props? : {  accessibleNavigation? : boolean | undefined, alwaysUse24HourFormat? : boolean | undefined, boldText? : boolean | undefined, devicePixelRatio? : number | undefined, disableAnimations? : boolean | undefined, gestureSettings? : IDeviceGestureSettings | undefined, highContrast? : boolean | undefined, invertColors? : boolean | undefined, navigationMode? : NavigationMode | undefined, padding? : IEdgeInsets | undefined, platformBrightness? : Brightness | undefined, size? : ISize | undefined, systemGestureInsets? : IEdgeInsets | undefined, textScaleFactor? : number | undefined, viewInsets? : IEdgeInsets | undefined, viewPadding? : IEdgeInsets | undefined,}) : IMediaQueryData {
    return this._dart_copyWith(props);
}
public removePadding( props : {  removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean,}) : IMediaQueryData {
    return this._dart_removePadding({
...removePaddingDefaultProps,
...props
});
}
public removeViewInsets( props : {  removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean,}) : IMediaQueryData {
    return this._dart_removeViewInsets({
...removeViewInsetsDefaultProps,
...props
});
}
public removeViewPadding( props : {  removeBottom? : boolean, removeLeft? : boolean, removeRight? : boolean, removeTop? : boolean,}) : IMediaQueryData {
    return this._dart_removeViewPadding({
...removeViewPaddingDefaultProps,
...props
});
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
public toString() : string {
    return this._dart_toString();
}
}
const mediaQueryDataDefaultProps = {
    accessibleNavigation: false,
    alwaysUse24HourFormat: false,
    boldText: false,
    devicePixelRatio: 1.0,
    disableAnimations: false,
    gestureSettings: new DeviceGestureSettings(),
    highContrast: false,
    invertColors: false,
    navigationMode: NavigationMode.traditional,
    padding: EdgeInsets.zero,
    platformBrightness: Brightness.light,
    size: Size.zero,
    systemGestureInsets: EdgeInsets.zero,
    textScaleFactor: 1.0,
    viewInsets: EdgeInsets.zero,
    viewPadding: EdgeInsets.zero,
};
const removePaddingDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
const removeViewInsetsDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
const removeViewPaddingDefaultProps = {
    removeBottom: false,
    removeLeft: false,
    removeRight: false,
    removeTop: false,
};
