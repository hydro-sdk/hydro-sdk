import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { ListTileControlAffinity } from "./listTileControlAffinity";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        checkboxListTile: (
            this: void,
            checkboxListTile: ICheckboxListTile,
            props: {
                activeColor?: IColor | undefined;
                autofocus: boolean;
                checkColor?: IColor | undefined;
                contentPadding?: IEdgeInsetsGeometry | undefined;
                controlAffinity: ListTileControlAffinity;
                dense?: boolean | undefined;
                enableFeedback?: boolean | undefined;
                focusNode?: IFocusNode | undefined;
                isThreeLine: boolean;
                key?: IKey | undefined;
                secondary?: IWidget | undefined;
                selected: boolean;
                selectedTileColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                subtitle?: IWidget | undefined;
                tileColor?: IColor | undefined;
                title?: IWidget | undefined;
                tristate: boolean;
                visualDensity?: IVisualDensity | undefined;
                onChanged?: (value?: boolean | undefined) => void | undefined;
                value?: boolean | undefined;
            }
        ) => ICheckboxListTile;
    };
};
export interface ICheckboxListTile {
    value: boolean | undefined;
    activeColor: IColor | undefined;
    checkColor: IColor | undefined;
    tileColor: IColor | undefined;
    title: IWidget | undefined;
    subtitle: IWidget | undefined;
    secondary: IWidget | undefined;
    isThreeLine: boolean;
    dense: boolean | undefined;
    selected: boolean;
    controlAffinity: ListTileControlAffinity;
    autofocus: boolean;
    contentPadding: IEdgeInsetsGeometry | undefined;
    tristate: boolean;
    shape: IShapeBorder | undefined;
    selectedTileColor: IColor | undefined;
    visualDensity: IVisualDensity | undefined;
    focusNode: IFocusNode | undefined;
    enableFeedback: boolean | undefined;
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
export class CheckboxListTile implements IStatelessWidget, IDiagnosticable {
    public readonly value: boolean | undefined = undefined as any;
    public readonly activeColor: IColor | undefined = undefined as any;
    public readonly checkColor: IColor | undefined = undefined as any;
    public readonly tileColor: IColor | undefined = undefined as any;
    public readonly title: IWidget | undefined = undefined as any;
    public readonly subtitle: IWidget | undefined = undefined as any;
    public readonly secondary: IWidget | undefined = undefined as any;
    public readonly isThreeLine: boolean = undefined as any;
    public readonly dense: boolean | undefined = undefined as any;
    public readonly selected: boolean = undefined as any;
    public readonly controlAffinity: ListTileControlAffinity = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly contentPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly tristate: boolean = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly selectedTileColor: IColor | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        activeColor?: IColor | undefined;
        autofocus?: boolean;
        checkColor?: IColor | undefined;
        contentPadding?: IEdgeInsetsGeometry | undefined;
        controlAffinity?: ListTileControlAffinity;
        dense?: boolean | undefined;
        enableFeedback?: boolean | undefined;
        focusNode?: IFocusNode | undefined;
        isThreeLine?: boolean;
        key?: IKey | undefined;
        secondary?: IWidget | undefined;
        selected?: boolean;
        selectedTileColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        subtitle?: IWidget | undefined;
        tileColor?: IColor | undefined;
        title?: IWidget | undefined;
        tristate?: boolean;
        visualDensity?: IVisualDensity | undefined;
        onChanged?: (value?: boolean | undefined) => void | undefined;
        value?: boolean | undefined;
    }) {
        flutter.material.checkboxListTile(this, {
            ...checkboxListTileDefaultProps,
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
const checkboxListTileDefaultProps = {
    autofocus: false,
    controlAffinity: ListTileControlAffinity.platform,
    isThreeLine: false,
    selected: false,
    tristate: false,
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
