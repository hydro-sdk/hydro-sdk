
import { IAbstractNode } from "../foundation/abstractNode";
import { ISemanticsOwner } from "../semantics/semanticsOwner";
import { ISemanticsHandle } from "./semanticsHandle";
declare const flutter: {
rendering: {
pipelineOwner: (this: void, pipelineOwner: IPipelineOwner, props? : {  onNeedVisualUpdate? : () => void | undefined, onSemanticsOwnerCreated? : () => void | undefined, onSemanticsOwnerDisposed? : () => void | undefined,}) => IPipelineOwner
}
};
export interface IPipelineOwner


{
requestVisualUpdate: () => void;
getRootNode: () => IAbstractNode | undefined;
setRootNode: (value?: IAbstractNode | undefined) => void;
getDebugDoingLayout: () => boolean;
flushLayout: () => void;
flushCompositingBits: () => void;
getDebugDoingPaint: () => boolean;
flushPaint: () => void;
getSemanticsOwner: () => ISemanticsOwner | undefined;
getDebugOutstandingSemanticsHandles: () => number;
ensureSemantics: ( props? : {  listener? : () => void | undefined,}) => ISemanticsHandle;
flushSemantics: () => void;
}export class PipelineOwner


{public constructor( props? : {  onNeedVisualUpdate? : () => void | undefined, onSemanticsOwnerCreated? : () => void | undefined, onSemanticsOwnerDisposed? : () => void | undefined,}){
flutter.rendering.pipelineOwner(this, props);}
    private readonly _dart_requestVisualUpdate: () => void = undefined as any;
    private readonly _dart_getRootNode: () => IAbstractNode | undefined = undefined as any;
    private readonly _dart_setRootNode: (value?: IAbstractNode | undefined) => void = undefined as any;
    private readonly _dart_getDebugDoingLayout: () => boolean = undefined as any;
    private readonly _dart_flushLayout: () => void = undefined as any;
    private readonly _dart_flushCompositingBits: () => void = undefined as any;
    private readonly _dart_getDebugDoingPaint: () => boolean = undefined as any;
    private readonly _dart_flushPaint: () => void = undefined as any;
    private readonly _dart_getSemanticsOwner: () => ISemanticsOwner | undefined = undefined as any;
    private readonly _dart_getDebugOutstandingSemanticsHandles: () => number = undefined as any;
    private readonly _dart_ensureSemantics: ( props? : {  listener? : () => void | undefined,}) => ISemanticsHandle = undefined as any;
    private readonly _dart_flushSemantics: () => void = undefined as any;
public requestVisualUpdate() : void {
    return this._dart_requestVisualUpdate();
}
public getRootNode() : IAbstractNode | undefined {
    return this._dart_getRootNode();
}
public setRootNode(value?: IAbstractNode | undefined) : void {
    return this._dart_setRootNode(value);
}
public getDebugDoingLayout() : boolean {
    return this._dart_getDebugDoingLayout();
}
public flushLayout() : void {
    return this._dart_flushLayout();
}
public flushCompositingBits() : void {
    return this._dart_flushCompositingBits();
}
public getDebugDoingPaint() : boolean {
    return this._dart_getDebugDoingPaint();
}
public flushPaint() : void {
    return this._dart_flushPaint();
}
public getSemanticsOwner() : ISemanticsOwner | undefined {
    return this._dart_getSemanticsOwner();
}
public getDebugOutstandingSemanticsHandles() : number {
    return this._dart_getDebugOutstandingSemanticsHandles();
}
public ensureSemantics( props? : {  listener? : () => void | undefined,}) : ISemanticsHandle {
    return this._dart_ensureSemantics(props);
}
public flushSemantics() : void {
    return this._dart_flushSemantics();
}
}
