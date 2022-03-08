import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderSide } from "../painting/borderSide";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { IChipAttributes } from "./chipAttributes";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
import { ITappableChipAttributes } from "./tappableChipAttributes";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        actionChip: (
            this: void,
            actionChip: IActionChip,
            props: {
                autofocus: boolean;
                avatar?: IWidget | undefined;
                backgroundColor?: IColor | undefined;
                clipBehavior: Clip;
                elevation?: number | undefined;
                focusNode?: IFocusNode | undefined;
                key?: IKey | undefined;
                labelPadding?: IEdgeInsetsGeometry | undefined;
                labelStyle?: ITextStyle | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                pressElevation?: number | undefined;
                shadowColor?: IColor | undefined;
                shape?: IOutlinedBorder | undefined;
                side?: IBorderSide | undefined;
                tooltip?: string | undefined;
                visualDensity?: IVisualDensity | undefined;
                label: IWidget;
                onPressed: () => void;
            }
        ) => IActionChip;
    };
};
export interface IActionChip {
    avatar: IWidget | undefined;
    label: IWidget;
    labelStyle: ITextStyle | undefined;
    labelPadding: IEdgeInsetsGeometry | undefined;
    pressElevation: number | undefined;
    tooltip: string | undefined;
    side: IBorderSide | undefined;
    shape: IOutlinedBorder | undefined;
    clipBehavior: Clip;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    backgroundColor: IColor | undefined;
    padding: IEdgeInsetsGeometry | undefined;
    visualDensity: IVisualDensity | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    elevation: number | undefined;
    shadowColor: IColor | undefined;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    createElement: () => IStatelessElement;
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
    getLabel: () => IWidget;
    getAvatar: () => IWidget | undefined;
    getLabelStyle: () => ITextStyle | undefined;
    getSide: () => IBorderSide | undefined;
    getShape: () => IOutlinedBorder | undefined;
    getClipBehavior: () => Clip;
    getFocusNode: () => IFocusNode | undefined;
    getAutofocus: () => boolean;
    getBackgroundColor: () => IColor | undefined;
    getPadding: () => IEdgeInsetsGeometry | undefined;
    getVisualDensity: () => IVisualDensity | undefined;
    getLabelPadding: () => IEdgeInsetsGeometry | undefined;
    getMaterialTapTargetSize: () => MaterialTapTargetSize | undefined;
    getElevation: () => number | undefined;
    getShadowColor: () => IColor | undefined;
    getOnPressed: () => () => void | undefined;
    getPressElevation: () => number | undefined;
    getTooltip: () => string | undefined;
}
export class ActionChip
    implements
        IStatelessWidget,
        IDiagnosticable,
        IChipAttributes,
        ITappableChipAttributes
{
    public readonly avatar: IWidget | undefined = undefined as any;
    public readonly label: IWidget = undefined as any;
    public readonly labelStyle: ITextStyle | undefined = undefined as any;
    public readonly labelPadding: IEdgeInsetsGeometry | undefined =
        undefined as any;
    public readonly pressElevation: number | undefined = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
    public readonly side: IBorderSide | undefined = undefined as any;
    public readonly shape: IOutlinedBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        autofocus?: boolean;
        avatar?: IWidget | undefined;
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip;
        elevation?: number | undefined;
        focusNode?: IFocusNode | undefined;
        key?: IKey | undefined;
        labelPadding?: IEdgeInsetsGeometry | undefined;
        labelStyle?: ITextStyle | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        pressElevation?: number | undefined;
        shadowColor?: IColor | undefined;
        shape?: IOutlinedBorder | undefined;
        side?: IBorderSide | undefined;
        tooltip?: string | undefined;
        visualDensity?: IVisualDensity | undefined;
        label: IWidget;
        onPressed: () => void;
    }) {
        flutter.material.actionChip(this, {
            ...actionChipDefaultProps,
            ...props,
        });
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    private readonly _dart_getLabel: () => IWidget = undefined as any;
    private readonly _dart_getAvatar: () => IWidget | undefined =
        undefined as any;
    private readonly _dart_getLabelStyle: () => ITextStyle | undefined =
        undefined as any;
    private readonly _dart_getSide: () => IBorderSide | undefined =
        undefined as any;
    private readonly _dart_getShape: () => IOutlinedBorder | undefined =
        undefined as any;
    private readonly _dart_getClipBehavior: () => Clip = undefined as any;
    private readonly _dart_getFocusNode: () => IFocusNode | undefined =
        undefined as any;
    private readonly _dart_getAutofocus: () => boolean = undefined as any;
    private readonly _dart_getBackgroundColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry | undefined =
        undefined as any;
    private readonly _dart_getVisualDensity: () => IVisualDensity | undefined =
        undefined as any;
    private readonly _dart_getLabelPadding: () =>
        | IEdgeInsetsGeometry
        | undefined = undefined as any;
    private readonly _dart_getMaterialTapTargetSize: () =>
        | MaterialTapTargetSize
        | undefined = undefined as any;
    private readonly _dart_getElevation: () => number | undefined =
        undefined as any;
    private readonly _dart_getShadowColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_getOnPressed: () => () => void | undefined =
        undefined as any;
    private readonly _dart_getPressElevation: () => number | undefined =
        undefined as any;
    private readonly _dart_getTooltip: () => string | undefined =
        undefined as any;
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createElement(): IStatelessElement {
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
    public getLabel(): IWidget {
        return this._dart_getLabel();
    }
    public getAvatar(): IWidget | undefined {
        return this._dart_getAvatar();
    }
    public getLabelStyle(): ITextStyle | undefined {
        return this._dart_getLabelStyle();
    }
    public getSide(): IBorderSide | undefined {
        return this._dart_getSide();
    }
    public getShape(): IOutlinedBorder | undefined {
        return this._dart_getShape();
    }
    public getClipBehavior(): Clip {
        return this._dart_getClipBehavior();
    }
    public getFocusNode(): IFocusNode | undefined {
        return this._dart_getFocusNode();
    }
    public getAutofocus(): boolean {
        return this._dart_getAutofocus();
    }
    public getBackgroundColor(): IColor | undefined {
        return this._dart_getBackgroundColor();
    }
    public getPadding(): IEdgeInsetsGeometry | undefined {
        return this._dart_getPadding();
    }
    public getVisualDensity(): IVisualDensity | undefined {
        return this._dart_getVisualDensity();
    }
    public getLabelPadding(): IEdgeInsetsGeometry | undefined {
        return this._dart_getLabelPadding();
    }
    public getMaterialTapTargetSize(): MaterialTapTargetSize | undefined {
        return this._dart_getMaterialTapTargetSize();
    }
    public getElevation(): number | undefined {
        return this._dart_getElevation();
    }
    public getShadowColor(): IColor | undefined {
        return this._dart_getShadowColor();
    }
    public getOnPressed(): () => void | undefined {
        return this._dart_getOnPressed();
    }
    public getPressElevation(): number | undefined {
        return this._dart_getPressElevation();
    }
    public getTooltip(): string | undefined {
        return this._dart_getTooltip();
    }
}
const actionChipDefaultProps = {
    autofocus: false,
    clipBehavior: Clip.none,
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
