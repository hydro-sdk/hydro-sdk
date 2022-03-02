import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { IFocusTraversalPolicy } from "./focusTraversalPolicy";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        focusTraversalGroup: (
            this: void,
            focusTraversalGroup: IFocusTraversalGroup,
            props: {
                descendantsAreFocusable: boolean;
                key?: IKey | undefined;
                policy?: IFocusTraversalPolicy | undefined;
                child: IWidget;
            }
        ) => IFocusTraversalGroup;
        focusTraversalGroupOf: (
            context: IBuildContext
        ) => IFocusTraversalPolicy;
        focusTraversalGroupMaybeOf: (
            context: IBuildContext
        ) => IFocusTraversalPolicy | undefined;
    };
};
export interface IFocusTraversalGroup {
    policy: IFocusTraversalPolicy;
    descendantsAreFocusable: boolean;
    child: IWidget;
    key: IKey | undefined;
    createState: () => IState<IFocusTraversalGroup>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
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
export class FocusTraversalGroup implements IStatefulWidget, IDiagnosticable {
    public readonly policy: IFocusTraversalPolicy = undefined as any;
    public readonly descendantsAreFocusable: boolean = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        descendantsAreFocusable?: boolean;
        key?: IKey | undefined;
        policy?: IFocusTraversalPolicy | undefined;
        child: IWidget;
    }) {
        flutter.widgets.focusTraversalGroup(this, {
            ...focusTraversalGroupDefaultProps,
            ...props,
        });
    }
    public static of(context: IBuildContext): IFocusTraversalPolicy {
        return flutter.widgets.focusTraversalGroupOf(context);
    }
    public static maybeOf(
        context: IBuildContext
    ): IFocusTraversalPolicy | undefined {
        return flutter.widgets.focusTraversalGroupMaybeOf(context);
    }
    private readonly _dart_createState: () => IState<IFocusTraversalGroup> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
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
    public createState(): IState<IFocusTraversalGroup> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
const focusTraversalGroupDefaultProps = {
    descendantsAreFocusable: true,
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
