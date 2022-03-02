import { IList } from "../../dart/core/list";
import { BlendMode } from "../../dart/ui/blendMode";
import { IColor } from "../../dart/ui/color";
import { FilterQuality } from "../../dart/ui/filterQuality";
import { IImage } from "../../dart/ui/image";
import { IRect } from "../../dart/ui/rect";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { BoxFit } from "../painting/boxFit";
import { ImageRepeat } from "../painting/imageRepeat";
import { IRenderImage } from "../rendering/renderImage";
import { IBuildContext } from "./buildContext";
import { ILeafRenderObjectElement } from "./leafRenderObjectElement";
import { ILeafRenderObjectWidget } from "./leafRenderObjectWidget";
declare const flutter: {
    widgets: {
        rawImage: (
            this: void,
            rawImage: IRawImage,
            props: {
                alignment: IAlignmentGeometry;
                centerSlice?: IRect | undefined;
                color?: IColor | undefined;
                colorBlendMode?: BlendMode | undefined;
                debugImageLabel?: string | undefined;
                filterQuality: FilterQuality;
                fit?: BoxFit | undefined;
                height?: number | undefined;
                image?: IImage | undefined;
                invertColors: boolean;
                isAntiAlias: boolean;
                key?: IKey | undefined;
                matchTextDirection: boolean;
                opacity?: IAnimation<number> | undefined;
                repeat: ImageRepeat;
                scale: number;
                width?: number | undefined;
            }
        ) => IRawImage;
    };
};
export interface IRawImage {
    image: IImage | undefined;
    debugImageLabel: string | undefined;
    width: number | undefined;
    height: number | undefined;
    scale: number;
    color: IColor | undefined;
    opacity: IAnimation<number> | undefined;
    filterQuality: FilterQuality;
    colorBlendMode: BlendMode | undefined;
    fit: BoxFit | undefined;
    alignment: IAlignmentGeometry;
    repeat: ImageRepeat;
    centerSlice: IRect | undefined;
    matchTextDirection: boolean;
    invertColors: boolean;
    isAntiAlias: boolean;
    key: IKey | undefined;
    createRenderObject: (context: IBuildContext) => IRenderImage;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    didUnmountRenderObject: (renderObject: unknown) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => ILeafRenderObjectElement;
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
export class RawImage implements ILeafRenderObjectWidget, IDiagnosticable {
    public readonly image: IImage | undefined = undefined as any;
    public readonly debugImageLabel: string | undefined = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly scale: number = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly opacity: IAnimation<number> | undefined = undefined as any;
    public readonly filterQuality: FilterQuality = undefined as any;
    public readonly colorBlendMode: BlendMode | undefined = undefined as any;
    public readonly fit: BoxFit | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly repeat: ImageRepeat = undefined as any;
    public readonly centerSlice: IRect | undefined = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public readonly invertColors: boolean = undefined as any;
    public readonly isAntiAlias: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        centerSlice?: IRect | undefined;
        color?: IColor | undefined;
        colorBlendMode?: BlendMode | undefined;
        debugImageLabel?: string | undefined;
        filterQuality?: FilterQuality;
        fit?: BoxFit | undefined;
        height?: number | undefined;
        image?: IImage | undefined;
        invertColors?: boolean;
        isAntiAlias?: boolean;
        key?: IKey | undefined;
        matchTextDirection?: boolean;
        opacity?: IAnimation<number> | undefined;
        repeat?: ImageRepeat;
        scale?: number;
        width?: number | undefined;
    }) {
        flutter.widgets.rawImage(this, {
            ...rawImageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderImage = undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => ILeafRenderObjectElement =
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
    public createRenderObject(context: IBuildContext): IRenderImage {
        return this._dart_createRenderObject(context);
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): ILeafRenderObjectElement {
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
const rawImageDefaultProps = {
    alignment: Alignment.center,
    filterQuality: FilterQuality.low,
    invertColors: false,
    isAntiAlias: false,
    matchTextDirection: false,
    repeat: ImageRepeat.noRepeat,
    scale: 1.0,
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
