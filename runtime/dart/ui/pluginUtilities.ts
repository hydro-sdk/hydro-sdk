import { IFunction } from "../core/function";
import { ICallbackHandle } from "./callbackHandle";
declare const dart: {
    ui: {
        pluginUtilitiesGetCallbackHandle: (
            callback: IFunction
        ) => ICallbackHandle | undefined;
        pluginUtilitiesGetCallbackFromHandle: (
            handle: ICallbackHandle
        ) => IFunction | undefined;
    };
};
export interface IPluginUtilities {}
export class PluginUtilities {
    public static getCallbackHandle(
        callback: IFunction
    ): ICallbackHandle | undefined {
        return dart.ui.pluginUtilitiesGetCallbackHandle(callback);
    }
    public static getCallbackFromHandle(
        handle: ICallbackHandle
    ): IFunction | undefined {
        return dart.ui.pluginUtilitiesGetCallbackFromHandle(handle);
    }
}
