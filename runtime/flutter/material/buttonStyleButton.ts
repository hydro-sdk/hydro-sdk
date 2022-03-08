import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IButtonStyle } from "./buttonStyle";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        buttonStyleButton: (
            this: void,
            buttonStyleButton: IButtonStyleButton,
            props: {
                key?: IKey | undefined;
                autofocus: boolean;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                focusNode?: IFocusNode | undefined;
                onFocusChange?: (value: boolean) => void | undefined;
                onHover?: (value: boolean) => void | undefined;
                onLongPress?: () => void | undefined;
                onPressed?: () => void | undefined;
                style?: IButtonStyle | undefined;
            }
        ) => IButtonStyleButton;
        buttonStyleButtonAllOrNull: <T>(
            value?: T | undefined
        ) => IMaterialStateProperty<T> | undefined;
        buttonStyleButtonScaledPadding: (
            geometry1x: IEdgeInsetsGeometry,
            geometry2x: IEdgeInsetsGeometry,
            geometry3x: IEdgeInsetsGeometry,
            textScaleFactor: number
        ) => IEdgeInsetsGeometry;
    };
};
export interface IButtonStyleButton {
    style: IButtonStyle | undefined;
    clipBehavior: Clip;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    child: IWidget | undefined;
    key: IKey | undefined;
    defaultStyleOf: (context: IBuildContext) => IButtonStyle;
    themeStyleOf: (context: IBuildContext) => IButtonStyle | undefined;
    getEnabled: () => boolean;
    createState: () => IState<IButtonStyleButton>;
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
export class ButtonStyleButton implements IStatefulWidget, IDiagnosticable {
    public readonly style: IButtonStyle | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        autofocus: boolean;
        child?: IWidget | undefined;
        clipBehavior: Clip;
        focusNode?: IFocusNode | undefined;
        onFocusChange?: (value: boolean) => void | undefined;
        onHover?: (value: boolean) => void | undefined;
        onLongPress?: () => void | undefined;
        onPressed?: () => void | undefined;
        style?: IButtonStyle | undefined;
    }) {
        flutter.material.buttonStyleButton(this, props);
    }
    public static allOrNull<T>(
        value?: T | undefined
    ): IMaterialStateProperty<T> | undefined {
        return flutter.material.buttonStyleButtonAllOrNull(value);
    }
    public static scaledPadding(
        geometry1x: IEdgeInsetsGeometry,
        geometry2x: IEdgeInsetsGeometry,
        geometry3x: IEdgeInsetsGeometry,
        textScaleFactor: number
    ): IEdgeInsetsGeometry {
        return flutter.material.buttonStyleButtonScaledPadding(
            geometry1x,
            geometry2x,
            geometry3x,
            textScaleFactor
        );
    }
    private readonly _dart_defaultStyleOf: (
        context: IBuildContext
    ) => IButtonStyle = undefined as any;
    private readonly _dart_themeStyleOf: (
        context: IBuildContext
    ) => IButtonStyle | undefined = undefined as any;
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_createState: () => IState<IButtonStyleButton> =
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
    public defaultStyleOf(context: IBuildContext): IButtonStyle {
        return this._dart_defaultStyleOf(context);
    }
    public themeStyleOf(context: IBuildContext): IButtonStyle | undefined {
        return this._dart_themeStyleOf(context);
    }
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public createState(): IState<IButtonStyleButton> {
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
