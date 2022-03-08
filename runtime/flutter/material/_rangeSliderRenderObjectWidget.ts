import { IList } from "../../dart/core/list";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { ILeafRenderObjectElement } from "../widgets/leafRenderObjectElement";
import { ILeafRenderObjectWidget } from "../widgets/leafRenderObjectWidget";
import { I_RangeSliderState } from "./_rangeSliderState";
import { I_RenderRangeSlider } from "./_renderRangeSlider";
import { IRangeLabels } from "./rangeLabels";
import { IRangeValues } from "./rangeValues";
import { ISliderThemeData } from "./sliderThemeData";
declare const flutter: {
    material: {
        _rangeSliderRenderObjectWidget: (
            this: void,
            _rangeSliderRenderObjectWidget: I_RangeSliderRenderObjectWidget,
            props: {
                key?: IKey | undefined;
                divisions?: number | undefined;
                labels?: IRangeLabels | undefined;
                onChangeEnd?: (value: IRangeValues) => void | undefined;
                onChangeStart?: (value: IRangeValues) => void | undefined;
                onChanged?: (value: IRangeValues) => void | undefined;
                screenSize: ISize;
                semanticFormatterCallback?: (
                    value: number
                ) => string | undefined;
                sliderTheme: ISliderThemeData;
                state: I_RangeSliderState;
                textScaleFactor: number;
                values: IRangeValues;
            }
        ) => I_RangeSliderRenderObjectWidget;
    };
};
export interface I_RangeSliderRenderObjectWidget {
    values: IRangeValues;
    divisions: number | undefined;
    labels: IRangeLabels | undefined;
    sliderTheme: ISliderThemeData;
    textScaleFactor: number;
    screenSize: ISize;
    state: I_RangeSliderState;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => I_RenderRangeSlider;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createElement: () => ILeafRenderObjectElement;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class _RangeSliderRenderObjectWidget
    implements ILeafRenderObjectWidget, IDiagnosticable
{
    public readonly values: IRangeValues = undefined as any;
    public readonly divisions: number | undefined = undefined as any;
    public readonly labels: IRangeLabels | undefined = undefined as any;
    public readonly sliderTheme: ISliderThemeData = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly screenSize: ISize = undefined as any;
    public readonly state: I_RangeSliderState = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        divisions?: number | undefined;
        labels?: IRangeLabels | undefined;
        onChangeEnd?: (value: IRangeValues) => void | undefined;
        onChangeStart?: (value: IRangeValues) => void | undefined;
        onChanged?: (value: IRangeValues) => void | undefined;
        screenSize: ISize;
        semanticFormatterCallback?: (value: number) => string | undefined;
        sliderTheme: ISliderThemeData;
        state: I_RangeSliderState;
        textScaleFactor: number;
        values: IRangeValues;
    }) {
        flutter.material._rangeSliderRenderObjectWidget(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderRangeSlider = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createElement: () => ILeafRenderObjectElement =
        undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public createRenderObject(context: IBuildContext): I_RenderRangeSlider {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public createElement(): ILeafRenderObjectElement {
        return this._dart_createElement();
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
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
