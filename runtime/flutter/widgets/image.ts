import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { BlendMode } from "../../dart/ui/blendMode";
import { IColor } from "../../dart/ui/color";
import { FilterQuality } from "../../dart/ui/filterQuality";
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
import { IImageChunkEvent } from "../painting/imageChunkEvent";
import { IImageProvider } from "../painting/imageProvider";
import { ImageRepeat } from "../painting/imageRepeat";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        image: (
            this: void,
            image: IImage,
            props: {
                alignment: IAlignmentGeometry;
                centerSlice?: IRect | undefined;
                color?: IColor | undefined;
                colorBlendMode?: BlendMode | undefined;
                errorBuilder?: (
                    context: IBuildContext,
                    error: Object,
                    stackTrace?: IStackTrace | undefined
                ) => IWidget | undefined;
                excludeFromSemantics: boolean;
                filterQuality: FilterQuality;
                fit?: BoxFit | undefined;
                frameBuilder?: (
                    context: IBuildContext,
                    child: IWidget,
                    frame: number | undefined,
                    wasSynchronouslyLoaded: boolean
                ) => IWidget | undefined;
                gaplessPlayback: boolean;
                height?: number | undefined;
                isAntiAlias: boolean;
                key?: IKey | undefined;
                loadingBuilder?: (
                    context: IBuildContext,
                    child: IWidget,
                    loadingProgress?: IImageChunkEvent | undefined
                ) => IWidget | undefined;
                matchTextDirection: boolean;
                opacity?: IAnimation<number> | undefined;
                repeat: ImageRepeat;
                semanticLabel?: string | undefined;
                width?: number | undefined;
                image: IImageProvider<Object>;
            }
        ) => IImage;
    };
};
export interface IImage {
    image: IImageProvider<Object>;
    width: number | undefined;
    height: number | undefined;
    color: IColor | undefined;
    opacity: IAnimation<number> | undefined;
    filterQuality: FilterQuality;
    colorBlendMode: BlendMode | undefined;
    fit: BoxFit | undefined;
    alignment: IAlignmentGeometry;
    repeat: ImageRepeat;
    centerSlice: IRect | undefined;
    matchTextDirection: boolean;
    gaplessPlayback: boolean;
    semanticLabel: string | undefined;
    excludeFromSemantics: boolean;
    isAntiAlias: boolean;
    key: IKey | undefined;
    createState: () => IState<IImage>;
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
export class Image implements IStatefulWidget, IDiagnosticable {
    public readonly image: IImageProvider<Object> = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly opacity: IAnimation<number> | undefined = undefined as any;
    public readonly filterQuality: FilterQuality = undefined as any;
    public readonly colorBlendMode: BlendMode | undefined = undefined as any;
    public readonly fit: BoxFit | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly repeat: ImageRepeat = undefined as any;
    public readonly centerSlice: IRect | undefined = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public readonly gaplessPlayback: boolean = undefined as any;
    public readonly semanticLabel: string | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly isAntiAlias: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        centerSlice?: IRect | undefined;
        color?: IColor | undefined;
        colorBlendMode?: BlendMode | undefined;
        errorBuilder?: (
            context: IBuildContext,
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IWidget | undefined;
        excludeFromSemantics?: boolean;
        filterQuality?: FilterQuality;
        fit?: BoxFit | undefined;
        frameBuilder?: (
            context: IBuildContext,
            child: IWidget,
            frame: number | undefined,
            wasSynchronouslyLoaded: boolean
        ) => IWidget | undefined;
        gaplessPlayback?: boolean;
        height?: number | undefined;
        isAntiAlias?: boolean;
        key?: IKey | undefined;
        loadingBuilder?: (
            context: IBuildContext,
            child: IWidget,
            loadingProgress?: IImageChunkEvent | undefined
        ) => IWidget | undefined;
        matchTextDirection?: boolean;
        opacity?: IAnimation<number> | undefined;
        repeat?: ImageRepeat;
        semanticLabel?: string | undefined;
        width?: number | undefined;
        image: IImageProvider<Object>;
    }) {
        flutter.widgets.image(this, {
            ...imageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IImage> = undefined as any;
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
    public createState(): IState<IImage> {
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
const imageDefaultProps = {
    alignment: Alignment.center,
    excludeFromSemantics: false,
    filterQuality: FilterQuality.low,
    gaplessPlayback: false,
    isAntiAlias: false,
    matchTextDirection: false,
    repeat: ImageRepeat.noRepeat,
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
