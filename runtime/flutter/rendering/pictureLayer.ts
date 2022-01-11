import { IList } from "../../dart/core/list";
import { IEngineLayer } from "../../dart/ui/engineLayer";
import { IOffset } from "../../dart/ui/offset";
import { IPicture } from "../../dart/ui/picture";
import { IRect } from "../../dart/ui/rect";
import { ISceneBuilder } from "../../dart/ui/sceneBuilder";
import { IAbstractNode } from "../foundation/abstractNode";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IAnnotationResult } from "./annotationResult";
import { IContainerLayer } from "./containerLayer";
import { ILayer } from "./layer";
declare const flutter: {
    rendering: {
        pictureLayer: (
            this: void,
            pictureLayer: IPictureLayer,
            canvasBounds: IRect
        ) => IPictureLayer;
    };
};
export interface IPictureLayer {
    canvasBounds: IRect;
    debugCreator: Object | undefined;
    getPicture: () => IPicture | undefined;
    setPicture: (picture?: IPicture | undefined) => void;
    getIsComplexHint: () => boolean;
    setIsComplexHint: (value: boolean) => void;
    getWillChangeHint: () => boolean;
    setWillChangeHint: (value: boolean) => void;
    dispose: () => void;
    addToScene: (builder: ISceneBuilder) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    findAnnotations: <S>(
        result: IAnnotationResult<S>,
        localPosition: IOffset,
        props: { onlyFirst: boolean }
    ) => boolean;
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
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    redepthChild: (child: IAbstractNode) => void;
    redepthChildren: () => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    getDepth: () => number;
    getOwner: () => Object | undefined;
    getAttached: () => boolean;
    getHashCode: () => number;
}
export class PictureLayer
    implements
        Omit<
            ILayer,
            "toStringShort" | "debugFillProperties" | "toDiagnosticsNode"
        >,
        IDiagnosticableTreeMixin,
        IDiagnosticable,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toStringShort"
            | "toDiagnosticsNode"
        >
{
    public readonly canvasBounds: IRect = undefined as any;
    public readonly debugCreator: Object | undefined = undefined as any;
    public constructor(canvasBounds: IRect) {
        flutter.rendering.pictureLayer(this, canvasBounds);
    }
    private readonly _dart_getPicture: () => IPicture | undefined =
        undefined as any;
    private readonly _dart_setPicture: (
        picture?: IPicture | undefined
    ) => void = undefined as any;
    private readonly _dart_getIsComplexHint: () => boolean = undefined as any;
    private readonly _dart_setIsComplexHint: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getWillChangeHint: () => boolean = undefined as any;
    private readonly _dart_setWillChangeHint: (value: boolean) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_addToScene: (builder: ISceneBuilder) => void =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_findAnnotations: <S>(
        result: IAnnotationResult<S>,
        localPosition: IOffset,
        props: { onlyFirst: boolean }
    ) => boolean = undefined as any;
    private readonly _dart_markNeedsAddToScene: () => void = undefined as any;
    private readonly _dart_updateSubtreeNeedsAddToScene: () => void =
        undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_remove: () => void = undefined as any;
    private readonly _dart_find: <S>(localPosition: IOffset) => S | undefined =
        undefined as any;
    private readonly _dart_findAllAnnotations: <S>(
        localPosition: IOffset
    ) => IAnnotationResult<S> = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getDebugDisposed: () => boolean = undefined as any;
    private readonly _dart_getDebugHandleCount: () => number = undefined as any;
    private readonly _dart_getParent: () => IContainerLayer | undefined =
        undefined as any;
    private readonly _dart_getAlwaysNeedsAddToScene: () => boolean =
        undefined as any;
    private readonly _dart_getEngineLayer: () => IEngineLayer | undefined =
        undefined as any;
    private readonly _dart_setEngineLayer: (
        value?: IEngineLayer | undefined
    ) => void = undefined as any;
    private readonly _dart_getNextSibling: () => ILayer | undefined =
        undefined as any;
    private readonly _dart_getPreviousSibling: () => ILayer | undefined =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void =
        undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getOwner: () => Object | undefined =
        undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getPicture(): IPicture | undefined {
        return this._dart_getPicture();
    }
    public setPicture(picture?: IPicture | undefined): void {
        return this._dart_setPicture(picture);
    }
    public getIsComplexHint(): boolean {
        return this._dart_getIsComplexHint();
    }
    public setIsComplexHint(value: boolean): void {
        return this._dart_setIsComplexHint(value);
    }
    public getWillChangeHint(): boolean {
        return this._dart_getWillChangeHint();
    }
    public setWillChangeHint(value: boolean): void {
        return this._dart_setWillChangeHint(value);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public addToScene(builder: ISceneBuilder): void {
        return this._dart_addToScene(builder);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public findAnnotations<S>(
        result: IAnnotationResult<S>,
        localPosition: IOffset,
        props: { onlyFirst: boolean }
    ): boolean {
        return this._dart_findAnnotations(result, localPosition, props);
    }
    public markNeedsAddToScene(): void {
        return this._dart_markNeedsAddToScene();
    }
    public updateSubtreeNeedsAddToScene(): void {
        return this._dart_updateSubtreeNeedsAddToScene();
    }
    public dropChild(child: any): void {
        return this._dart_dropChild(child);
    }
    public adoptChild(child: any): void {
        return this._dart_adoptChild(child);
    }
    public remove(): void {
        return this._dart_remove();
    }
    public find<S>(localPosition: IOffset): S | undefined {
        return this._dart_find(localPosition);
    }
    public findAllAnnotations<S>(localPosition: IOffset): IAnnotationResult<S> {
        return this._dart_findAllAnnotations(localPosition);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getDebugDisposed(): boolean {
        return this._dart_getDebugDisposed();
    }
    public getDebugHandleCount(): number {
        return this._dart_getDebugHandleCount();
    }
    public getParent(): IContainerLayer | undefined {
        return this._dart_getParent();
    }
    public getAlwaysNeedsAddToScene(): boolean {
        return this._dart_getAlwaysNeedsAddToScene();
    }
    public getEngineLayer(): IEngineLayer | undefined {
        return this._dart_getEngineLayer();
    }
    public setEngineLayer(value?: IEngineLayer | undefined): void {
        return this._dart_setEngineLayer(value);
    }
    public getNextSibling(): ILayer | undefined {
        return this._dart_getNextSibling();
    }
    public getPreviousSibling(): ILayer | undefined {
        return this._dart_getPreviousSibling();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public redepthChild(child: IAbstractNode): void {
        return this._dart_redepthChild(child);
    }
    public redepthChildren(): void {
        return this._dart_redepthChildren();
    }
    public attach(owner: any): void {
        return this._dart_attach(owner);
    }
    public detach(): void {
        return this._dart_detach();
    }
    public getDepth(): number {
        return this._dart_getDepth();
    }
    public getOwner(): Object | undefined {
        return this._dart_getOwner();
    }
    public getAttached(): boolean {
        return this._dart_getAttached();
    }
    public getHashCode(): number {
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
