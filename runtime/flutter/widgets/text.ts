import { IList } from "../../dart/core/list";
import { ILocale } from "../../dart/ui/locale";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { ITextHeightBehavior } from "../../dart/ui/textHeightBehavior";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IInlineSpan } from "../painting/inlineSpan";
import { IStrutStyle } from "../painting/strutStyle";
import { TextOverflow } from "../painting/textOverflow";
import { ITextStyle } from "../painting/textStyle";
import { TextWidthBasis } from "../painting/textWidthBasis";
import { IBuildContext } from "./buildContext";
import { IStatelessElement } from "./statelessElement";
import { IStatelessWidget } from "./statelessWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        text: (
            this: void,
            text: IText,
            data: string,
            props?: {
                key?: IKey | undefined;
                locale?: ILocale | undefined;
                maxLines?: number | undefined;
                overflow?: TextOverflow | undefined;
                semanticsLabel?: string | undefined;
                softWrap?: boolean | undefined;
                strutStyle?: IStrutStyle | undefined;
                style?: ITextStyle | undefined;
                textAlign?: TextAlign | undefined;
                textDirection?: TextDirection | undefined;
                textHeightBehavior?: ITextHeightBehavior | undefined;
                textScaleFactor?: number | undefined;
                textWidthBasis?: TextWidthBasis | undefined;
            }
        ) => IText;
    };
};
export interface IText {
    data: string | undefined;
    textSpan: IInlineSpan | undefined;
    style: ITextStyle | undefined;
    strutStyle: IStrutStyle | undefined;
    textAlign: TextAlign | undefined;
    textDirection: TextDirection | undefined;
    locale: ILocale | undefined;
    softWrap: boolean | undefined;
    overflow: TextOverflow | undefined;
    textScaleFactor: number | undefined;
    maxLines: number | undefined;
    semanticsLabel: string | undefined;
    textWidthBasis: TextWidthBasis | undefined;
    textHeightBehavior: ITextHeightBehavior | undefined;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatelessElement;
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
export class Text implements IStatelessWidget, IDiagnosticable {
    public readonly data: string | undefined = undefined as any;
    public readonly textSpan: IInlineSpan | undefined = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly strutStyle: IStrutStyle | undefined = undefined as any;
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly locale: ILocale | undefined = undefined as any;
    public readonly softWrap: boolean | undefined = undefined as any;
    public readonly overflow: TextOverflow | undefined = undefined as any;
    public readonly textScaleFactor: number | undefined = undefined as any;
    public readonly maxLines: number | undefined = undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly textWidthBasis: TextWidthBasis | undefined =
        undefined as any;
    public readonly textHeightBehavior: ITextHeightBehavior | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(
        data: string,
        props?: {
            key?: IKey | undefined;
            locale?: ILocale | undefined;
            maxLines?: number | undefined;
            overflow?: TextOverflow | undefined;
            semanticsLabel?: string | undefined;
            softWrap?: boolean | undefined;
            strutStyle?: IStrutStyle | undefined;
            style?: ITextStyle | undefined;
            textAlign?: TextAlign | undefined;
            textDirection?: TextDirection | undefined;
            textHeightBehavior?: ITextHeightBehavior | undefined;
            textScaleFactor?: number | undefined;
            textWidthBasis?: TextWidthBasis | undefined;
        }
    ) {
        flutter.widgets.text(this, data, props);
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatelessElement {
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
