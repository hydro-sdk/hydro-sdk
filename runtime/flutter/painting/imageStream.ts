
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IImageStreamCompleter } from "./imageStreamCompleter";
import { IImageStreamListener } from "./imageStreamListener";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
painting: {
imageStream: (this: void, imageStream: IImageStream) => IImageStream
}
};
export interface IImageStream


{
getCompleter: () => IImageStreamCompleter | undefined;
setCompleter: (value: IImageStreamCompleter) => void;
addListener: (listener: IImageStreamListener) => void;
removeListener: (listener: IImageStreamListener) => void;
getKey: () => Object;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class ImageStream

 implements IDiagnosticable
{public constructor(){
flutter.painting.imageStream(this);}
    private readonly _dart_getCompleter: () => IImageStreamCompleter | undefined = undefined as any;
    private readonly _dart_setCompleter: (value: IImageStreamCompleter) => void = undefined as any;
    private readonly _dart_addListener: (listener: IImageStreamListener) => void = undefined as any;
    private readonly _dart_removeListener: (listener: IImageStreamListener) => void = undefined as any;
    private readonly _dart_getKey: () => Object = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public getCompleter() : IImageStreamCompleter | undefined {
    return this._dart_getCompleter();
}
public setCompleter(value: IImageStreamCompleter) : void {
    return this._dart_setCompleter(value);
}
public addListener(listener: IImageStreamListener) : void {
    return this._dart_addListener(listener);
}
public removeListener(listener: IImageStreamListener) : void {
    return this._dart_removeListener(listener);
}
public getKey() : Object {
    return this._dart_getKey();
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
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
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
