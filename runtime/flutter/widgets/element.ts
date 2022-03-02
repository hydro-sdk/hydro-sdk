import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { Type } from "../../dart/core/type";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "./buildContext";
import { IBuildOwner } from "./buildOwner";
import { IInheritedElement } from "./inheritedElement";
import { IInheritedWidget } from "./inheritedWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        element: (this: void, element: IElement, widget: IWidget) => IElement;
        elementDescribeElements: (
            name: string,
            elements: IIterable<IElement>
        ) => IDiagnosticsNode;
    };
};
export interface IElement {
    getHashCode: () => number;
    getSlot: () => Object | undefined;
    getDepth: () => number;
    getWidget: () => IWidget;
    getDebugIsDefunct: () => boolean;
    getOwner: () => IBuildOwner | undefined;
    reassemble: () => void;
    getRenderObject: () => IRenderObject | undefined;
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
        child?: IElement | undefined,
        newWidget?: IWidget | undefined,
        newSlot?: Object | undefined
    ) => IElement | undefined;
    mount: (
        parent?: IElement | undefined,
        newSlot?: Object | undefined
    ) => void;
    update: (newWidget: unknown) => void;
    updateSlotForChild: (child: IElement, newSlot?: Object | undefined) => void;
    detachRenderObject: () => void;
    attachRenderObject: (newSlot?: Object | undefined) => void;
    inflateWidget: (
        newWidget: IWidget,
        newSlot?: Object | undefined
    ) => IElement;
    deactivateChild: (child: IElement) => void;
    forgetChild: (child: IElement) => void;
    activate: () => void;
    deactivate: () => void;
    debugDeactivated: () => void;
    unmount: () => void;
    findRenderObject: () => IRenderObject | undefined;
    getSize: () => ISize | undefined;
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
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    getDirty: () => boolean;
    markNeedsBuild: () => void;
    rebuild: () => void;
    performRebuild: () => void;
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
    getDebugDoingBuild: () => boolean;
}
export class Element
    implements
        Omit<IDiagnosticableTree, "toStringShort" | "toDiagnosticsNode">,
        IDiagnosticable,
        IBuildContext
{
    public constructor(widget: IWidget) {
        flutter.widgets.element(this, widget);
    }
    public static describeElements(
        name: string,
        elements: IIterable<IElement>
    ): IDiagnosticsNode {
        return flutter.widgets.elementDescribeElements(name, elements);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_getSlot: () => Object | undefined = undefined as any;
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_getWidget: () => IWidget = undefined as any;
    private readonly _dart_getDebugIsDefunct: () => boolean = undefined as any;
    private readonly _dart_getOwner: () => IBuildOwner | undefined =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_getRenderObject: () => IRenderObject | undefined =
        undefined as any;
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
        child?: IElement | undefined,
        newWidget?: IWidget | undefined,
        newSlot?: Object | undefined
    ) => IElement | undefined = undefined as any;
    private readonly _dart_mount: (
        parent?: IElement | undefined,
        newSlot?: Object | undefined
    ) => void = undefined as any;
    private readonly _dart_update: (newWidget: any) => void = undefined as any;
    private readonly _dart_updateSlotForChild: (
        child: IElement,
        newSlot?: Object | undefined
    ) => void = undefined as any;
    private readonly _dart_detachRenderObject: () => void = undefined as any;
    private readonly _dart_attachRenderObject: (
        newSlot?: Object | undefined
    ) => void = undefined as any;
    private readonly _dart_inflateWidget: (
        newWidget: IWidget,
        newSlot?: Object | undefined
    ) => IElement = undefined as any;
    private readonly _dart_deactivateChild: (child: IElement) => void =
        undefined as any;
    private readonly _dart_forgetChild: (child: IElement) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_debugDeactivated: () => void = undefined as any;
    private readonly _dart_unmount: () => void = undefined as any;
    private readonly _dart_findRenderObject: () => IRenderObject | undefined =
        undefined as any;
    private readonly _dart_getSize: () => ISize | undefined = undefined as any;
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
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_getDirty: () => boolean = undefined as any;
    private readonly _dart_markNeedsBuild: () => void = undefined as any;
    private readonly _dart_rebuild: () => void = undefined as any;
    private readonly _dart_performRebuild: () => void = undefined as any;
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
    private readonly _dart_getDebugDoingBuild: () => boolean = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public getSlot(): Object | undefined {
        return this._dart_getSlot();
    }
    public getDepth(): number {
        return this._dart_getDepth();
    }
    public getWidget(): IWidget {
        return this._dart_getWidget();
    }
    public getDebugIsDefunct(): boolean {
        return this._dart_getDebugIsDefunct();
    }
    public getOwner(): IBuildOwner | undefined {
        return this._dart_getOwner();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public getRenderObject(): IRenderObject | undefined {
        return this._dart_getRenderObject();
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
        child?: IElement | undefined,
        newWidget?: IWidget | undefined,
        newSlot?: Object | undefined
    ): IElement | undefined {
        return this._dart_updateChild(child, newWidget, newSlot);
    }
    public mount(
        parent?: IElement | undefined,
        newSlot?: Object | undefined
    ): void {
        return this._dart_mount(parent, newSlot);
    }
    public update(newWidget: any): void {
        return this._dart_update(newWidget);
    }
    public updateSlotForChild(
        child: IElement,
        newSlot?: Object | undefined
    ): void {
        return this._dart_updateSlotForChild(child, newSlot);
    }
    public detachRenderObject(): void {
        return this._dart_detachRenderObject();
    }
    public attachRenderObject(newSlot?: Object | undefined): void {
        return this._dart_attachRenderObject(newSlot);
    }
    public inflateWidget(
        newWidget: IWidget,
        newSlot?: Object | undefined
    ): IElement {
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
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public debugDeactivated(): void {
        return this._dart_debugDeactivated();
    }
    public unmount(): void {
        return this._dart_unmount();
    }
    public findRenderObject(): IRenderObject | undefined {
        return this._dart_findRenderObject();
    }
    public getSize(): ISize | undefined {
        return this._dart_getSize();
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public getDirty(): boolean {
        return this._dart_getDirty();
    }
    public markNeedsBuild(): void {
        return this._dart_markNeedsBuild();
    }
    public rebuild(): void {
        return this._dart_rebuild();
    }
    public performRebuild(): void {
        return this._dart_performRebuild();
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
    public getDebugDoingBuild(): boolean {
        return this._dart_getDebugDoingBuild();
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
