import { IList, List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { CollapseMode } from "./collapseMode";
import { StretchMode } from "./stretchMode";
declare const flutter: {
    material: {
        flexibleSpaceBar: (
            this: void,
            flexibleSpaceBar: IFlexibleSpaceBar,
            props: {
                background?: IWidget | undefined;
                centerTitle?: boolean | undefined;
                collapseMode: CollapseMode;
                key?: IKey | undefined;
                stretchModes: IList<StretchMode>;
                title?: IWidget | undefined;
                titlePadding?: IEdgeInsetsGeometry | undefined;
            }
        ) => IFlexibleSpaceBar;
        flexibleSpaceBarCreateSettings: (props: {
            isScrolledUnder?: boolean | undefined;
            maxExtent?: number | undefined;
            minExtent?: number | undefined;
            toolbarOpacity?: number | undefined;
            child: IWidget;
            currentExtent: number;
        }) => IWidget;
    };
};
export interface IFlexibleSpaceBar {
    title: IWidget | undefined;
    background: IWidget | undefined;
    centerTitle: boolean | undefined;
    collapseMode: CollapseMode;
    stretchModes: IList<StretchMode>;
    titlePadding: IEdgeInsetsGeometry | undefined;
    key: IKey | undefined;
    createState: () => IState<IFlexibleSpaceBar>;
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
export class FlexibleSpaceBar implements IStatefulWidget, IDiagnosticable {
    public readonly title: IWidget | undefined = undefined as any;
    public readonly background: IWidget | undefined = undefined as any;
    public readonly centerTitle: boolean | undefined = undefined as any;
    public readonly collapseMode: CollapseMode = undefined as any;
    public readonly stretchModes: IList<StretchMode> = undefined as any;
    public readonly titlePadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        background?: IWidget | undefined;
        centerTitle?: boolean | undefined;
        collapseMode?: CollapseMode;
        key?: IKey | undefined;
        stretchModes?: IList<StretchMode>;
        title?: IWidget | undefined;
        titlePadding?: IEdgeInsetsGeometry | undefined;
    }) {
        flutter.material.flexibleSpaceBar(this, {
            ...flexibleSpaceBarDefaultProps,
            ...props,
        });
    }
    public static createSettings(props: {
        isScrolledUnder?: boolean | undefined;
        maxExtent?: number | undefined;
        minExtent?: number | undefined;
        toolbarOpacity?: number | undefined;
        child: IWidget;
        currentExtent: number;
    }): IWidget {
        return flutter.material.flexibleSpaceBarCreateSettings(props);
    }
    private readonly _dart_createState: () => IState<IFlexibleSpaceBar> =
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
    public createState(): IState<IFlexibleSpaceBar> {
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
const flexibleSpaceBarDefaultProps = {
    collapseMode: CollapseMode.parallax,
    stretchModes: List.fromArray([StretchMode.zoomBackground]),
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
