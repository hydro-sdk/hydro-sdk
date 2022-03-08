import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsets } from "../painting/edgeInsets";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IStatefulElement } from "../widgets/statefulElement";
import { IWidget } from "../widgets/widget";
import { IPopupMenuEntry } from "./popupMenuEntry";
import { IPopupMenuItemState } from "./popupMenuItemState";
declare const flutter: {
    material: {
        popupMenuItem: <T>(
            this: void,
            popupMenuItem: IPopupMenuItem<T>,
            props: {
                enabled: boolean;
                height: number;
                key?: IKey | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onTap?: () => void | undefined;
                padding?: IEdgeInsets | undefined;
                textStyle?: ITextStyle | undefined;
                value?: T | undefined;
                child?: IWidget | undefined;
            }
        ) => IPopupMenuItem<T>;
    };
};
export interface IPopupMenuItem<T> {
    enabled: boolean;
    height: number;
    padding: IEdgeInsets | undefined;
    textStyle: ITextStyle | undefined;
    mouseCursor: IMouseCursor | undefined;
    child: IWidget | undefined;
    key: IKey | undefined;
    represents: (value?: T | undefined) => boolean;
    createState: () => IPopupMenuItemState<T, IPopupMenuItem<T>>;
    getHeight: () => number;
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
export class PopupMenuItem<T> implements IPopupMenuEntry<T>, IDiagnosticable {
    public readonly enabled: boolean = undefined as any;
    public readonly height: number = undefined as any;
    public readonly padding: IEdgeInsets | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        enabled?: boolean;
        height: number;
        key?: IKey | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onTap?: () => void | undefined;
        padding?: IEdgeInsets | undefined;
        textStyle?: ITextStyle | undefined;
        value?: T | undefined;
        child?: IWidget | undefined;
    }) {
        flutter.material.popupMenuItem(this, {
            ...popupMenuItemDefaultProps,
            ...props,
        });
    }
    private readonly _dart_represents: (value?: T | undefined) => boolean =
        undefined as any;
    private readonly _dart_createState: () => IPopupMenuItemState<
        T,
        IPopupMenuItem<T>
    > = undefined as any;
    private readonly _dart_getHeight: () => number = undefined as any;
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
    public represents(value?: T | undefined): boolean {
        return this._dart_represents(value);
    }
    public createState(): IPopupMenuItemState<T, IPopupMenuItem<T>> {
        return this._dart_createState();
    }
    public getHeight(): number {
        return this._dart_getHeight();
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
const popupMenuItemDefaultProps = {
    enabled: true,
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
