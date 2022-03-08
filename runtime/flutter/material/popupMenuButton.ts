import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IOffset, Offset } from "../../dart/ui/offset";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IPopupMenuButtonState } from "./popupMenuButtonState";
import { IPopupMenuEntry } from "./popupMenuEntry";
declare const flutter: {
    material: {
        popupMenuButton: <T>(
            this: void,
            popupMenuButton: IPopupMenuButton<T>,
            props: {
                child?: IWidget | undefined;
                color?: IColor | undefined;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                enabled: boolean;
                icon?: IWidget | undefined;
                iconSize?: number | undefined;
                initialValue?: T | undefined;
                key?: IKey | undefined;
                offset: IOffset;
                onCanceled?: () => void | undefined;
                onSelected?: (value: T) => void | undefined;
                padding: IEdgeInsetsGeometry;
                shape?: IShapeBorder | undefined;
                tooltip?: string | undefined;
                itemBuilder: (
                    context: IBuildContext
                ) => IList<IPopupMenuEntry<T>>;
            }
        ) => IPopupMenuButton<T>;
    };
};
export interface IPopupMenuButton<T> {
    tooltip: string | undefined;
    elevation: number | undefined;
    padding: IEdgeInsetsGeometry;
    child: IWidget | undefined;
    icon: IWidget | undefined;
    offset: IOffset;
    enabled: boolean;
    shape: IShapeBorder | undefined;
    color: IColor | undefined;
    enableFeedback: boolean | undefined;
    iconSize: number | undefined;
    key: IKey | undefined;
    createState: () => IPopupMenuButtonState<T>;
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
export class PopupMenuButton<T> implements IStatefulWidget, IDiagnosticable {
    public readonly tooltip: string | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly icon: IWidget | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public readonly enabled: boolean = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly iconSize: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        child?: IWidget | undefined;
        color?: IColor | undefined;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        enabled?: boolean;
        icon?: IWidget | undefined;
        iconSize?: number | undefined;
        initialValue?: T | undefined;
        key?: IKey | undefined;
        offset?: IOffset;
        onCanceled?: () => void | undefined;
        onSelected?: (value: T) => void | undefined;
        padding?: IEdgeInsetsGeometry;
        shape?: IShapeBorder | undefined;
        tooltip?: string | undefined;
        itemBuilder: (context: IBuildContext) => IList<IPopupMenuEntry<T>>;
    }) {
        flutter.material.popupMenuButton(this, {
            ...popupMenuButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IPopupMenuButtonState<T> =
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
    public createState(): IPopupMenuButtonState<T> {
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
const popupMenuButtonDefaultProps = {
    enabled: true,
    offset: Offset.zero,
    padding: EdgeInsets.all(8.0),
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
