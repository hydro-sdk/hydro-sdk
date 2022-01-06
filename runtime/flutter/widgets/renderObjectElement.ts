import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { Type } from "../../dart/core/type";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "./buildContext";
import { IBuildOwner } from "./buildOwner";
import { IElement } from "./element";
import { IInheritedElement } from "./inheritedElement";
import { IInheritedWidget } from "./inheritedWidget";
import { IRenderObjectWidget } from "./renderObjectWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        renderObjectElement: (
            this: void,
            renderObjectElement: IRenderObjectElement,
            widget: IRenderObjectWidget
        ) => IRenderObjectElement;
    };
};
export interface IRenderObjectElement {
    getWidget: () => IRenderObjectWidget;
    getRenderObject: () => IRenderObject;
    getDebugDoingBuild: () => boolean;
    mount: (parent: IElement | undefined, newSlot: any) => void;
    update: (newWidget: unknown) => void;
    performRebuild: () => void;
    updateChildren: (
        oldChildren: IList<IElement>,
        newWidgets: IList<IWidget>,
        props?: { forgottenChildren?: ISet<IElement> | undefined }
    ) => IList<IElement>;
    deactivate: () => void;
    unmount: () => void;
    attachRenderObject: (newSlot: any) => void;
    detachRenderObject: () => void;
    insertChildRenderObject: (child: unknown, slot: unknown) => void;
    insertRenderObjectChild: (child: unknown, slot: unknown) => void;
    moveChildRenderObject: (child: unknown, slot: unknown) => void;
    moveRenderObjectChild: (
        child: unknown,
        oldSlot: unknown,
        newSlot: unknown
    ) => void;
    removeChildRenderObject: (child: unknown) => void;
    removeRenderObjectChild: (child: unknown, slot: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    reassemble: () => void;
    describeMissingAncestor: (props: {
        expectedAncestorType: Type;
    }) => IList<IDiagnosticsNode>;
    describeElement: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
    describeWidget: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
    describeOwnershipChain: (name: string) => IDiagnosticsNode;
    visitChildren: (visitor: (element: IElement) => void) => void;
    debugVisitOnstageChildren: (visitor: (element: IElement) => void) => void;
    visitChildElements: (visitor: (element: IElement) => void) => void;
    updateChild: (
        child: IElement | undefined,
        newWidget: IWidget | undefined,
        newSlot: any
    ) => IElement | undefined;
    updateSlotForChild: (child: IElement, newSlot: any) => void;
    inflateWidget: (newWidget: IWidget, newSlot: any) => IElement;
    deactivateChild: (child: IElement) => void;
    forgetChild: (child: IElement) => void;
    activate: () => void;
    debugDeactivated: () => void;
    findRenderObject: () => IRenderObject | undefined;
    dependOnInheritedElement: (
        ancestor: IInheritedElement,
        props?: { aspect?: Object | undefined }
    ) => IInheritedWidget;
    dependOnInheritedWidgetOfExactType: <T>(props?: {
        aspect?: Object | undefined;
    }) => T | undefined;
    getElementForInheritedWidgetOfExactType: <T>() =>
        | IInheritedElement
        | undefined;
    findAncestorWidgetOfExactType: <T>() => T | undefined;
    findAncestorStateOfType: <T>() => T | undefined;
    findRootAncestorStateOfType: <T>() => T | undefined;
    findAncestorRenderObjectOfType: <T>() => T | undefined;
    visitAncestorElements: (visitor: (element: IElement) => boolean) => void;
    didChangeDependencies: () => void;
    debugGetCreatorChain: (limit: number) => string;
    debugGetDiagnosticChain: () => IList<IElement>;
    toStringShort: () => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    markNeedsBuild: () => void;
    rebuild: () => void;
    getHashCode: () => number;
    getSlot: () => any;
    getDepth: () => number;
    getOwner: () => IBuildOwner | undefined;
    getSize: () => ISize | undefined;
    getDirty: () => boolean;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class RenderObjectElement
    implements IElement, IDiagnosticable, IBuildContext
{
    public constructor(widget: IRenderObjectWidget) {
        flutter.widgets.renderObjectElement(this, widget);
    }
    private readonly _dart_getWidget: () => IRenderObjectWidget =
        undefined as any;
    private readonly _dart_getRenderObject: () => IRenderObject =
        undefined as any;
    private readonly _dart_getDebugDoingBuild: () => boolean = undefined as any;
    private readonly _dart_mount: (
        parent: IElement | undefined,
        newSlot: any
    ) => void = undefined as any;
    private readonly _dart_update: (newWidget: any) => void = undefined as any;
    private readonly _dart_performRebuild: () => void = undefined as any;
    private readonly _dart_updateChildren: (
        oldChildren: IList<IElement>,
        newWidgets: IList<IWidget>,
        props?: { forgottenChildren?: ISet<IElement> | undefined }
    ) => IList<IElement> = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_unmount: () => void = undefined as any;
    private readonly _dart_attachRenderObject: (newSlot: any) => void =
        undefined as any;
    private readonly _dart_detachRenderObject: () => void = undefined as any;
    private readonly _dart_insertChildRenderObject: (
        child: any,
        slot: any
    ) => void = undefined as any;
    private readonly _dart_insertRenderObjectChild: (
        child: any,
        slot: any
    ) => void = undefined as any;
    private readonly _dart_moveChildRenderObject: (
        child: any,
        slot: any
    ) => void = undefined as any;
    private readonly _dart_moveRenderObjectChild: (
        child: any,
        oldSlot: any,
        newSlot: any
    ) => void = undefined as any;
    private readonly _dart_removeChildRenderObject: (child: any) => void =
        undefined as any;
    private readonly _dart_removeRenderObjectChild: (
        child: any,
        slot: any
    ) => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_describeMissingAncestor: (props: {
        expectedAncestorType: Type;
    }) => IList<IDiagnosticsNode> = undefined as any;
    private readonly _dart_describeElement: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_describeWidget: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_describeOwnershipChain: (
        name: string
    ) => IDiagnosticsNode = undefined as any;
    private readonly _dart_visitChildren: (
        visitor: (element: IElement) => void
    ) => void = undefined as any;
    private readonly _dart_debugVisitOnstageChildren: (
        visitor: (element: IElement) => void
    ) => void = undefined as any;
    private readonly _dart_visitChildElements: (
        visitor: (element: IElement) => void
    ) => void = undefined as any;
    private readonly _dart_updateChild: (
        child: IElement | undefined,
        newWidget: IWidget | undefined,
        newSlot: any
    ) => IElement | undefined = undefined as any;
    private readonly _dart_updateSlotForChild: (
        child: IElement,
        newSlot: any
    ) => void = undefined as any;
    private readonly _dart_inflateWidget: (
        newWidget: IWidget,
        newSlot: any
    ) => IElement = undefined as any;
    private readonly _dart_deactivateChild: (child: IElement) => void =
        undefined as any;
    private readonly _dart_forgetChild: (child: IElement) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_debugDeactivated: () => void = undefined as any;
    private readonly _dart_findRenderObject: () => IRenderObject | undefined =
        undefined as any;
    private readonly _dart_dependOnInheritedElement: (
        ancestor: IInheritedElement,
        props?: { aspect?: Object | undefined }
    ) => IInheritedWidget = undefined as any;
    private readonly _dart_dependOnInheritedWidgetOfExactType: <T>(props?: {
        aspect?: Object | undefined;
    }) => T | undefined = undefined as any;
    private readonly _dart_getElementForInheritedWidgetOfExactType: <T>() =>
        | IInheritedElement
        | undefined = undefined as any;
    private readonly _dart_findAncestorWidgetOfExactType: <T>() =>
        | T
        | undefined = undefined as any;
    private readonly _dart_findAncestorStateOfType: <T>() => T | undefined =
        undefined as any;
    private readonly _dart_findRootAncestorStateOfType: <T>() => T | undefined =
        undefined as any;
    private readonly _dart_findAncestorRenderObjectOfType: <T>() =>
        | T
        | undefined = undefined as any;
    private readonly _dart_visitAncestorElements: (
        visitor: (element: IElement) => boolean
    ) => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugGetCreatorChain: (limit: number) => string =
        undefined as any;
    private readonly _dart_debugGetDiagnosticChain: () => IList<IElement> =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_markNeedsBuild: () => void = undefined as any;
    private readonly _dart_rebuild: () => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getSlot: () => any = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getOwner: () => IBuildOwner | undefined =
        undefined as any;
    private readonly _dart_getSize: () => ISize | undefined = undefined as any;
    private readonly _dart_getDirty: () => boolean = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public getWidget(): IRenderObjectWidget {
        return this._dart_getWidget();
    }
    public getRenderObject(): IRenderObject {
        return this._dart_getRenderObject();
    }
    public getDebugDoingBuild(): boolean {
        return this._dart_getDebugDoingBuild();
    }
    public mount(parent: IElement | undefined, newSlot: any): void {
        return this._dart_mount(parent, newSlot);
    }
    public update(newWidget: any): void {
        return this._dart_update(newWidget);
    }
    public performRebuild(): void {
        return this._dart_performRebuild();
    }
    public updateChildren(
        oldChildren: IList<IElement>,
        newWidgets: IList<IWidget>,
        props?: { forgottenChildren?: ISet<IElement> | undefined }
    ): IList<IElement> {
        return this._dart_updateChildren(oldChildren, newWidgets, props);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public unmount(): void {
        return this._dart_unmount();
    }
    public attachRenderObject(newSlot: any): void {
        return this._dart_attachRenderObject(newSlot);
    }
    public detachRenderObject(): void {
        return this._dart_detachRenderObject();
    }
    public insertChildRenderObject(child: any, slot: any): void {
        return this._dart_insertChildRenderObject(child, slot);
    }
    public insertRenderObjectChild(child: any, slot: any): void {
        return this._dart_insertRenderObjectChild(child, slot);
    }
    public moveChildRenderObject(child: any, slot: any): void {
        return this._dart_moveChildRenderObject(child, slot);
    }
    public moveRenderObjectChild(child: any, oldSlot: any, newSlot: any): void {
        return this._dart_moveRenderObjectChild(child, oldSlot, newSlot);
    }
    public removeChildRenderObject(child: any): void {
        return this._dart_removeChildRenderObject(child);
    }
    public removeRenderObjectChild(child: any, slot: any): void {
        return this._dart_removeRenderObjectChild(child, slot);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public describeMissingAncestor(props: {
        expectedAncestorType: Type;
    }): IList<IDiagnosticsNode> {
        return this._dart_describeMissingAncestor(props);
    }
    public describeElement(
        name: string,
        props: { style?: DiagnosticsTreeStyle }
    ): IDiagnosticsNode {
        return this._dart_describeElement(name, {
            ...describeElementDefaultProps,
            ...props,
        });
    }
    public describeWidget(
        name: string,
        props: { style?: DiagnosticsTreeStyle }
    ): IDiagnosticsNode {
        return this._dart_describeWidget(name, {
            ...describeWidgetDefaultProps,
            ...props,
        });
    }
    public describeOwnershipChain(name: string): IDiagnosticsNode {
        return this._dart_describeOwnershipChain(name);
    }
    public visitChildren(visitor: (element: IElement) => void): void {
        return this._dart_visitChildren(visitor);
    }
    public debugVisitOnstageChildren(
        visitor: (element: IElement) => void
    ): void {
        return this._dart_debugVisitOnstageChildren(visitor);
    }
    public visitChildElements(visitor: (element: IElement) => void): void {
        return this._dart_visitChildElements(visitor);
    }
    public updateChild(
        child: IElement | undefined,
        newWidget: IWidget | undefined,
        newSlot: any
    ): IElement | undefined {
        return this._dart_updateChild(child, newWidget, newSlot);
    }
    public updateSlotForChild(child: IElement, newSlot: any): void {
        return this._dart_updateSlotForChild(child, newSlot);
    }
    public inflateWidget(newWidget: IWidget, newSlot: any): IElement {
        return this._dart_inflateWidget(newWidget, newSlot);
    }
    public deactivateChild(child: IElement): void {
        return this._dart_deactivateChild(child);
    }
    public forgetChild(child: IElement): void {
        return this._dart_forgetChild(child);
    }
    public activate(): void {
        return this._dart_activate();
    }
    public debugDeactivated(): void {
        return this._dart_debugDeactivated();
    }
    public findRenderObject(): IRenderObject | undefined {
        return this._dart_findRenderObject();
    }
    public dependOnInheritedElement(
        ancestor: IInheritedElement,
        props?: { aspect?: Object | undefined }
    ): IInheritedWidget {
        return this._dart_dependOnInheritedElement(ancestor, props);
    }
    public dependOnInheritedWidgetOfExactType<T>(props?: {
        aspect?: Object | undefined;
    }): T | undefined {
        return this._dart_dependOnInheritedWidgetOfExactType(props);
    }
    public getElementForInheritedWidgetOfExactType<T>():
        | IInheritedElement
        | undefined {
        return this._dart_getElementForInheritedWidgetOfExactType();
    }
    public findAncestorWidgetOfExactType<T>(): T | undefined {
        return this._dart_findAncestorWidgetOfExactType();
    }
    public findAncestorStateOfType<T>(): T | undefined {
        return this._dart_findAncestorStateOfType();
    }
    public findRootAncestorStateOfType<T>(): T | undefined {
        return this._dart_findRootAncestorStateOfType();
    }
    public findAncestorRenderObjectOfType<T>(): T | undefined {
        return this._dart_findAncestorRenderObjectOfType();
    }
    public visitAncestorElements(
        visitor: (element: IElement) => boolean
    ): void {
        return this._dart_visitAncestorElements(visitor);
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugGetCreatorChain(limit: number): string {
        return this._dart_debugGetCreatorChain(limit);
    }
    public debugGetDiagnosticChain(): IList<IElement> {
        return this._dart_debugGetDiagnosticChain();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
    public markNeedsBuild(): void {
        return this._dart_markNeedsBuild();
    }
    public rebuild(): void {
        return this._dart_rebuild();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getSlot(): any {
        return this._dart_getSlot();
    }
    public getDepth(): number {
        return this._dart_getDepth();
    }
    public getOwner(): IBuildOwner | undefined {
        return this._dart_getOwner();
    }
    public getSize(): ISize | undefined {
        return this._dart_getSize();
    }
    public getDirty(): boolean {
        return this._dart_getDirty();
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
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const describeElementDefaultProps = {
    style: DiagnosticsTreeStyle.errorProperty,
};
const describeWidgetDefaultProps = {
    style: DiagnosticsTreeStyle.errorProperty,
};
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};