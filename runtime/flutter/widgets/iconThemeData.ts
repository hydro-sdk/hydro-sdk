
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IBuildContext } from "./buildContext";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
declare const flutter: {
widgets: {
iconThemeData: (this: void, iconThemeData: IIconThemeData, props? : {  color? : IColor | undefined, opacity? : number | undefined, size? : number | undefined,}) => IIconThemeData;
iconThemeDataLerp: (a: IIconThemeData | undefined, b: IIconThemeData | undefined, t: number) => IIconThemeData
}
};
export interface IIconThemeData


{
color: IColor | undefined;
size: number | undefined;
copyWith: ( props? : {  color? : IColor | undefined, opacity? : number | undefined, size? : number | undefined,}) => IIconThemeData;
merge: (other?: IIconThemeData | undefined) => IIconThemeData;
resolve: (context: IBuildContext) => IIconThemeData;
getIsConcrete: () => boolean;
getOpacity: () => number | undefined;
getHashCode: () => number;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
}export class IconThemeData

 implements IDiagnosticable
{    public readonly color: IColor | undefined = undefined as any;
    public readonly size: number | undefined = undefined as any;
public constructor( props? : {  color? : IColor | undefined, opacity? : number | undefined, size? : number | undefined,}){
flutter.widgets.iconThemeData(this, props);}
public static lerp(a: IIconThemeData | undefined, b: IIconThemeData | undefined, t: number) : IIconThemeData{
return flutter.widgets.iconThemeDataLerp(a, b, t);
}    private readonly _dart_copyWith: ( props? : {  color? : IColor | undefined, opacity? : number | undefined, size? : number | undefined,}) => IIconThemeData = undefined as any;
    private readonly _dart_merge: (other?: IIconThemeData | undefined) => IIconThemeData = undefined as any;
    private readonly _dart_resolve: (context: IBuildContext) => IIconThemeData = undefined as any;
    private readonly _dart_getIsConcrete: () => boolean = undefined as any;
    private readonly _dart_getOpacity: () => number | undefined = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
public copyWith( props? : {  color? : IColor | undefined, opacity? : number | undefined, size? : number | undefined,}) : IIconThemeData {
    return this._dart_copyWith(props);
}
public merge(other?: IIconThemeData | undefined) : IIconThemeData {
    return this._dart_merge(other);
}
public resolve(context: IBuildContext) : IIconThemeData {
    return this._dart_resolve(context);
}
public getIsConcrete() : boolean {
    return this._dart_getIsConcrete();
}
public getOpacity() : number | undefined {
    return this._dart_getOpacity();
}
public getHashCode() : number {
    return this._dart_getHashCode();
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
