
import { IStream } from "../../dart/async/stream";
import { IImageChunkEvent } from "./imageChunkEvent";
import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IFuture } from "../../dart/async/future";
import { ICodec } from "../../dart/ui/codec";
import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IImageStreamListener } from "./imageStreamListener";
import { IImageStreamCompleterHandle } from "./imageStreamCompleterHandle";
import { IImageInfo } from "./imageInfo";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
painting: {
multiFrameImageStreamCompleter: (this: void, multiFrameImageStreamCompleter: IMultiFrameImageStreamCompleter, props : {  chunkEvents? : IStream<IImageChunkEvent> | undefined, debugLabel? : string | undefined, informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, codec : IFuture<ICodec>, scale : number,}) => IMultiFrameImageStreamCompleter
}
};
export interface IMultiFrameImageStreamCompleter


{
debugLabel: string | undefined;
addListener: (listener: IImageStreamListener) => void;
removeListener: (listener: IImageStreamListener) => void;
keepAlive: () => IImageStreamCompleterHandle;
addOnLastListenerRemovedCallback: (callback : () => void) => void;
removeOnLastListenerRemovedCallback: (callback : () => void) => void;
setImage: (image: IImageInfo) => void;
reportError: ( props : {  context? : IDiagnosticsNode | undefined, informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, silent : boolean, stack? : IStackTrace | undefined, exception : Object,}) => void;
reportImageChunkEvent: (event: IImageChunkEvent) => void;
debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
getHashCode: () => number;
}export class MultiFrameImageStreamCompleter

 implements Omit<IImageStreamCompleter, "debugFillProperties">, IDiagnosticable
{    public readonly debugLabel: string | undefined = undefined as any;
public constructor( props : {  chunkEvents? : IStream<IImageChunkEvent> | undefined, debugLabel? : string | undefined, informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, codec : IFuture<ICodec>, scale : number,}){
flutter.painting.multiFrameImageStreamCompleter(this, props);}
    private readonly _dart_addListener: (listener: IImageStreamListener) => void = undefined as any;
    private readonly _dart_removeListener: (listener: IImageStreamListener) => void = undefined as any;
    private readonly _dart_keepAlive: () => IImageStreamCompleterHandle = undefined as any;
    private readonly _dart_addOnLastListenerRemovedCallback: (callback : () => void) => void = undefined as any;
    private readonly _dart_removeOnLastListenerRemovedCallback: (callback : () => void) => void = undefined as any;
    private readonly _dart_setImage: (image: IImageInfo) => void = undefined as any;
    private readonly _dart_reportError: ( props : {  context? : IDiagnosticsNode | undefined, informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, silent : boolean, stack? : IStackTrace | undefined, exception : Object,}) => void = undefined as any;
    private readonly _dart_reportImageChunkEvent: (event: IImageChunkEvent) => void = undefined as any;
    private readonly _dart_debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public addListener(listener: IImageStreamListener) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener: IImageStreamListener) : void {
    return this._dart_removeListener(listener);
}
public keepAlive() : IImageStreamCompleterHandle {
    return this._dart_keepAlive();
}
public addOnLastListenerRemovedCallback(callback : () => void) : void {
    return this._dart_addOnLastListenerRemovedCallback(callback);
}
public removeOnLastListenerRemovedCallback(callback : () => void) : void {
    return this._dart_removeOnLastListenerRemovedCallback(callback);
}
public setImage(image: IImageInfo) : void {
    return this._dart_setImage(image);
}
public reportError( props : {  context? : IDiagnosticsNode | undefined, informationCollector? : () => IIterable<IDiagnosticsNode> | undefined, silent? : boolean, stack? : IStackTrace | undefined, exception : Object,}) : void {
    return this._dart_reportError({
...reportErrorDefaultProps,
...props
});
}
public reportImageChunkEvent(event: IImageChunkEvent) : void {
    return this._dart_reportImageChunkEvent(event);
}
public debugFillProperties(description: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(description);
}
public getHasListeners() : boolean {
    return this._dart_getHasListeners();
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const reportErrorDefaultProps = {
    silent: false,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
