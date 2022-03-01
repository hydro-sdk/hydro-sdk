
import { IColorFilter } from "../../dart/ui/colorFilter";
import { IContainerLayer } from "./containerLayer";
import { ISceneBuilder } from "../../dart/ui/sceneBuilder";
import { IScene } from "../../dart/ui/scene";
import { IAnnotationResult } from "./annotationResult";
import { IOffset } from "../../dart/ui/offset";
import { ILayer } from "./layer";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IList } from "../../dart/core/list";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IAbstractNode } from "../foundation/abstractNode";
import { IEngineLayer } from "../../dart/ui/engineLayer";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
rendering: {
colorFilterLayer: (this: void, colorFilterLayer: IColorFilterLayer, props? : {  colorFilter? : IColorFilter | undefined,}) => IColorFilterLayer
}
};
export interface IColorFilterLayer


{
debugCreator: Object | undefined;
getColorFilter: () => IColorFilter | undefined;
setColorFilter: (value?: IColorFilter | undefined) => void;
addToScene: (builder: ISceneBuilder) => void;
debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
buildScene: (builder: ISceneBuilder) => IScene;
dispose: () => void;
updateSubtreeNeedsAddToScene: () => void;
findAnnotations: <S>(result: IAnnotationResult<S>, localPosition: IOffset, props : {  onlyFirst : boolean,}) => boolean;
attach: (owner: unknown) => void;
detach: () => void;
append: (child: ILayer) => void;
removeAllChildren: () => void;
addChildrenToScene: (builder: ISceneBuilder) => void;
applyTransform: (child: ILayer | undefined, transform: IMatrix4) => void;
debugDescribeChildren: () => IList<IDiagnosticsNode>;
getFirstChild: () => ILayer | undefined;
getLastChild: () => ILayer | undefined;
getHasChildren: () => boolean;
dropChild: (child: unknown) => void;
adoptChild: (child: unknown) => void;
remove: () => void;
find: <S>(localPosition: IOffset) => S | undefined;
findAllAnnotations: <S>(localPosition: IOffset) => IAnnotationResult<S>;
toStringShort: () => string;
getDebugDisposed: () => boolean;
getDebugHandleCount: () => number;
getParent: () => IContainerLayer | undefined;
getAlwaysNeedsAddToScene: () => boolean;
getNextSibling: () => ILayer | undefined;
getPreviousSibling: () => ILayer | undefined;
toString: ( props : {  minLevel : DiagnosticLevel,}) => string;
toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string;
toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string;
toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode;
redepthChild: (child: IAbstractNode) => void;
redepthChildren: () => void;
getDepth: () => number;
getOwner: () => Object | undefined;
getAttached: () => boolean;
getHashCode: () => number;
}export class ColorFilterLayer

 implements IContainerLayer, IDiagnosticableTreeMixin, IDiagnosticable, Omit<IDiagnosticableTree, "toStringShallow" | "toStringDeep" | "debugDescribeChildren" | "debugFillProperties" | "toStringShort" | "toDiagnosticsNode">
{    public readonly debugCreator: Object | undefined = undefined as any;
public constructor( props? : {  colorFilter? : IColorFilter | undefined,}){
flutter.rendering.colorFilterLayer(this, props);}
    private readonly _dart_getColorFilter: () => IColorFilter | undefined = undefined as any;
    private readonly _dart_setColorFilter: (value?: IColorFilter | undefined) => void = undefined as any;
    private readonly _dart_addToScene: (builder: ISceneBuilder) => void = undefined as any;
    private readonly _dart_debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void = undefined as any;
    private readonly _dart_buildScene: (builder: ISceneBuilder) => IScene = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_updateSubtreeNeedsAddToScene: () => void = undefined as any;
    private readonly _dart_findAnnotations: <S>(result: IAnnotationResult<S>, localPosition: IOffset, props : {  onlyFirst : boolean,}) => boolean = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_append: (child: ILayer) => void = undefined as any;
    private readonly _dart_removeAllChildren: () => void = undefined as any;
    private readonly _dart_addChildrenToScene: (builder: ISceneBuilder) => void = undefined as any;
    private readonly _dart_applyTransform: (child: ILayer | undefined, transform: IMatrix4) => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_getFirstChild: () => ILayer | undefined = undefined as any;
    private readonly _dart_getLastChild: () => ILayer | undefined = undefined as any;
    private readonly _dart_getHasChildren: () => boolean = undefined as any;
    private readonly _dart_markNeedsAddToScene: () => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_remove: () => void = undefined as any;
    private readonly _dart_find: <S>(localPosition: IOffset) => S | undefined = undefined as any;
    private readonly _dart_findAllAnnotations: <S>(localPosition: IOffset) => IAnnotationResult<S> = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getDebugDisposed: () => boolean = undefined as any;
    private readonly _dart_getDebugHandleCount: () => number = undefined as any;
    private readonly _dart_getParent: () => IContainerLayer | undefined = undefined as any;
    private readonly _dart_getAlwaysNeedsAddToScene: () => boolean = undefined as any;
    private readonly _dart_getEngineLayer: () => IEngineLayer | undefined = undefined as any;
    private readonly _dart_setEngineLayer: (value?: IEngineLayer | undefined) => void = undefined as any;
    private readonly _dart_getNextSibling: () => ILayer | undefined = undefined as any;
    private readonly _dart_getPreviousSibling: () => ILayer | undefined = undefined as any;
    private readonly _dart_toString: ( props : {  minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringShallow: ( props : {  joiner : string, minLevel : DiagnosticLevel,}) => string = undefined as any;
    private readonly _dart_toStringDeep: ( props : {  minLevel : DiagnosticLevel, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: ( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) => IDiagnosticsNode = undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getOwner: () => Object | undefined = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getColorFilter() : IColorFilter | undefined {
    return this._dart_getColorFilter();
}
public setColorFilter(value?: IColorFilter | undefined) : void {
    return this._dart_setColorFilter(value);
}
public addToScene(builder: ISceneBuilder) : void {
    return this._dart_addToScene(builder);
}
public debugFillProperties(properties: IDiagnosticPropertiesBuilder) : void {
    return this._dart_debugFillProperties(properties);
}
public buildScene(builder: ISceneBuilder) : IScene {
    return this._dart_buildScene(builder);
}
public dispose() : void {
    return this._dart_dispose();
}
public updateSubtreeNeedsAddToScene() : void {
    return this._dart_updateSubtreeNeedsAddToScene();
}
public findAnnotations<S>(result: IAnnotationResult<S>, localPosition: IOffset, props : {  onlyFirst : boolean,}) : boolean {
    return this._dart_findAnnotations(result, localPosition, props);
}
public attach(owner: any) : void {
    return this._dart_attach(owner);
}
public detach() : void {
    return this._dart_detach();
}
public append(child: ILayer) : void {
    return this._dart_append(child);
}
public removeAllChildren() : void {
    return this._dart_removeAllChildren();
}
public addChildrenToScene(builder: ISceneBuilder) : void {
    return this._dart_addChildrenToScene(builder);
}
public applyTransform(child: ILayer | undefined, transform: IMatrix4) : void {
    return this._dart_applyTransform(child, transform);
}
public debugDescribeChildren() : IList<IDiagnosticsNode> {
    return this._dart_debugDescribeChildren();
}
public getFirstChild() : ILayer | undefined {
    return this._dart_getFirstChild();
}
public getLastChild() : ILayer | undefined {
    return this._dart_getLastChild();
}
public getHasChildren() : boolean {
    return this._dart_getHasChildren();
}
public markNeedsAddToScene() : void {
    return this._dart_markNeedsAddToScene();
}
public dropChild(child: any) : void {
    return this._dart_dropChild(child);
}
public adoptChild(child: any) : void {
    return this._dart_adoptChild(child);
}
public remove() : void {
    return this._dart_remove();
}
public find<S>(localPosition: IOffset) : S | undefined {
    return this._dart_find(localPosition);
}
public findAllAnnotations<S>(localPosition: IOffset) : IAnnotationResult<S> {
    return this._dart_findAllAnnotations(localPosition);
}
public toStringShort() : string {
    return this._dart_toStringShort();
}
public getDebugDisposed() : boolean {
    return this._dart_getDebugDisposed();
}
public getDebugHandleCount() : number {
    return this._dart_getDebugHandleCount();
}
public getParent() : IContainerLayer | undefined {
    return this._dart_getParent();
}
public getAlwaysNeedsAddToScene() : boolean {
    return this._dart_getAlwaysNeedsAddToScene();
}
public getEngineLayer() : IEngineLayer | undefined {
    return this._dart_getEngineLayer();
}
public setEngineLayer(value?: IEngineLayer | undefined) : void {
    return this._dart_setEngineLayer(value);
}
public getNextSibling() : ILayer | undefined {
    return this._dart_getNextSibling();
}
public getPreviousSibling() : ILayer | undefined {
    return this._dart_getPreviousSibling();
}
public toString( props : {  minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toString({
...toStringDefaultProps,
...props
});
}
public toStringShallow( props : {  joiner? : string, minLevel? : DiagnosticLevel,}) : string {
    return this._dart_toStringShallow({
...toStringShallowDefaultProps,
...props
});
}
public toStringDeep( props : {  minLevel? : DiagnosticLevel, prefixLineOne? : string, prefixOtherLines? : string | undefined,}) : string {
    return this._dart_toStringDeep({
...toStringDeepDefaultProps,
...props
});
}
public toDiagnosticsNode( props? : {  name? : string | undefined, style? : DiagnosticsTreeStyle | undefined,}) : IDiagnosticsNode {
    return this._dart_toDiagnosticsNode(props);
}
public redepthChild(child: IAbstractNode) : void {
    return this._dart_redepthChild(child);
}
public redepthChildren() : void {
    return this._dart_redepthChildren();
}
public getDepth() : number {
    return this._dart_getDepth();
}
public getOwner() : Object | undefined {
    return this._dart_getOwner();
}
public getAttached() : boolean {
    return this._dart_getAttached();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
