
import { IFocusNode } from "./focusNode";
import { IFocusScopeNode } from "./focusScopeNode";
import { IFocusManager } from "./focusManager";
declare const flutter: {
widgets: {
_autofocus: (this: void, _autofocus: I_Autofocus, props : {  autofocusNode : IFocusNode, scope : IFocusScopeNode,}) => I_Autofocus
}
};
export interface I_Autofocus


{
scope: IFocusScopeNode;
autofocusNode: IFocusNode;
applyIfValid: (manager: IFocusManager) => void;
}export class _Autofocus


{    public readonly scope: IFocusScopeNode = undefined as any;
    public readonly autofocusNode: IFocusNode = undefined as any;
public constructor( props : {  autofocusNode : IFocusNode, scope : IFocusScopeNode,}){
flutter.widgets._autofocus(this, props);}
    private readonly _dart_applyIfValid: (manager: IFocusManager) => void = undefined as any;
public applyIfValid(manager: IFocusManager) : void {
    return this._dart_applyIfValid(manager);
}
}
