import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IFocusNode } from "./focusNode";
import { IFocusScopeNode } from "./focusScopeNode";
import { TraversalDirection } from "./traversalDirection";
declare const flutter: {
    widgets: {
        focusTraversalPolicy: (
            this: void,
            focusTraversalPolicy: IFocusTraversalPolicy
        ) => IFocusTraversalPolicy;
    };
};
export interface IFocusTraversalPolicy {
    findFirstFocus: (currentNode: IFocusNode) => IFocusNode | undefined;
    findLastFocus: (currentNode: IFocusNode) => IFocusNode;
    findFirstFocusInDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => IFocusNode | undefined;
    invalidateScopeData: (node: IFocusScopeNode) => void;
    changedScope: (props?: {
        node?: IFocusNode | undefined;
        oldScope?: IFocusScopeNode | undefined;
    }) => void;
    next: (currentNode: IFocusNode) => boolean;
    previous: (currentNode: IFocusNode) => boolean;
    inDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => boolean;
    sortDescendants: (
        descendants: IIterable<IFocusNode>,
        currentNode: IFocusNode
    ) => IIterable<IFocusNode>;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
export class FocusTraversalPolicy implements IDiagnosticable {
    public constructor() {
        flutter.widgets.focusTraversalPolicy(this);
    }
    private readonly _dart_findFirstFocus: (
        currentNode: IFocusNode
    ) => IFocusNode | undefined = undefined as any;
    private readonly _dart_findLastFocus: (
        currentNode: IFocusNode
    ) => IFocusNode = undefined as any;
    private readonly _dart_findFirstFocusInDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => IFocusNode | undefined = undefined as any;
    private readonly _dart_invalidateScopeData: (
        node: IFocusScopeNode
    ) => void = undefined as any;
    private readonly _dart_changedScope: (props?: {
        node?: IFocusNode | undefined;
        oldScope?: IFocusScopeNode | undefined;
    }) => void = undefined as any;
    private readonly _dart_next: (currentNode: IFocusNode) => boolean =
        undefined as any;
    private readonly _dart_previous: (currentNode: IFocusNode) => boolean =
        undefined as any;
    private readonly _dart_inDirection: (
        currentNode: IFocusNode,
        direction: TraversalDirection
    ) => boolean = undefined as any;
    private readonly _dart_sortDescendants: (
        descendants: IIterable<IFocusNode>,
        currentNode: IFocusNode
    ) => IIterable<IFocusNode> = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    public findFirstFocus(currentNode: IFocusNode): IFocusNode | undefined {
        return this._dart_findFirstFocus(currentNode);
    }
    public findLastFocus(currentNode: IFocusNode): IFocusNode {
        return this._dart_findLastFocus(currentNode);
    }
    public findFirstFocusInDirection(
        currentNode: IFocusNode,
        direction: TraversalDirection
    ): IFocusNode | undefined {
        return this._dart_findFirstFocusInDirection(currentNode, direction);
    }
    public invalidateScopeData(node: IFocusScopeNode): void {
        return this._dart_invalidateScopeData(node);
    }
    public changedScope(props?: {
        node?: IFocusNode | undefined;
        oldScope?: IFocusScopeNode | undefined;
    }): void {
        return this._dart_changedScope(props);
    }
    public next(currentNode: IFocusNode): boolean {
        return this._dart_next(currentNode);
    }
    public previous(currentNode: IFocusNode): boolean {
        return this._dart_previous(currentNode);
    }
    public inDirection(
        currentNode: IFocusNode,
        direction: TraversalDirection
    ): boolean {
        return this._dart_inDirection(currentNode, direction);
    }
    public sortDescendants(
        descendants: IIterable<IFocusNode>,
        currentNode: IFocusNode
    ): IIterable<IFocusNode> {
        return this._dart_sortDescendants(descendants, currentNode);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
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
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
