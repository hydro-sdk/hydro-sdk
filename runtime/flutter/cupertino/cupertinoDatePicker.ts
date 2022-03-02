import { IDateTime } from "../../dart/core/dateTime";
import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { CupertinoDatePickerMode } from "./cupertinoDatePickerMode";
import { DatePickerDateOrder } from "./datePickerDateOrder";
declare const flutter: {
    cupertino: {
        cupertinoDatePicker: (
            this: void,
            cupertinoDatePicker: ICupertinoDatePicker,
            props: {
                backgroundColor?: IColor | undefined;
                dateOrder?: DatePickerDateOrder | undefined;
                initialDateTime?: IDateTime | undefined;
                key?: IKey | undefined;
                maximumDate?: IDateTime | undefined;
                maximumYear?: number | undefined;
                minimumDate?: IDateTime | undefined;
                minimumYear: number;
                minuteInterval: number;
                mode: CupertinoDatePickerMode;
                use24hFormat: boolean;
                onDateTimeChanged: (value: IDateTime) => void;
            }
        ) => ICupertinoDatePicker;
    };
};
export interface ICupertinoDatePicker {
    mode: CupertinoDatePickerMode;
    initialDateTime: IDateTime;
    minimumDate: IDateTime | undefined;
    maximumDate: IDateTime | undefined;
    minimumYear: number;
    maximumYear: number | undefined;
    minuteInterval: number;
    use24hFormat: boolean;
    dateOrder: DatePickerDateOrder | undefined;
    backgroundColor: IColor | undefined;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
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
export class CupertinoDatePicker implements IStatefulWidget, IDiagnosticable {
    public readonly mode: CupertinoDatePickerMode = undefined as any;
    public readonly initialDateTime: IDateTime = undefined as any;
    public readonly minimumDate: IDateTime | undefined = undefined as any;
    public readonly maximumDate: IDateTime | undefined = undefined as any;
    public readonly minimumYear: number = undefined as any;
    public readonly maximumYear: number | undefined = undefined as any;
    public readonly minuteInterval: number = undefined as any;
    public readonly use24hFormat: boolean = undefined as any;
    public readonly dateOrder: DatePickerDateOrder | undefined =
        undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        dateOrder?: DatePickerDateOrder | undefined;
        initialDateTime?: IDateTime | undefined;
        key?: IKey | undefined;
        maximumDate?: IDateTime | undefined;
        maximumYear?: number | undefined;
        minimumDate?: IDateTime | undefined;
        minimumYear?: number;
        minuteInterval?: number;
        mode?: CupertinoDatePickerMode;
        use24hFormat?: boolean;
        onDateTimeChanged: (value: IDateTime) => void;
    }) {
        flutter.cupertino.cupertinoDatePicker(this, {
            ...cupertinoDatePickerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public createState(): IState<IStatefulWidget> {
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
const cupertinoDatePickerDefaultProps = {
    minimumYear: 1,
    minuteInterval: 1,
    mode: CupertinoDatePickerMode.dateAndTime,
    use24hFormat: false,
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
