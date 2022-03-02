import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IRenderObject } from "../rendering/renderObject";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { ILeafRenderObjectElement } from "../widgets/leafRenderObjectElement";
import { ILeafRenderObjectWidget } from "../widgets/leafRenderObjectWidget";
import { I_RenderCupertinoSlider } from "./_renderCupertinoSlider";
declare const flutter: {
    cupertino: {
        _cupertinoSliderRenderObjectWidget: (
            this: void,
            _cupertinoSliderRenderObjectWidget: I_CupertinoSliderRenderObjectWidget,
            props: {
                divisions?: number | undefined;
                key?: IKey | undefined;
                onChangeEnd?: (value: number) => void | undefined;
                onChangeStart?: (value: number) => void | undefined;
                onChanged?: (value: number) => void | undefined;
                activeColor: IColor;
                thumbColor: IColor;
                value: number;
                vsync: ITickerProvider;
            }
        ) => I_CupertinoSliderRenderObjectWidget;
    };
};
export interface I_CupertinoSliderRenderObjectWidget {
    value: number;
    divisions: number | undefined;
    activeColor: IColor;
    thumbColor: IColor;
    vsync: ITickerProvider;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => I_RenderCupertinoSlider;
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
export class _CupertinoSliderRenderObjectWidget
    implements ILeafRenderObjectWidget, IDiagnosticable
{
    public readonly value: number = undefined as any;
    public readonly divisions: number | undefined = undefined as any;
    public readonly activeColor: IColor = undefined as any;
    public readonly thumbColor: IColor = undefined as any;
    public readonly vsync: ITickerProvider = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        divisions?: number | undefined;
        key?: IKey | undefined;
        onChangeEnd?: (value: number) => void | undefined;
        onChangeStart?: (value: number) => void | undefined;
        onChanged?: (value: number) => void | undefined;
        activeColor: IColor;
        thumbColor: IColor;
        value: number;
        vsync: ITickerProvider;
    }) {
        flutter.cupertino._cupertinoSliderRenderObjectWidget(this, props);
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => I_RenderCupertinoSlider = undefined as any;
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
    public createRenderObject(context: IBuildContext): I_RenderCupertinoSlider {
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
