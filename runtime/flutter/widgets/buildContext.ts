import { IList } from "../../dart/core/list";
import { Type } from "../../dart/core/type";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildOwner } from "./buildOwner";
import { IElement } from "./element";
import { IInheritedElement } from "./inheritedElement";
import { IInheritedWidget } from "./inheritedWidget";
import { IWidget } from "./widget";
export interface IBuildContext {
    getWidget: () => IWidget;
    getOwner: () => IBuildOwner | undefined;
    getDebugDoingBuild: () => boolean;
    findRenderObject: () => IRenderObject | undefined;
    getSize: () => ISize | undefined;
    dependOnInheritedElement: (
        ancestor: IInheritedElement,
        props: { aspect: Object }
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
    visitChildElements: (visitor: (element: IElement) => void) => void;
    describeElement: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
    describeWidget: (
        name: string,
        props: { style: DiagnosticsTreeStyle }
    ) => IDiagnosticsNode;
    describeMissingAncestor: (props: {
        expectedAncestorType: Type;
    }) => IList<IDiagnosticsNode>;
    describeOwnershipChain: (name: string) => IDiagnosticsNode;
}
