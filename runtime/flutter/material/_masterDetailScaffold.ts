import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IScrollController } from "../widgets/scrollController";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { _ActionLevel } from "./_actionLevel";
import { I_MasterDetailScaffoldState } from "./_masterDetailScaffoldState";
import { IFloatingActionButton } from "./floatingActionButton";
import { IFloatingActionButtonLocation } from "./floatingActionButtonLocation";
declare const flutter: {
    material: {
        _masterDetailScaffold: (
            this: void,
            _masterDetailScaffold: I_MasterDetailScaffold,
            props: {
                actionBuilder?: (
                    context: IBuildContext,
                    actionLevel: _ActionLevel
                ) => IList<IWidget> | undefined;
                centerTitle?: boolean | undefined;
                detailPageFABGutterWidth?: number | undefined;
                detailPageFABlessGutterWidth?: number | undefined;
                floatingActionButton?: IFloatingActionButton | undefined;
                floatingActionButtonLocation?:
                    | IFloatingActionButtonLocation
                    | undefined;
                initialArguments?: Object | undefined;
                key?: IKey | undefined;
                leading?: IWidget | undefined;
                masterViewWidth?: number | undefined;
                title?: IWidget | undefined;
                automaticallyImplyLeading: boolean;
                detailPageBuilder: (
                    context: IBuildContext,
                    arguments?: Object | undefined,
                    scrollController?: IScrollController | undefined
                ) => IWidget;
                masterViewBuilder: (
                    context: IBuildContext,
                    isLateralUI: boolean
                ) => IWidget;
            }
        ) => I_MasterDetailScaffold;
    };
};
export interface I_MasterDetailScaffold {
    floatingActionButton: IFloatingActionButton | undefined;
    floatingActionButtonLocation: IFloatingActionButtonLocation | undefined;
    initialArguments: Object | undefined;
    leading: IWidget | undefined;
    title: IWidget | undefined;
    automaticallyImplyLeading: boolean;
    centerTitle: boolean | undefined;
    detailPageFABlessGutterWidth: number | undefined;
    detailPageFABGutterWidth: number | undefined;
    masterViewWidth: number | undefined;
    key: IKey | undefined;
    createState: () => I_MasterDetailScaffoldState;
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
export class _MasterDetailScaffold implements IStatefulWidget, IDiagnosticable {
    public readonly floatingActionButton: IFloatingActionButton | undefined =
        undefined as any;
    public readonly floatingActionButtonLocation:
        | IFloatingActionButtonLocation
        | undefined = undefined as any;
    public readonly initialArguments: Object | undefined = undefined as any;
    public readonly leading: IWidget | undefined = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly automaticallyImplyLeading: boolean = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly detailPageFABlessGutterWidth: number | undefined =
        undefined as any;
    public readonly detailPageFABGutterWidth: number | undefined =
        undefined as any;
    public readonly masterViewWidth: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actionBuilder?: (
            context: IBuildContext,
            actionLevel: _ActionLevel
        ) => IList<IWidget> | undefined;
        centerTitle?: boolean | undefined;
        detailPageFABGutterWidth?: number | undefined;
        detailPageFABlessGutterWidth?: number | undefined;
        floatingActionButton?: IFloatingActionButton | undefined;
        floatingActionButtonLocation?:
            | IFloatingActionButtonLocation
            | undefined;
        initialArguments?: Object | undefined;
        key?: IKey | undefined;
        leading?: IWidget | undefined;
        masterViewWidth?: number | undefined;
        title?: IWidget | undefined;
        automaticallyImplyLeading: boolean;
        detailPageBuilder: (
            context: IBuildContext,
            arguments?: Object | undefined,
            scrollController?: IScrollController | undefined
        ) => IWidget;
        masterViewBuilder: (
            context: IBuildContext,
            isLateralUI: boolean
        ) => IWidget;
    }) {
        flutter.material._masterDetailScaffold(this, props);
    }
    private readonly _dart_createState: () => I_MasterDetailScaffoldState =
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
    public createState(): I_MasterDetailScaffoldState {
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
