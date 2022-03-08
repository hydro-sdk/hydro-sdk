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
import { IRangeLabels } from "./rangeLabels";
import { IRangeValues } from "./rangeValues";
declare const flutter: {
    material: {
        rangeSlider: (
            this: void,
            rangeSlider: IRangeSlider,
            props: {
                activeColor?: IColor | undefined;
                divisions?: number | undefined;
                inactiveColor?: IColor | undefined;
                key?: IKey | undefined;
                labels?: IRangeLabels | undefined;
                max: number;
                min: number;
                onChangeEnd?: (value: IRangeValues) => void | undefined;
                onChangeStart?: (value: IRangeValues) => void | undefined;
                semanticFormatterCallback?: (
                    value: number
                ) => string | undefined;
                onChanged?: (value: IRangeValues) => void | undefined;
                values: IRangeValues;
            }
        ) => IRangeSlider;
    };
};
export interface IRangeSlider {
    values: IRangeValues;
    min: number;
    max: number;
    divisions: number | undefined;
    labels: IRangeLabels | undefined;
    activeColor: IColor | undefined;
    inactiveColor: IColor | undefined;
    key: IKey | undefined;
    createState: () => IState<IRangeSlider>;
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
export class RangeSlider implements IStatefulWidget, IDiagnosticable {
    public static _minTouchTargetWidth = double.kMinInteractiveDimension;
    public readonly values: IRangeValues = undefined as any;
    public readonly min: number = undefined as any;
    public readonly max: number = undefined as any;
    public readonly divisions: number | undefined = undefined as any;
    public readonly labels: IRangeLabels | undefined = undefined as any;
    public readonly activeColor: IColor | undefined = undefined as any;
    public readonly inactiveColor: IColor | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        activeColor?: IColor | undefined;
        divisions?: number | undefined;
        inactiveColor?: IColor | undefined;
        key?: IKey | undefined;
        labels?: IRangeLabels | undefined;
        max?: number;
        min?: number;
        onChangeEnd?: (value: IRangeValues) => void | undefined;
        onChangeStart?: (value: IRangeValues) => void | undefined;
        semanticFormatterCallback?: (value: number) => string | undefined;
        onChanged?: (value: IRangeValues) => void | undefined;
        values: IRangeValues;
    }) {
        flutter.material.rangeSlider(this, {
            ...rangeSliderDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IRangeSlider> =
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
    public createState(): IState<IRangeSlider> {
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
const rangeSliderDefaultProps = {
    max: 1.0,
    min: 0.0,
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
