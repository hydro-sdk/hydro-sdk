import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { _ActionLevel } from "./_actionLevel";
import { IFloatingActionButton } from "./floatingActionButton";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
declare const flutter: {
    material: {
        _masterPage: (
            this: void,
            _masterPage: I_MasterPage,
            props: {
                actionBuilder?: (
                    context: IBuildContext,
                    actionLevel: _ActionLevel
                ) => IList<IWidget> | undefined;
                centerTitle?: boolean | undefined;
                flexibleSpace?: IWidget | undefined;
                floatingActionButton?: IFloatingActionButton | undefined;
                floatingActionButtonLocation?:
                    | IFloatingActionButtonLocation
                    | undefined;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                masterViewBuilder?: (
                    context: IBuildContext,
                    isLateralUI: boolean
                ) => IWidget | undefined;
                title?: IWidget | undefined;
                automaticallyImplyLeading: boolean;
            }
        ) => I_MasterPage;
    };
};
export interface I_MasterPage {
    title: IWidget | undefined;
    leading: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    centerTitle: boolean | undefined;
    flexibleSpace: IWidget | undefined;
    floatingActionButton: IFloatingActionButton | undefined;
    floatingActionButtonLocation: IFloatingActionButtonLocation | undefined;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    createElement: () => IStatelessElement;
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
export class _MasterPage implements IStatelessWidget, IDiagnosticable {
    public readonly title: IWidget | undefined = undefined as any;
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly flexibleSpace: IWidget | undefined = undefined as any;
    public readonly floatingActionButton: IFloatingActionButton | undefined =
        undefined as any;
    public readonly floatingActionButtonLocation:
        | IFloatingActionButtonLocation
        | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actionBuilder?: (
            context: IBuildContext,
            actionLevel: _ActionLevel
        ) => IList<IWidget> | undefined;
        centerTitle?: boolean | undefined;
        flexibleSpace?: IWidget | undefined;
        floatingActionButton?: IFloatingActionButton | undefined;
        floatingActionButtonLocation?:
            | IFloatingActionButtonLocation
            | undefined;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        masterViewBuilder?: (
            context: IBuildContext,
            isLateralUI: boolean
        ) => IWidget | undefined;
        title?: IWidget | undefined;
        automaticallyImplyLeading: boolean;
    }) {
        flutter.material._masterPage(this, props);
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createElement(): IStatelessElement {
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
