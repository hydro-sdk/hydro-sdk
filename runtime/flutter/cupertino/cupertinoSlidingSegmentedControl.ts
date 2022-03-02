import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { CupertinoColors } from "./cupertinoColors";
import { CupertinoDynamicColor } from "./cupertinoDynamicColor";
declare const flutter: {
    cupertino: {
        cupertinoSlidingSegmentedControl: <T>(
            this: void,
            cupertinoSlidingSegmentedControl: ICupertinoSlidingSegmentedControl<T>,
            props: {
                backgroundColor: IColor;
                groupValue?: T | undefined;
                key?: IKey | undefined;
                padding: IEdgeInsetsGeometry;
                thumbColor: IColor;
                children: IMap<T, IWidget>;
                onValueChanged: (value?: T | undefined) => void;
            }
        ) => ICupertinoSlidingSegmentedControl<T>;
    };
};
export interface ICupertinoSlidingSegmentedControl<T> {
    children: IMap<T, IWidget>;
    backgroundColor: IColor;
    thumbColor: IColor;
    padding: IEdgeInsetsGeometry;
    key: IKey | undefined;
    createState: () => IState<ICupertinoSlidingSegmentedControl<T>>;
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
export class CupertinoSlidingSegmentedControl<T>
    implements IStatefulWidget, IDiagnosticable
{
    public readonly children: IMap<T, IWidget> = undefined as any;
    public readonly backgroundColor: IColor = undefined as any;
    public readonly thumbColor: IColor = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor;
        groupValue?: T | undefined;
        key?: IKey | undefined;
        padding?: IEdgeInsetsGeometry;
        thumbColor?: IColor;
        children: IMap<T, IWidget>;
        onValueChanged: (value?: T | undefined) => void;
    }) {
        flutter.cupertino.cupertinoSlidingSegmentedControl(this, {
            ...cupertinoSlidingSegmentedControlDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<
        ICupertinoSlidingSegmentedControl<T>
    > = undefined as any;
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
    public createState(): IState<ICupertinoSlidingSegmentedControl<T>> {
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
const cupertinoSlidingSegmentedControlDefaultProps = {
    backgroundColor: CupertinoColors.tertiarySystemFill,
    padding: EdgeInsets.symmetric({ vertical: 2, horizontal: 3 }),
    thumbColor: CupertinoDynamicColor.withBrightness(),
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
