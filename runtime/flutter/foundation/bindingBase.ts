
import { ISingletonFlutterWindow } from "../../dart/ui/singletonFlutterWindow";
import { IPlatformDispatcher } from "../../dart/ui/platformDispatcher";
import { IFuture } from "../../dart/async/future";
declare const flutter: {
foundation: {
bindingBase: (this: void, bindingBase: IBindingBase) => IBindingBase
}
};
export interface IBindingBase


{
getWindow: () => ISingletonFlutterWindow;
getPlatformDispatcher: () => IPlatformDispatcher;
initInstances: () => void;
initServiceExtensions: () => void;
getLocked: () => boolean;
lockEvents: (callback : () => IFuture<void>) => IFuture<void>;
unlocked: () => void;
reassembleApplication: () => IFuture<void>;
performReassemble: () => IFuture<void>;
registerSignalServiceExtension: ( props : {  callback : () => IFuture<void>, name : string,}) => void;
registerBoolServiceExtension: ( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) => void;
registerNumericServiceExtension: ( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) => void;
postEvent: (eventKind: string, eventData: {[index: string]: any}) => void;
registerStringServiceExtension: ( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) => void;
registerServiceExtension: ( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) => void;
toString: () => string;
}export class BindingBase


{public constructor(){
flutter.foundation.bindingBase(this);}
    private readonly _dart_getWindow: () => ISingletonFlutterWindow = undefined as any;
    private readonly _dart_getPlatformDispatcher: () => IPlatformDispatcher = undefined as any;
    private readonly _dart_initInstances: () => void = undefined as any;
    private readonly _dart_initServiceExtensions: () => void = undefined as any;
    private readonly _dart_getLocked: () => boolean = undefined as any;
    private readonly _dart_lockEvents: (callback : () => IFuture<void>) => IFuture<void> = undefined as any;
    private readonly _dart_unlocked: () => void = undefined as any;
    private readonly _dart_reassembleApplication: () => IFuture<void> = undefined as any;
    private readonly _dart_performReassemble: () => IFuture<void> = undefined as any;
    private readonly _dart_registerSignalServiceExtension: ( props : {  callback : () => IFuture<void>, name : string,}) => void = undefined as any;
    private readonly _dart_registerBoolServiceExtension: ( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_registerNumericServiceExtension: ( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_postEvent: (eventKind: string, eventData: {[index: string]: any}) => void = undefined as any;
    private readonly _dart_registerStringServiceExtension: ( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) => void = undefined as any;
    private readonly _dart_registerServiceExtension: ( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
public getWindow() : ISingletonFlutterWindow {
    return this._dart_getWindow();
}
public getPlatformDispatcher() : IPlatformDispatcher {
    return this._dart_getPlatformDispatcher();
}
public initInstances() : void {
    return this._dart_initInstances();
}
public initServiceExtensions() : void {
    return this._dart_initServiceExtensions();
}
public getLocked() : boolean {
    return this._dart_getLocked();
}
public lockEvents(callback : () => IFuture<void>) : IFuture<void> {
    return this._dart_lockEvents(callback);
}
public unlocked() : void {
    return this._dart_unlocked();
}
public reassembleApplication() : IFuture<void> {
    return this._dart_reassembleApplication();
}
public performReassemble() : IFuture<void> {
    return this._dart_performReassemble();
}
public registerSignalServiceExtension( props : {  callback : () => IFuture<void>, name : string,}) : void {
    return this._dart_registerSignalServiceExtension(props);
}
public registerBoolServiceExtension( props : {  getter : () => IFuture<boolean>, name : string, setter : (value: boolean) => IFuture<void>,}) : void {
    return this._dart_registerBoolServiceExtension(props);
}
public registerNumericServiceExtension( props : {  getter : () => IFuture<number>, name : string, setter : (value: number) => IFuture<void>,}) : void {
    return this._dart_registerNumericServiceExtension(props);
}
public postEvent(eventKind: string, eventData: {[index: string]: any}) : void {
    return this._dart_postEvent(eventKind, eventData);
}
public registerStringServiceExtension( props : {  getter : () => IFuture<string>, name : string, setter : (value: string) => IFuture<void>,}) : void {
    return this._dart_registerStringServiceExtension(props);
}
public registerServiceExtension( props : {  callback : (parameters: {[index: string]: string}) => IFuture<{[index: string]: any}>, name : string,}) : void {
    return this._dart_registerServiceExtension(props);
}
public toString() : string {
    return this._dart_toString();
}
}
