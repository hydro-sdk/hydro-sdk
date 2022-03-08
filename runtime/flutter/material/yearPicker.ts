import { IDateTime } from "../../dart/core/dateTime";
import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
declare const flutter: {
    material: {
        yearPicker: (
            this: void,
            yearPicker: IYearPicker,
            props: {
                currentDate?: IDateTime | undefined;
                dragStartBehavior: DragStartBehavior;
                initialDate?: IDateTime | undefined;
                key?: IKey | undefined;
                firstDate: IDateTime;
                lastDate: IDateTime;
                onChanged: (value: IDateTime) => void;
                selectedDate: IDateTime;
            }
        ) => IYearPicker;
    };
};
export interface IYearPicker {
    currentDate: IDateTime;
    firstDate: IDateTime;
    lastDate: IDateTime;
    initialDate: IDateTime;
    selectedDate: IDateTime;
    dragStartBehavior: DragStartBehavior;
    key: IKey | undefined;
    createState: () => IState<IYearPicker>;
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
export class YearPicker implements IStatefulWidget, IDiagnosticable {
    public readonly currentDate: IDateTime = undefined as any;
    public readonly firstDate: IDateTime = undefined as any;
    public readonly lastDate: IDateTime = undefined as any;
    public readonly initialDate: IDateTime = undefined as any;
    public readonly selectedDate: IDateTime = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        currentDate?: IDateTime | undefined;
        dragStartBehavior?: DragStartBehavior;
        initialDate?: IDateTime | undefined;
        key?: IKey | undefined;
        firstDate: IDateTime;
        lastDate: IDateTime;
        onChanged: (value: IDateTime) => void;
        selectedDate: IDateTime;
    }) {
        flutter.material.yearPicker(this, {
            ...yearPickerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IYearPicker> =
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
    public createState(): IState<IYearPicker> {
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
const yearPickerDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
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
