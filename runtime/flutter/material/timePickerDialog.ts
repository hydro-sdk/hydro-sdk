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
import { ITimeOfDay } from "./timeOfDay";
import { TimePickerEntryMode } from "./timePickerEntryMode";
declare const flutter: {
    material: {
        timePickerDialog: (
            this: void,
            timePickerDialog: ITimePickerDialog,
            props: {
                cancelText?: string | undefined;
                confirmText?: string | undefined;
                errorInvalidText?: string | undefined;
                helpText?: string | undefined;
                hourLabelText?: string | undefined;
                initialEntryMode: TimePickerEntryMode;
                key?: IKey | undefined;
                minuteLabelText?: string | undefined;
                onEntryModeChanged?: (
                    __: TimePickerEntryMode
                ) => void | undefined;
                restorationId?: string | undefined;
                initialTime: ITimeOfDay;
            }
        ) => ITimePickerDialog;
    };
};
export interface ITimePickerDialog {
    initialTime: ITimeOfDay;
    initialEntryMode: TimePickerEntryMode;
    cancelText: string | undefined;
    confirmText: string | undefined;
    helpText: string | undefined;
    errorInvalidText: string | undefined;
    hourLabelText: string | undefined;
    minuteLabelText: string | undefined;
    restorationId: string | undefined;
    key: IKey | undefined;
    createState: () => IState<ITimePickerDialog>;
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
export class TimePickerDialog implements IStatefulWidget, IDiagnosticable {
    public readonly initialTime: ITimeOfDay = undefined as any;
    public readonly initialEntryMode: TimePickerEntryMode = undefined as any;
    public readonly cancelText: string | undefined = undefined as any;
    public readonly confirmText: string | undefined = undefined as any;
    public readonly helpText: string | undefined = undefined as any;
    public readonly errorInvalidText: string | undefined = undefined as any;
    public readonly hourLabelText: string | undefined = undefined as any;
    public readonly minuteLabelText: string | undefined = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        cancelText?: string | undefined;
        confirmText?: string | undefined;
        errorInvalidText?: string | undefined;
        helpText?: string | undefined;
        hourLabelText?: string | undefined;
        initialEntryMode?: TimePickerEntryMode;
        key?: IKey | undefined;
        minuteLabelText?: string | undefined;
        onEntryModeChanged?: (__: TimePickerEntryMode) => void | undefined;
        restorationId?: string | undefined;
        initialTime: ITimeOfDay;
    }) {
        flutter.material.timePickerDialog(this, {
            ...timePickerDialogDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<ITimePickerDialog> =
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
    public createState(): IState<ITimePickerDialog> {
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
const timePickerDialogDefaultProps = {
    initialEntryMode: TimePickerEntryMode.dial,
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
