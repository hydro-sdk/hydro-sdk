import { BasicMessageChannel } from "./basicMessageChannel";
import { JSONMessageCodec } from "./jSONMessageCodec";
import { JSONMethodCodec } from "./jSONMethodCodec";
import { MethodChannel } from "./methodChannel";
import { OptionalMethodChannel } from "./optionalMethodChannel";
import { StandardMessageCodec } from "./standardMessageCodec";
import { StringCodec } from "./stringCodec";
export interface ISystemChannels {}
export class SystemChannels {
    public static navigation = new OptionalMethodChannel(
        "flutter/navigation",
        new JSONMethodCodec()
    );
    public static platform = new OptionalMethodChannel(
        "flutter/platform",
        new JSONMethodCodec()
    );
    public static textInput = new OptionalMethodChannel(
        "flutter/textinput",
        new JSONMethodCodec()
    );
    public static keyEvent = new BasicMessageChannel(
        "flutter/keyevent",
        new JSONMessageCodec()
    );
    public static lifecycle = new BasicMessageChannel(
        "flutter/lifecycle",
        new StringCodec()
    );
    public static system = new BasicMessageChannel(
        "flutter/system",
        new JSONMessageCodec()
    );
    public static accessibility = new BasicMessageChannel(
        "flutter/accessibility",
        new StandardMessageCodec()
    );
    public static platform_views = new MethodChannel("flutter/platform_views");
    public static skia = new MethodChannel(
        "flutter/skia",
        new JSONMethodCodec()
    );
    public static mouseCursor = new OptionalMethodChannel(
        "flutter/mousecursor"
    );
    public static restoration = new OptionalMethodChannel(
        "flutter/restoration"
    );
    public static deferredComponent = new OptionalMethodChannel(
        "flutter/deferredcomponent"
    );
    public static localization = new OptionalMethodChannel(
        "flutter/localization",
        new JSONMethodCodec()
    );
}
