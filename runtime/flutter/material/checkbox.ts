import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderSide } from "../painting/borderSide";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { IMouseCursor } from "../services/mouseCursor";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IMaterialStateProperty } from "./materialStateProperty";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        checkbox: (
            this: void,
            checkbox: ICheckbox,
            props: {
                activeColor?: IColor | undefined;
                autofocus: boolean;
                checkColor?: IColor | undefined;
                fillColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                hoverColor?: IColor | undefined;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?: IMouseCursor | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                shape?: IOutlinedBorder | undefined;
                side?: IBorderSide | undefined;
                splashRadius?: number | undefined;
                tristate: boolean;
                visualDensity?: IVisualDensity | undefined;
                onChanged?: (value?: boolean | undefined) => void | undefined;
                value?: boolean | undefined;
            }
        ) => ICheckbox;
    };
};
export interface ICheckbox {
    value: boolean | undefined;
    mouseCursor: IMouseCursor | undefined;
    activeColor: IColor | undefined;
    fillColor: IMaterialStateProperty<IColor | undefined> | undefined;
    checkColor: IColor | undefined;
    tristate: boolean;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    visualDensity: IVisualDensity | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    splashRadius: number | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    shape: IOutlinedBorder | undefined;
    side: IBorderSide | undefined;
    key: IKey | undefined;
    createState: () => IState<ICheckbox>;
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
export class Checkbox implements IStatefulWidget, IDiagnosticable {
    public static width = 18.0;
    public readonly value: boolean | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly activeColor: IColor | undefined = undefined as any;
    public readonly fillColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly checkColor: IColor | undefined = undefined as any;
    public readonly tristate: boolean = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly splashRadius: number | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly shape: IOutlinedBorder | undefined = undefined as any;
    public readonly side: IBorderSide | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        activeColor?: IColor | undefined;
        autofocus?: boolean;
        checkColor?: IColor | undefined;
        fillColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        hoverColor?: IColor | undefined;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?: IMouseCursor | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        splashRadius?: number | undefined;
        tristate?: boolean;
        visualDensity?: IVisualDensity | undefined;
        onChanged?: (value?: boolean | undefined) => void | undefined;
        value?: boolean | undefined;
    }) {
        flutter.material.checkbox(this, {
            ...checkboxDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<ICheckbox> =
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
    public createState(): IState<ICheckbox> {
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
const checkboxDefaultProps = {
    autofocus: false,
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
