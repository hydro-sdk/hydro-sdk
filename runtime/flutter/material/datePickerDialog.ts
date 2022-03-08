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
import { DatePickerEntryMode } from "./datePickerEntryMode";
import { DatePickerMode } from "./datePickerMode";
declare const flutter: {
    material: {
        datePickerDialog: (
            this: void,
            datePickerDialog: IDatePickerDialog,
            props: {
                cancelText?: string | undefined;
                confirmText?: string | undefined;
                currentDate?: IDateTime | undefined;
                errorFormatText?: string | undefined;
                errorInvalidText?: string | undefined;
                fieldHintText?: string | undefined;
                fieldLabelText?: string | undefined;
                helpText?: string | undefined;
                initialCalendarMode: DatePickerMode;
                initialEntryMode: DatePickerEntryMode;
                key?: IKey | undefined;
                restorationId?: string | undefined;
                selectableDayPredicate?: (
                    day: IDateTime
                ) => boolean | undefined;
                firstDate: IDateTime;
                initialDate: IDateTime;
                lastDate: IDateTime;
            }
        ) => IDatePickerDialog;
    };
};
export interface IDatePickerDialog {
    initialDate: IDateTime;
    firstDate: IDateTime;
    lastDate: IDateTime;
    currentDate: IDateTime;
    initialEntryMode: DatePickerEntryMode;
    cancelText: string | undefined;
    confirmText: string | undefined;
    helpText: string | undefined;
    initialCalendarMode: DatePickerMode;
    errorFormatText: string | undefined;
    errorInvalidText: string | undefined;
    fieldHintText: string | undefined;
    fieldLabelText: string | undefined;
    restorationId: string | undefined;
    key: IKey | undefined;
    createState: () => IState<IDatePickerDialog>;
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
export class DatePickerDialog implements IStatefulWidget, IDiagnosticable {
    public readonly initialDate: IDateTime = undefined as any;
    public readonly firstDate: IDateTime = undefined as any;
    public readonly lastDate: IDateTime = undefined as any;
    public readonly currentDate: IDateTime = undefined as any;
    public readonly initialEntryMode: DatePickerEntryMode = undefined as any;
    public readonly cancelText: string | undefined = undefined as any;
    public readonly confirmText: string | undefined = undefined as any;
    public readonly helpText: string | undefined = undefined as any;
    public readonly initialCalendarMode: DatePickerMode = undefined as any;
    public readonly errorFormatText: string | undefined = undefined as any;
    public readonly errorInvalidText: string | undefined = undefined as any;
    public readonly fieldHintText: string | undefined = undefined as any;
    public readonly fieldLabelText: string | undefined = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        cancelText?: string | undefined;
        confirmText?: string | undefined;
        currentDate?: IDateTime | undefined;
        errorFormatText?: string | undefined;
        errorInvalidText?: string | undefined;
        fieldHintText?: string | undefined;
        fieldLabelText?: string | undefined;
        helpText?: string | undefined;
        initialCalendarMode?: DatePickerMode;
        initialEntryMode?: DatePickerEntryMode;
        key?: IKey | undefined;
        restorationId?: string | undefined;
        selectableDayPredicate?: (day: IDateTime) => boolean | undefined;
        firstDate: IDateTime;
        initialDate: IDateTime;
        lastDate: IDateTime;
    }) {
        flutter.material.datePickerDialog(this, {
            ...datePickerDialogDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IDatePickerDialog> =
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
    public createState(): IState<IDatePickerDialog> {
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
const datePickerDialogDefaultProps = {
    initialCalendarMode: DatePickerMode.day,
    initialEntryMode: DatePickerEntryMode.calendar,
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
