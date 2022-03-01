
import { TraversalDirection } from "./traversalDirection";
import { IIntent } from "./intent";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
declare const flutter: {
widgets: {
directionalFocusIntent: (this: void, directionalFocusIntent: IDirectionalFocusIntent, direction: TraversalDirection, props : {  ignoreTextFields : boolean,}) => IDirectionalFocusIntent
}
};
export interface IDirectionalFocusIntent


{
direction: TraversalDirection;
ignoreTextFields: boolean;
toStringShort: () => string;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
getHashCode: () => number;
}export class DirectionalFocusIntent

 implements Omit<IIntent, >, IDiagnosticable
{    public readonly direction: TraversalDirection = undefined as any;
    public readonly ignoreTextFields: boolean = undefined as any;
public constructor(direction: TraversalDirection, props : {  ignoreTextFields? : boolean,}){
flutter.widgets.directionalFocusIntent(this, direction, {
...directionalFocusIntentDefaultProps,
...props
});}
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const directionalFocusIntentDefaultProps = {
    ignoreTextFields: true,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
