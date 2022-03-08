import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { AlignmentDirectional } from "../painting/alignmentDirectional";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { ITextStyle } from "../painting/textStyle";
import { AutovalidateMode } from "../widgets/autovalidateMode";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IFormField } from "../widgets/formField";
import { IFormFieldState } from "../widgets/formFieldState";
import { IStatefulElement } from "../widgets/statefulElement";
import { IWidget } from "../widgets/widget";
import { IDropdownMenuItem } from "./dropdownMenuItem";
import { IInputDecoration } from "./inputDecoration";
declare const flutter: {
    material: {
        dropdownButtonFormField: <T>(
            this: void,
            dropdownButtonFormField: IDropdownButtonFormField<T>,
            props: {
                alignment: IAlignmentGeometry;
                autofocus: boolean;
                autovalidateMode?: AutovalidateMode | undefined;
                decoration?: IInputDecoration | undefined;
                disabledHint?: IWidget | undefined;
                dropdownColor?: IColor | undefined;
                elevation: number;
                enableFeedback?: boolean | undefined;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                hint?: IWidget | undefined;
                icon?: IWidget | undefined;
                iconDisabledColor?: IColor | undefined;
                iconEnabledColor?: IColor | undefined;
                iconSize: number;
                isDense: boolean;
                isExpanded: boolean;
                itemHeight?: number | undefined;
                key?: IKey | undefined;
                menuMaxHeight?: number | undefined;
                onSaved?: (newValue?: T | undefined) => void | undefined;
                onTap?: () => void | undefined;
                selectedItemBuilder?: (
                    context: IBuildContext
                ) => IList<IWidget> | undefined;
                style?: ITextStyle | undefined;
                validator?: (
                    value?: T | undefined
                ) => string | undefined | undefined;
                value?: T | undefined;
                items?: IList<IDropdownMenuItem<T>> | undefined;
                onChanged?: (value?: T | undefined) => void | undefined;
            }
        ) => IDropdownButtonFormField<T>;
    };
};
export interface IDropdownButtonFormField<T> {
    decoration: IInputDecoration;
    onSaved: (newValue?: T | undefined) => void | undefined;
    validator: (value?: T | undefined) => string | undefined | undefined;
    builder: (field: IFormFieldState<T>) => IWidget;
    initialValue: T | undefined;
    enabled: boolean;
    autovalidateMode: AutovalidateMode;
    restorationId: string | undefined;
    key: IKey | undefined;
    createState: () => IFormFieldState<T>;
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
export class DropdownButtonFormField<T>
    implements IFormField<T>, IDiagnosticable
{
    public readonly decoration: IInputDecoration = undefined as any;
    public readonly onSaved: (newValue?: T | undefined) => void | undefined =
        undefined as any;
    public readonly validator: (
        value?: T | undefined
    ) => string | undefined | undefined = undefined as any;
    public readonly builder: (field: IFormFieldState<T>) => IWidget =
        undefined as any;
    public readonly initialValue: T | undefined = undefined as any;
    public readonly enabled: boolean = undefined as any;
    public readonly autovalidateMode: AutovalidateMode = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        autofocus?: boolean;
        autovalidateMode?: AutovalidateMode | undefined;
        decoration?: IInputDecoration | undefined;
        disabledHint?: IWidget | undefined;
        dropdownColor?: IColor | undefined;
        elevation?: number;
        enableFeedback?: boolean | undefined;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        hint?: IWidget | undefined;
        icon?: IWidget | undefined;
        iconDisabledColor?: IColor | undefined;
        iconEnabledColor?: IColor | undefined;
        iconSize?: number;
        isDense?: boolean;
        isExpanded?: boolean;
        itemHeight?: number | undefined;
        key?: IKey | undefined;
        menuMaxHeight?: number | undefined;
        onSaved?: (newValue?: T | undefined) => void | undefined;
        onTap?: () => void | undefined;
        selectedItemBuilder?: (
            context: IBuildContext
        ) => IList<IWidget> | undefined;
        style?: ITextStyle | undefined;
        validator?: (value?: T | undefined) => string | undefined | undefined;
        value?: T | undefined;
        items?: IList<IDropdownMenuItem<T>> | undefined;
        onChanged?: (value?: T | undefined) => void | undefined;
    }) {
        flutter.material.dropdownButtonFormField(this, {
            ...dropdownButtonFormFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IFormFieldState<T> =
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
    public createState(): IFormFieldState<T> {
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
const dropdownButtonFormFieldDefaultProps = {
    alignment: AlignmentDirectional.centerStart,
    autofocus: false,
    elevation: 8,
    iconSize: 24.0,
    isDense: true,
    isExpanded: false,
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
