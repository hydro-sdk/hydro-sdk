import { IList, List } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { VerticalDirection } from "../painting/verticalDirection";
import { MainAxisAlignment } from "../rendering/mainAxisAlignment";
import { MainAxisSize } from "../rendering/mainAxisSize";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { ButtonBarLayoutBehavior } from "./buttonBarLayoutBehavior";
import { ButtonTextTheme } from "./buttonTextTheme";
declare const flutter: {
    material: {
        buttonBar: (
            this: void,
            buttonBar: IButtonBar,
            props: {
                alignment?: MainAxisAlignment | undefined;
                buttonAlignedDropdown?: boolean | undefined;
                buttonHeight?: number | undefined;
                buttonMinWidth?: number | undefined;
                buttonPadding?: IEdgeInsetsGeometry | undefined;
                buttonTextTheme?: ButtonTextTheme | undefined;
                children: IList<IWidget>;
                key?: IKey | undefined;
                layoutBehavior?: ButtonBarLayoutBehavior | undefined;
                mainAxisSize?: MainAxisSize | undefined;
                overflowButtonSpacing?: number | undefined;
                overflowDirection?: VerticalDirection | undefined;
            }
        ) => IButtonBar;
    };
};
export interface IButtonBar {
    alignment: MainAxisAlignment | undefined;
    mainAxisSize: MainAxisSize | undefined;
    buttonTextTheme: ButtonTextTheme | undefined;
    buttonMinWidth: number | undefined;
    buttonHeight: number | undefined;
    buttonPadding: IEdgeInsetsGeometry | undefined;
    buttonAlignedDropdown: boolean | undefined;
    layoutBehavior: ButtonBarLayoutBehavior | undefined;
    overflowDirection: VerticalDirection | undefined;
    overflowButtonSpacing: number | undefined;
    children: IList<IWidget>;
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
export class ButtonBar implements IStatelessWidget, IDiagnosticable {
    public readonly alignment: MainAxisAlignment | undefined = undefined as any;
    public readonly mainAxisSize: MainAxisSize | undefined = undefined as any;
    public readonly buttonTextTheme: ButtonTextTheme | undefined =
        undefined as any;
    public readonly buttonMinWidth: number | undefined = undefined as any;
    public readonly buttonHeight: number | undefined = undefined as any;
    public readonly buttonPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly buttonAlignedDropdown: boolean | undefined =
        undefined as any;
    public readonly layoutBehavior: ButtonBarLayoutBehavior | undefined =
        undefined as any;
    public readonly overflowDirection: VerticalDirection | undefined =
        undefined as any;
    public readonly overflowButtonSpacing: number | undefined =
        undefined as any;
    public readonly children: IList<IWidget> = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: MainAxisAlignment | undefined;
        buttonAlignedDropdown?: boolean | undefined;
        buttonHeight?: number | undefined;
        buttonMinWidth?: number | undefined;
        buttonPadding?: IEdgeInsetsGeometry | undefined;
        buttonTextTheme?: ButtonTextTheme | undefined;
        children?: IList<IWidget>;
        key?: IKey | undefined;
        layoutBehavior?: ButtonBarLayoutBehavior | undefined;
        mainAxisSize?: MainAxisSize | undefined;
        overflowButtonSpacing?: number | undefined;
        overflowDirection?: VerticalDirection | undefined;
    }) {
        flutter.material.buttonBar(this, {
            ...buttonBarDefaultProps,
            ...props,
        });
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
const buttonBarDefaultProps = {
    children: List.fromArray<IWidget>([]),
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
