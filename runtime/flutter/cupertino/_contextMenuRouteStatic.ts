import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IGlobalKey } from "../widgets/globalKey";
import { Orientation } from "../widgets/orientation";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { _ContextMenuLocation } from "./_contextMenuLocation";
import { I_ContextMenuRouteStaticState } from "./_contextMenuRouteStaticState";
declare const flutter: {
    cupertino: {
        _contextMenuRouteStatic: (
            this: void,
            _contextMenuRouteStatic: I_ContextMenuRouteStatic,
            props: {
                actions?: IList<IWidget> | undefined;
                childGlobalKey?:
                    | IGlobalKey<IState<IStatefulWidget>>
                    | undefined;
                key?: IKey | undefined;
                onDismiss?: (
                    context: IBuildContext,
                    scale: number,
                    opacity: number
                ) => void | undefined;
                sheetGlobalKey?:
                    | IGlobalKey<IState<IStatefulWidget>>
                    | undefined;
                child: IWidget;
                contextMenuLocation: _ContextMenuLocation;
                orientation: Orientation;
            }
        ) => I_ContextMenuRouteStatic;
    };
};
export interface I_ContextMenuRouteStatic {
    actions: IList<IWidget> | undefined;
    child: IWidget;
    childGlobalKey: IGlobalKey<IState<IStatefulWidget>> | undefined;
    contextMenuLocation: _ContextMenuLocation;
    orientation: Orientation;
    sheetGlobalKey: IGlobalKey<IState<IStatefulWidget>> | undefined;
    key: IKey | undefined;
    createState: () => I_ContextMenuRouteStaticState;
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
export class _ContextMenuRouteStatic
    implements IStatefulWidget, IDiagnosticable
{
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly childGlobalKey:
        | IGlobalKey<IState<IStatefulWidget>>
        | undefined = undefined as any;
    public readonly contextMenuLocation: _ContextMenuLocation =
        undefined as any;
    public readonly orientation: Orientation = undefined as any;
    public readonly sheetGlobalKey:
        | IGlobalKey<IState<IStatefulWidget>>
        | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IList<IWidget> | undefined;
        childGlobalKey?: IGlobalKey<IState<IStatefulWidget>> | undefined;
        key?: IKey | undefined;
        onDismiss?: (
            context: IBuildContext,
            scale: number,
            opacity: number
        ) => void | undefined;
        sheetGlobalKey?: IGlobalKey<IState<IStatefulWidget>> | undefined;
        child: IWidget;
        contextMenuLocation: _ContextMenuLocation;
        orientation: Orientation;
    }) {
        flutter.cupertino._contextMenuRouteStatic(this, props);
    }
    private readonly _dart_createState: () => I_ContextMenuRouteStaticState =
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
    public createState(): I_ContextMenuRouteStaticState {
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
