import { Duration, IDuration } from "../../dart/core/duration";
import { IList, List } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { EdgeInsets, IEdgeInsets } from "../painting/edgeInsets";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IExpansionPanel } from "./expansionPanel";
declare const flutter: {
    material: {
        expansionPanelList: (
            this: void,
            expansionPanelList: IExpansionPanelList,
            props: {
                animationDuration: IDuration;
                children: IList<IExpansionPanel>;
                dividerColor?: IColor | undefined;
                elevation: number;
                expandedHeaderPadding: IEdgeInsets;
                expansionCallback?: (
                    panelIndex: number,
                    isExpanded: boolean
                ) => void | undefined;
                key?: IKey | undefined;
            }
        ) => IExpansionPanelList;
    };
};
export interface IExpansionPanelList {
    children: IList<IExpansionPanel>;
    animationDuration: IDuration;
    initialOpenPanelValue: Object | undefined;
    expandedHeaderPadding: IEdgeInsets;
    dividerColor: IColor | undefined;
    elevation: number;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
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
export class ExpansionPanelList implements IStatefulWidget, IDiagnosticable {
    public readonly children: IList<IExpansionPanel> = undefined as any;
    public readonly animationDuration: IDuration = undefined as any;
    public readonly initialOpenPanelValue: Object | undefined =
        undefined as any;
    public readonly expandedHeaderPadding: IEdgeInsets = undefined as any;
    public readonly dividerColor: IColor | undefined = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        animationDuration?: IDuration;
        children?: IList<IExpansionPanel>;
        dividerColor?: IColor | undefined;
        elevation?: number;
        expandedHeaderPadding?: IEdgeInsets;
        expansionCallback?: (
            panelIndex: number,
            isExpanded: boolean
        ) => void | undefined;
        key?: IKey | undefined;
    }) {
        flutter.material.expansionPanelList(this, {
            ...expansionPanelListDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public createState(): IState<IStatefulWidget> {
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
const expansionPanelListDefaultProps = {
    animationDuration: new Duration({ milliseconds: 200 }),
    children: List.fromArray<IExpansionPanel>([]),
    elevation: 2,
    expandedHeaderPadding: EdgeInsets.symmetric(),
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
