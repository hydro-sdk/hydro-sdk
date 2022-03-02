import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { BoxFit } from "../painting/boxFit";
import { IImageProvider } from "../painting/imageProvider";
import { ImageRepeat } from "../painting/imageRepeat";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        fadeInImage: (
            this: void,
            fadeInImage: IFadeInImage,
            props: {
                alignment: IAlignmentGeometry;
                excludeFromSemantics: boolean;
                fadeInCurve: ICurve;
                fadeInDuration: IDuration;
                fadeOutCurve: ICurve;
                fadeOutDuration: IDuration;
                fit?: BoxFit | undefined;
                height?: number | undefined;
                imageErrorBuilder?: (
                    context: IBuildContext,
                    error: Object,
                    stackTrace?: IStackTrace | undefined
                ) => IWidget | undefined;
                imageSemanticLabel?: string | undefined;
                key?: IKey | undefined;
                matchTextDirection: boolean;
                placeholderErrorBuilder?: (
                    context: IBuildContext,
                    error: Object,
                    stackTrace?: IStackTrace | undefined
                ) => IWidget | undefined;
                placeholderFit?: BoxFit | undefined;
                repeat: ImageRepeat;
                width?: number | undefined;
                image: IImageProvider<Object>;
                placeholder: IImageProvider<Object>;
            }
        ) => IFadeInImage;
    };
};
export interface IFadeInImage {
    placeholder: IImageProvider<Object>;
    image: IImageProvider<Object>;
    fadeOutDuration: IDuration;
    fadeOutCurve: ICurve;
    fadeInDuration: IDuration;
    fadeInCurve: ICurve;
    width: number | undefined;
    height: number | undefined;
    fit: BoxFit | undefined;
    placeholderFit: BoxFit | undefined;
    alignment: IAlignmentGeometry;
    repeat: ImageRepeat;
    matchTextDirection: boolean;
    excludeFromSemantics: boolean;
    imageSemanticLabel: string | undefined;
    key: IKey | undefined;
    createState: () => IState<IFadeInImage>;
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
export class FadeInImage implements IStatefulWidget, IDiagnosticable {
    public readonly placeholder: IImageProvider<Object> = undefined as any;
    public readonly image: IImageProvider<Object> = undefined as any;
    public readonly fadeOutDuration: IDuration = undefined as any;
    public readonly fadeOutCurve: ICurve = undefined as any;
    public readonly fadeInDuration: IDuration = undefined as any;
    public readonly fadeInCurve: ICurve = undefined as any;
    public readonly width: number | undefined = undefined as any;
    public readonly height: number | undefined = undefined as any;
    public readonly fit: BoxFit | undefined = undefined as any;
    public readonly placeholderFit: BoxFit | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly repeat: ImageRepeat = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly imageSemanticLabel: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        excludeFromSemantics?: boolean;
        fadeInCurve?: ICurve;
        fadeInDuration?: IDuration;
        fadeOutCurve?: ICurve;
        fadeOutDuration?: IDuration;
        fit?: BoxFit | undefined;
        height?: number | undefined;
        imageErrorBuilder?: (
            context: IBuildContext,
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IWidget | undefined;
        imageSemanticLabel?: string | undefined;
        key?: IKey | undefined;
        matchTextDirection?: boolean;
        placeholderErrorBuilder?: (
            context: IBuildContext,
            error: Object,
            stackTrace?: IStackTrace | undefined
        ) => IWidget | undefined;
        placeholderFit?: BoxFit | undefined;
        repeat?: ImageRepeat;
        width?: number | undefined;
        image: IImageProvider<Object>;
        placeholder: IImageProvider<Object>;
    }) {
        flutter.widgets.fadeInImage(this, {
            ...fadeInImageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IFadeInImage> =
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
    public createState(): IState<IFadeInImage> {
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
const fadeInImageDefaultProps = {
    alignment: Alignment.center,
    excludeFromSemantics: false,
    fadeInCurve: Curves.easeIn,
    fadeInDuration: new Duration({ milliseconds: 700 }),
    fadeOutCurve: Curves.easeOut,
    fadeOutDuration: new Duration({ milliseconds: 300 }),
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
