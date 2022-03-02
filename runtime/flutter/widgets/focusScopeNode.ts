import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { IDiagnosticableTreeMixin } from "../foundation/diagnosticableTreeMixin";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IListenable } from "../foundation/listenable";
import { IKeyEvent } from "../services/keyEvent";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IBuildContext } from "./buildContext";
import { IFocusAttachment } from "./focusAttachment";
import { FocusHighlightMode } from "./focusHighlightMode";
import { IFocusNode } from "./focusNode";
import { KeyEventResult } from "./keyEventResult";
import { TraversalDirection } from "./traversalDirection";
import { UnfocusDisposition } from "./unfocusDisposition";
declare const flutter: {
    widgets: {
        focusScopeNode: (
            this: void,
            focusScopeNode: IFocusScopeNode,
            props: {
                canRequestFocus: boolean;
                debugLabel?: string | undefined;
                onKey?: (
                    node: IFocusNode,
                    event: IRawKeyEvent
                ) => KeyEventResult | undefined;
                onKeyEvent?: (
                    node: IFocusNode,
                    event: IKeyEvent
                ) => KeyEventResult | undefined;
                skipTraversal: boolean;
            }
        ) => IFocusScopeNode;
    };
};
export interface IFocusScopeNode {
    onKey: (
        node: IFocusNode,
        event: IRawKeyEvent
    ) => KeyEventResult | undefined;
    onKeyEvent: (
        node: IFocusNode,
        event: IKeyEvent
    ) => KeyEventResult | undefined;
    getNearestScope: () => IFocusScopeNode;
    getIsFirstFocus: () => boolean;
    getFocusedChild: () => IFocusNode | undefined;
    setFirstFocus: (scope: IFocusScopeNode) => void;
    autofocus: (node: IFocusNode) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    unfocus: (props: { disposition: UnfocusDisposition }) => void;
    consumeKeyboardToken: () => boolean;
    attach: (
        context?: IBuildContext | undefined,
        props?: {
            onKey?: (
                node: IFocusNode,
                event: IRawKeyEvent
            ) => KeyEventResult | undefined;
            onKeyEvent?: (
                node: IFocusNode,
                event: IKeyEvent
            ) => KeyEventResult | undefined;
        }
    ) => IFocusAttachment;
    dispose: () => void;
    requestFocus: (node?: IFocusNode | undefined) => void;
    nextFocus: () => boolean;
    previousFocus: () => boolean;
    focusInDirection: (direction: TraversalDirection) => boolean;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toStringShort: () => string;
    getSkipTraversal: () => boolean;
    setSkipTraversal: (value: boolean) => void;
    getCanRequestFocus: () => boolean;
    setCanRequestFocus: (value: boolean) => void;
    getDescendantsAreFocusable: () => boolean;
    setDescendantsAreFocusable: (value: boolean) => void;
    getContext: () => IBuildContext | undefined;
    getParent: () => IFocusNode | undefined;
    getChildren: () => IIterable<IFocusNode>;
    getTraversalChildren: () => IIterable<IFocusNode>;
    getDebugLabel: () => string | undefined;
    setDebugLabel: (value?: string | undefined) => void;
    getDescendants: () => IIterable<IFocusNode>;
    getTraversalDescendants: () => IIterable<IFocusNode>;
    getAncestors: () => IIterable<IFocusNode>;
    getHasFocus: () => boolean;
    getHasPrimaryFocus: () => boolean;
    getHighlightMode: () => FocusHighlightMode;
    getEnclosingScope: () => IFocusScopeNode | undefined;
    getSize: () => ISize;
    getOffset: () => IOffset;
    getRect: () => IRect;
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
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class FocusScopeNode
    implements
        Omit<
            IFocusNode,
            | "debugFillProperties"
            | "debugDescribeChildren"
            | "toStringShort"
            | "dispose"
            | "toString"
            | "toDiagnosticsNode"
        >,
        IDiagnosticableTreeMixin,
        IChangeNotifier,
        IDiagnosticable,
        Omit<
            IDiagnosticableTree,
            | "toStringShallow"
            | "toStringDeep"
            | "debugDescribeChildren"
            | "debugFillProperties"
            | "toString"
            | "toStringShort"
            | "toDiagnosticsNode"
        >,
        IListenable
{
    public readonly onKey: (
        node: IFocusNode,
        event: IRawKeyEvent
    ) => KeyEventResult | undefined = undefined as any;
    public readonly onKeyEvent: (
        node: IFocusNode,
        event: IKeyEvent
    ) => KeyEventResult | undefined = undefined as any;
    public constructor(props: {
        canRequestFocus?: boolean;
        debugLabel?: string | undefined;
        onKey?: (
            node: IFocusNode,
            event: IRawKeyEvent
        ) => KeyEventResult | undefined;
        onKeyEvent?: (
            node: IFocusNode,
            event: IKeyEvent
        ) => KeyEventResult | undefined;
        skipTraversal?: boolean;
    }) {
        flutter.widgets.focusScopeNode(this, {
            ...focusScopeNodeDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getNearestScope: () => IFocusScopeNode =
        undefined as any;
    private readonly _dart_getIsFirstFocus: () => boolean = undefined as any;
    private readonly _dart_getFocusedChild: () => IFocusNode | undefined =
        undefined as any;
    private readonly _dart_setFirstFocus: (scope: IFocusScopeNode) => void =
        undefined as any;
    private readonly _dart_autofocus: (node: IFocusNode) => void =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_unfocus: (props: {
        disposition: UnfocusDisposition;
    }) => void = undefined as any;
    private readonly _dart_consumeKeyboardToken: () => boolean =
        undefined as any;
    private readonly _dart_attach: (
        context?: IBuildContext | undefined,
        props?: {
            onKey?: (
                node: IFocusNode,
                event: IRawKeyEvent
            ) => KeyEventResult | undefined;
            onKeyEvent?: (
                node: IFocusNode,
                event: IKeyEvent
            ) => KeyEventResult | undefined;
        }
    ) => IFocusAttachment = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_requestFocus: (
        node?: IFocusNode | undefined
    ) => void = undefined as any;
    private readonly _dart_nextFocus: () => boolean = undefined as any;
    private readonly _dart_previousFocus: () => boolean = undefined as any;
    private readonly _dart_focusInDirection: (
        direction: TraversalDirection
    ) => boolean = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getSkipTraversal: () => boolean = undefined as any;
    private readonly _dart_setSkipTraversal: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getCanRequestFocus: () => boolean = undefined as any;
    private readonly _dart_setCanRequestFocus: (value: boolean) => void =
        undefined as any;
    private readonly _dart_getDescendantsAreFocusable: () => boolean =
        undefined as any;
    private readonly _dart_setDescendantsAreFocusable: (
        value: boolean
    ) => void = undefined as any;
    private readonly _dart_getContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_getParent: () => IFocusNode | undefined =
        undefined as any;
    private readonly _dart_getChildren: () => IIterable<IFocusNode> =
        undefined as any;
    private readonly _dart_getTraversalChildren: () => IIterable<IFocusNode> =
        undefined as any;
    private readonly _dart_getDebugLabel: () => string | undefined =
        undefined as any;
    private readonly _dart_setDebugLabel: (value?: string | undefined) => void =
        undefined as any;
    private readonly _dart_getDescendants: () => IIterable<IFocusNode> =
        undefined as any;
    private readonly _dart_getTraversalDescendants: () => IIterable<IFocusNode> =
        undefined as any;
    private readonly _dart_getAncestors: () => IIterable<IFocusNode> =
        undefined as any;
    private readonly _dart_getHasFocus: () => boolean = undefined as any;
    private readonly _dart_getHasPrimaryFocus: () => boolean = undefined as any;
    private readonly _dart_getHighlightMode: () => FocusHighlightMode =
        undefined as any;
    private readonly _dart_getEnclosingScope: () =>
        | IFocusScopeNode
        | undefined = undefined as any;
    private readonly _dart_getSize: () => ISize = undefined as any;
    private readonly _dart_getOffset: () => IOffset = undefined as any;
    private readonly _dart_getRect: () => IRect = undefined as any;
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
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getNearestScope(): IFocusScopeNode {
        return this._dart_getNearestScope();
    }
    public getIsFirstFocus(): boolean {
        return this._dart_getIsFirstFocus();
    }
    public getFocusedChild(): IFocusNode | undefined {
        return this._dart_getFocusedChild();
    }
    public setFirstFocus(scope: IFocusScopeNode): void {
        return this._dart_setFirstFocus(scope);
    }
    public autofocus(node: IFocusNode): void {
        return this._dart_autofocus(node);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public unfocus(props: { disposition?: UnfocusDisposition }): void {
        return this._dart_unfocus({
            ...unfocusDefaultProps,
            ...props,
        });
    }
    public consumeKeyboardToken(): boolean {
        return this._dart_consumeKeyboardToken();
    }
    public attach(
        context?: IBuildContext | undefined,
        props?: {
            onKey?: (
                node: IFocusNode,
                event: IRawKeyEvent
            ) => KeyEventResult | undefined;
            onKeyEvent?: (
                node: IFocusNode,
                event: IKeyEvent
            ) => KeyEventResult | undefined;
        }
    ): IFocusAttachment {
        return this._dart_attach(context, props);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public requestFocus(node?: IFocusNode | undefined): void {
        return this._dart_requestFocus(node);
    }
    public nextFocus(): boolean {
        return this._dart_nextFocus();
    }
    public previousFocus(): boolean {
        return this._dart_previousFocus();
    }
    public focusInDirection(direction: TraversalDirection): boolean {
        return this._dart_focusInDirection(direction);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getSkipTraversal(): boolean {
        return this._dart_getSkipTraversal();
    }
    public setSkipTraversal(value: boolean): void {
        return this._dart_setSkipTraversal(value);
    }
    public getCanRequestFocus(): boolean {
        return this._dart_getCanRequestFocus();
    }
    public setCanRequestFocus(value: boolean): void {
        return this._dart_setCanRequestFocus(value);
    }
    public getDescendantsAreFocusable(): boolean {
        return this._dart_getDescendantsAreFocusable();
    }
    public setDescendantsAreFocusable(value: boolean): void {
        return this._dart_setDescendantsAreFocusable(value);
    }
    public getContext(): IBuildContext | undefined {
        return this._dart_getContext();
    }
    public getParent(): IFocusNode | undefined {
        return this._dart_getParent();
    }
    public getChildren(): IIterable<IFocusNode> {
        return this._dart_getChildren();
    }
    public getTraversalChildren(): IIterable<IFocusNode> {
        return this._dart_getTraversalChildren();
    }
    public getDebugLabel(): string | undefined {
        return this._dart_getDebugLabel();
    }
    public setDebugLabel(value?: string | undefined): void {
        return this._dart_setDebugLabel(value);
    }
    public getDescendants(): IIterable<IFocusNode> {
        return this._dart_getDescendants();
    }
    public getTraversalDescendants(): IIterable<IFocusNode> {
        return this._dart_getTraversalDescendants();
    }
    public getAncestors(): IIterable<IFocusNode> {
        return this._dart_getAncestors();
    }
    public getHasFocus(): boolean {
        return this._dart_getHasFocus();
    }
    public getHasPrimaryFocus(): boolean {
        return this._dart_getHasPrimaryFocus();
    }
    public getHighlightMode(): FocusHighlightMode {
        return this._dart_getHighlightMode();
    }
    public getEnclosingScope(): IFocusScopeNode | undefined {
        return this._dart_getEnclosingScope();
    }
    public getSize(): ISize {
        return this._dart_getSize();
    }
    public getOffset(): IOffset {
        return this._dart_getOffset();
    }
    public getRect(): IRect {
        return this._dart_getRect();
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
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const focusScopeNodeDefaultProps = {
    canRequestFocus: true,
    skipTraversal: false,
};
const unfocusDefaultProps = {
    disposition: UnfocusDisposition.scope,
};
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
