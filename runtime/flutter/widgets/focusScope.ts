import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IKeyEvent } from "../services/keyEvent";
import { IRawKeyEvent } from "../services/rawKeyEvent";
import { IBuildContext } from "./buildContext";
import { IFocus } from "./focus";
import { IFocusNode } from "./focusNode";
import { IFocusScopeNode } from "./focusScopeNode";
import { KeyEventResult } from "./keyEventResult";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        focusScope: (
            this: void,
            focusScope: IFocusScope,
            props: {
                autofocus: boolean;
                canRequestFocus?: boolean | undefined;
                debugLabel?: string | undefined;
                key?: IKey | undefined;
                node?: IFocusScopeNode | undefined;
                onFocusChange?: (value: boolean) => void | undefined;
                onKey?: (
                    node: IFocusNode,
                    event: IRawKeyEvent
                ) => KeyEventResult | undefined;
                onKeyEvent?: (
                    node: IFocusNode,
                    event: IKeyEvent
                ) => KeyEventResult | undefined;
                skipTraversal?: boolean | undefined;
                child: IWidget;
            }
        ) => IFocusScope;
        focusScopeWithExternalFocusNode: (props: {
            autofocus: boolean;
            key?: IKey | undefined;
            onFocusChange?: (value: boolean) => void | undefined;
            child: IWidget;
            focusScopeNode: IFocusScopeNode;
        }) => IFocusScope;
        focusScopeOf: (context: IBuildContext) => IFocusScopeNode;
    };
};
export interface IFocusScope {
    child: IWidget;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    onFocusChange: (value: boolean) => void | undefined;
    includeSemantics: boolean;
    key: IKey | undefined;
    createState: () => IState<IFocus>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getOnKeyEvent: () => (
        node: IFocusNode,
        event: IKeyEvent
    ) => KeyEventResult | undefined;
    getOnKey: () => (
        node: IFocusNode,
        event: IRawKeyEvent
    ) => KeyEventResult | undefined;
    getCanRequestFocus: () => boolean;
    getSkipTraversal: () => boolean;
    getDescendantsAreFocusable: () => boolean;
    getDebugLabel: () => string | undefined;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    getHashCode: () => number;
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
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class FocusScope implements IFocus, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly onFocusChange: (value: boolean) => void | undefined =
        undefined as any;
    public readonly includeSemantics: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        canRequestFocus?: boolean | undefined;
        debugLabel?: string | undefined;
        key?: IKey | undefined;
        node?: IFocusScopeNode | undefined;
        onFocusChange?: (value: boolean) => void | undefined;
        onKey?: (
            node: IFocusNode,
            event: IRawKeyEvent
        ) => KeyEventResult | undefined;
        onKeyEvent?: (
            node: IFocusNode,
            event: IKeyEvent
        ) => KeyEventResult | undefined;
        skipTraversal?: boolean | undefined;
        child: IWidget;
    }) {
        flutter.widgets.focusScope(this, {
            ...focusScopeDefaultProps,
            ...props,
        });
    }
    public static withExternalFocusNode(props: {
        autofocus: boolean;
        key?: IKey | undefined;
        onFocusChange?: (value: boolean) => void | undefined;
        child: IWidget;
        focusScopeNode: IFocusScopeNode;
    }): IFocusScope {
        return flutter.widgets.focusScopeWithExternalFocusNode(props);
    }
    public static of(context: IBuildContext): IFocusScopeNode {
        return flutter.widgets.focusScopeOf(context);
    }
    private readonly _dart_createState: () => IState<IFocus> = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getOnKeyEvent: () => (
        node: IFocusNode,
        event: IKeyEvent
    ) => KeyEventResult | undefined = undefined as any;
    private readonly _dart_getOnKey: () => (
        node: IFocusNode,
        event: IRawKeyEvent
    ) => KeyEventResult | undefined = undefined as any;
    private readonly _dart_getCanRequestFocus: () => boolean = undefined as any;
    private readonly _dart_getSkipTraversal: () => boolean = undefined as any;
    private readonly _dart_getDescendantsAreFocusable: () => boolean =
        undefined as any;
    private readonly _dart_getDebugLabel: () => string | undefined =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
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
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public createState(): IState<IFocus> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getOnKeyEvent(): (
        node: IFocusNode,
        event: IKeyEvent
    ) => KeyEventResult | undefined {
        return this._dart_getOnKeyEvent();
    }
    public getOnKey(): (
        node: IFocusNode,
        event: IRawKeyEvent
    ) => KeyEventResult | undefined {
        return this._dart_getOnKey();
    }
    public getCanRequestFocus(): boolean {
        return this._dart_getCanRequestFocus();
    }
    public getSkipTraversal(): boolean {
        return this._dart_getSkipTraversal();
    }
    public getDescendantsAreFocusable(): boolean {
        return this._dart_getDescendantsAreFocusable();
    }
    public getDebugLabel(): string | undefined {
        return this._dart_getDebugLabel();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
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
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const focusScopeDefaultProps = {
    autofocus: false,
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
