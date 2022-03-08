import { IDateTime } from "../../dart/core/dateTime";
import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
declare const flutter: {
    material: {
        inputDatePickerFormField: (
            this: void,
            inputDatePickerFormField: IInputDatePickerFormField,
            props: {
                autofocus: boolean;
                errorFormatText?: string | undefined;
                errorInvalidText?: string | undefined;
                fieldHintText?: string | undefined;
                fieldLabelText?: string | undefined;
                initialDate?: IDateTime | undefined;
                key?: IKey | undefined;
                onDateSaved?: (value: IDateTime) => void | undefined;
                onDateSubmitted?: (value: IDateTime) => void | undefined;
                selectableDayPredicate?: (
                    day: IDateTime
                ) => boolean | undefined;
                firstDate: IDateTime;
                lastDate: IDateTime;
            }
        ) => IInputDatePickerFormField;
    };
};
export interface IInputDatePickerFormField {
    initialDate: IDateTime | undefined;
    firstDate: IDateTime;
    lastDate: IDateTime;
    errorFormatText: string | undefined;
    errorInvalidText: string | undefined;
    fieldHintText: string | undefined;
    fieldLabelText: string | undefined;
    autofocus: boolean;
    key: IKey | undefined;
    createState: () => IState<IInputDatePickerFormField>;
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
export class InputDatePickerFormField
    implements IStatefulWidget, IDiagnosticable
{
    public readonly initialDate: IDateTime | undefined = undefined as any;
    public readonly firstDate: IDateTime = undefined as any;
    public readonly lastDate: IDateTime = undefined as any;
    public readonly errorFormatText: string | undefined = undefined as any;
    public readonly errorInvalidText: string | undefined = undefined as any;
    public readonly fieldHintText: string | undefined = undefined as any;
    public readonly fieldLabelText: string | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        errorFormatText?: string | undefined;
        errorInvalidText?: string | undefined;
        fieldHintText?: string | undefined;
        fieldLabelText?: string | undefined;
        initialDate?: IDateTime | undefined;
        key?: IKey | undefined;
        onDateSaved?: (value: IDateTime) => void | undefined;
        onDateSubmitted?: (value: IDateTime) => void | undefined;
        selectableDayPredicate?: (day: IDateTime) => boolean | undefined;
        firstDate: IDateTime;
        lastDate: IDateTime;
    }) {
        flutter.material.inputDatePickerFormField(this, {
            ...inputDatePickerFormFieldDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IInputDatePickerFormField> =
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
    public createState(): IState<IInputDatePickerFormField> {
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
const inputDatePickerFormFieldDefaultProps = {
    autofocus: false,
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
