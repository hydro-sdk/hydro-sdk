import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { Type } from "../../dart/core/type";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IMouseCursor, MouseCursor } from "../services/mouseCursor";
import { IAction } from "./action";
import { IFocusNode } from "./focusNode";
import { IIntent } from "./intent";
import { IShortcutActivator } from "./shortcutActivator";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        focusableActionDetector: (
            this: void,
            focusableActionDetector: IFocusableActionDetector,
            props: {
                actions?: IMap<Type, IAction<IIntent>> | undefined;
                autofocus: boolean;
                descendantsAreFocusable: boolean;
                enabled: boolean;
                focusNode?: IFocusNode | undefined;
                key?: IKey | undefined;
                mouseCursor: IMouseCursor;
                onFocusChange?: (value: boolean) => void | undefined;
                onShowFocusHighlight?: (value: boolean) => void | undefined;
                onShowHoverHighlight?: (value: boolean) => void | undefined;
                shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
                child: IWidget;
            }
        ) => IFocusableActionDetector;
    };
};
export interface IFocusableActionDetector {
    enabled: boolean;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    descendantsAreFocusable: boolean;
    actions: IMap<Type, IAction<IIntent>> | undefined;
    shortcuts: IMap<IShortcutActivator, IIntent> | undefined;
    mouseCursor: IMouseCursor;
    child: IWidget;
    key: IKey | undefined;
    createState: () => IState<IFocusableActionDetector>;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class FocusableActionDetector
    implements IStatefulWidget, IDiagnosticable
{
    public readonly enabled: boolean = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly descendantsAreFocusable: boolean = undefined as any;
    public readonly actions: IMap<Type, IAction<IIntent>> | undefined =
        undefined as any;
    public readonly shortcuts: IMap<IShortcutActivator, IIntent> | undefined =
        undefined as any;
    public readonly mouseCursor: IMouseCursor = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IMap<Type, IAction<IIntent>> | undefined;
        autofocus?: boolean;
        descendantsAreFocusable?: boolean;
        enabled?: boolean;
        focusNode?: IFocusNode | undefined;
        key?: IKey | undefined;
        mouseCursor?: IMouseCursor;
        onFocusChange?: (value: boolean) => void | undefined;
        onShowFocusHighlight?: (value: boolean) => void | undefined;
        onShowHoverHighlight?: (value: boolean) => void | undefined;
        shortcuts?: IMap<IShortcutActivator, IIntent> | undefined;
        child: IWidget;
    }) {
        flutter.widgets.focusableActionDetector(this, {
            ...focusableActionDetectorDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IFocusableActionDetector> =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
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
    public createState(): IState<IFocusableActionDetector> {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
const focusableActionDetectorDefaultProps = {
    autofocus: false,
    descendantsAreFocusable: true,
    enabled: true,
    mouseCursor: MouseCursor.defer,
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
