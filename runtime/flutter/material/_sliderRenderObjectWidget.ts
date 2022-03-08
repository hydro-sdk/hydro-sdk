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
import { I_RenderSlider } from "./_renderSlider";
import { I_SliderState } from "./_sliderState";
import { ISliderThemeData } from "./sliderThemeData";
declare const flutter: {
    material: {
        _sliderRenderObjectWidget: (
            this: void,
            _sliderRenderObjectWidget: I_SliderRenderObjectWidget,
            props: {
                key?: IKey | undefined;
                divisions?: number | undefined;
                hasFocus: boolean;
                hovering: boolean;
                label?: string | undefined;
                onChangeEnd?: (value: number) => void | undefined;
                onChangeStart?: (value: number) => void | undefined;
                onChanged?: (value: number) => void | undefined;
                screenSize: ISize;
                semanticFormatterCallback?: (
                    value: number
                ) => string | undefined;
                sliderTheme: ISliderThemeData;
                state: I_SliderState;
                textScaleFactor: number;
                value: number;
            }
        ) => I_SliderRenderObjectWidget;
    };
};
export interface I_SliderRenderObjectWidget {
    value: number;
    divisions: number | undefined;
    label: string | undefined;
    sliderTheme: ISliderThemeData;
    textScaleFactor: number;
    screenSize: ISize;
    state: I_SliderState;
    hasFocus: boolean;
    hovering: boolean;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => I_RenderSlider;
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
export class _SliderRenderObjectWidget
    implements ILeafRenderObjectWidget, IDiagnosticable
{
    public readonly value: number = undefined as any;
    public readonly divisions: number | undefined = undefined as any;
    public readonly label: string | undefined = undefined as any;
    public readonly sliderTheme: ISliderThemeData = undefined as any;
    public readonly textScaleFactor: number = undefined as any;
    public readonly screenSize: ISize = undefined as any;
    public readonly state: I_SliderState = undefined as any;
    public readonly hasFocus: boolean = undefined as any;
    public readonly hovering: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        divisions?: number | undefined;
        hasFocus: boolean;
        hovering: boolean;
        label?: string | undefined;
        onChangeEnd?: (value: number) => void | undefined;
        onChangeStart?: (value: number) => void | undefined;
        onChanged?: (value: number) => void | undefined;
        screenSize: ISize;
        semanticFormatterCallback?: (value: number) => string | undefined;
        sliderTheme: ISliderThemeData;
        state: I_SliderState;
        textScaleFactor: number;
        value: number;
    }) {
        flutter.material._sliderRenderObjectWidget(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderSlider = undefined as any;
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
    public createRenderObject(context: IBuildContext): I_RenderSlider {
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
