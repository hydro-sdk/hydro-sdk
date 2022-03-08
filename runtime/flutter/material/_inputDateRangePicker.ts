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
import { I_InputDateRangePickerState } from "./_inputDateRangePickerState";
declare const flutter: {
    material: {
        _inputDateRangePicker: (
            this: void,
            _inputDateRangePicker: I_InputDateRangePicker,
            props: {
                autofocus: boolean;
                autovalidate: boolean;
                errorFormatText?: string | undefined;
                errorInvalidRangeText?: string | undefined;
                errorInvalidText?: string | undefined;
                fieldEndHintText?: string | undefined;
                fieldEndLabelText?: string | undefined;
                fieldStartHintText?: string | undefined;
                fieldStartLabelText?: string | undefined;
                helpText?: string | undefined;
                initialEndDate?: IDateTime | undefined;
                initialStartDate?: IDateTime | undefined;
                key?: IKey | undefined;
                firstDate: IDateTime;
                lastDate: IDateTime;
                onEndDateChanged?: (
                    value?: IDateTime | undefined
                ) => void | undefined;
                onStartDateChanged?: (
                    value?: IDateTime | undefined
                ) => void | undefined;
            }
        ) => I_InputDateRangePicker;
    };
};
export interface I_InputDateRangePicker {
    initialStartDate: IDateTime | undefined;
    initialEndDate: IDateTime | undefined;
    firstDate: IDateTime;
    lastDate: IDateTime;
    helpText: string | undefined;
    errorFormatText: string | undefined;
    errorInvalidText: string | undefined;
    errorInvalidRangeText: string | undefined;
    fieldStartHintText: string | undefined;
    fieldEndHintText: string | undefined;
    fieldStartLabelText: string | undefined;
    fieldEndLabelText: string | undefined;
    autofocus: boolean;
    autovalidate: boolean;
    key: IKey | undefined;
    createState: () => I_InputDateRangePickerState;
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
export class _InputDateRangePicker implements IStatefulWidget, IDiagnosticable {
    public readonly initialStartDate: IDateTime | undefined = undefined as any;
    public readonly initialEndDate: IDateTime | undefined = undefined as any;
    public readonly firstDate: IDateTime = undefined as any;
    public readonly lastDate: IDateTime = undefined as any;
    public readonly helpText: string | undefined = undefined as any;
    public readonly errorFormatText: string | undefined = undefined as any;
    public readonly errorInvalidText: string | undefined = undefined as any;
    public readonly errorInvalidRangeText: string | undefined =
        undefined as any;
    public readonly fieldStartHintText: string | undefined = undefined as any;
    public readonly fieldEndHintText: string | undefined = undefined as any;
    public readonly fieldStartLabelText: string | undefined = undefined as any;
    public readonly fieldEndLabelText: string | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly autovalidate: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        autovalidate?: boolean;
        errorFormatText?: string | undefined;
        errorInvalidRangeText?: string | undefined;
        errorInvalidText?: string | undefined;
        fieldEndHintText?: string | undefined;
        fieldEndLabelText?: string | undefined;
        fieldStartHintText?: string | undefined;
        fieldStartLabelText?: string | undefined;
        helpText?: string | undefined;
        initialEndDate?: IDateTime | undefined;
        initialStartDate?: IDateTime | undefined;
        key?: IKey | undefined;
        firstDate: IDateTime;
        lastDate: IDateTime;
        onEndDateChanged?: (value?: IDateTime | undefined) => void | undefined;
        onStartDateChanged?: (
            value?: IDateTime | undefined
        ) => void | undefined;
    }) {
        flutter.material._inputDateRangePicker(this, {
            ..._inputDateRangePickerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_InputDateRangePickerState =
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
    public createState(): I_InputDateRangePickerState {
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
const _inputDateRangePickerDefaultProps = {
    autofocus: false,
    autovalidate: false,
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
