import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { Radius } from "../../dart/ui/radius";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { BorderRadius, IBorderRadius } from "../painting/borderRadius";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { CupertinoColors } from "./cupertinoColors";
declare const flutter: {
    cupertino: {
        cupertinoButton: (
            this: void,
            cupertinoButton: ICupertinoButton,
            props: {
                alignment: IAlignmentGeometry;
                borderRadius?: IBorderRadius | undefined;
                color?: IColor | undefined;
                disabledColor: IColor;
                key?: IKey | undefined;
                minSize?: number | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                pressedOpacity?: number | undefined;
                child: IWidget;
                onPressed?: () => void | undefined;
            }
        ) => ICupertinoButton;
    };
};
export interface ICupertinoButton {
    child: IWidget;
    padding: IEdgeInsetsGeometry | undefined;
    color: IColor | undefined;
    disabledColor: IColor;
    minSize: number | undefined;
    pressedOpacity: number | undefined;
    borderRadius: IBorderRadius | undefined;
    alignment: IAlignmentGeometry;
    key: IKey | undefined;
    getEnabled: () => boolean;
    createState: () => IState<ICupertinoButton>;
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
export class CupertinoButton implements IStatefulWidget, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly disabledColor: IColor = undefined as any;
    public readonly minSize: number | undefined = undefined as any;
    public readonly pressedOpacity: number | undefined = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        borderRadius?: IBorderRadius | undefined;
        color?: IColor | undefined;
        disabledColor?: IColor;
        key?: IKey | undefined;
        minSize?: number | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        pressedOpacity?: number | undefined;
        child: IWidget;
        onPressed?: () => void | undefined;
    }) {
        flutter.cupertino.cupertinoButton(this, {
            ...cupertinoButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getEnabled: () => boolean = undefined as any;
    private readonly _dart_createState: () => IState<ICupertinoButton> =
        undefined as any;
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
    public getEnabled(): boolean {
        return this._dart_getEnabled();
    }
    public createState(): IState<ICupertinoButton> {
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
const cupertinoButtonDefaultProps = {
    alignment: Alignment.center,
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
    disabledColor: CupertinoColors.quaternarySystemFill,
    pressedOpacity: 0.4,
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
