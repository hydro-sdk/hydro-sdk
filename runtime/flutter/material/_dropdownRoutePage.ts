import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderRadius } from "../painting/borderRadius";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { ITextStyle } from "../painting/textStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IBuildContext } from "../widgets/buildContext";
import { ICapturedThemes } from "../widgets/capturedThemes";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { I_DropdownRoute } from "./_dropdownRoute";
import { I_MenuItem } from "./_menuItem";
declare const flutter: {
    material: {
        _dropdownRoutePage: <T>(
            this: void,
            _dropdownRoutePage: I_DropdownRoutePage<T>,
            props: {
                borderRadius?: IBorderRadius | undefined;
                elevation: number;
                items?: IList<I_MenuItem<T>> | undefined;
                key?: IKey | undefined;
                style?: ITextStyle | undefined;
                buttonRect: IRect;
                capturedThemes: ICapturedThemes;
                constraints: IBoxConstraints;
                dropdownColor?: IColor | undefined;
                enableFeedback: boolean;
                padding: IEdgeInsetsGeometry;
                route: I_DropdownRoute<T>;
                selectedIndex: number;
            }
        ) => I_DropdownRoutePage<T>;
    };
};
export interface I_DropdownRoutePage<T> {
    route: I_DropdownRoute<T>;
    constraints: IBoxConstraints;
    items: IList<I_MenuItem<T>> | undefined;
    padding: IEdgeInsetsGeometry;
    buttonRect: IRect;
    selectedIndex: number;
    elevation: number;
    capturedThemes: ICapturedThemes;
    style: ITextStyle | undefined;
    dropdownColor: IColor | undefined;
    enableFeedback: boolean;
    borderRadius: IBorderRadius | undefined;
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
}
export class _DropdownRoutePage<T>
    implements IStatelessWidget, IDiagnosticable
{
    public readonly route: I_DropdownRoute<T> = undefined as any;
    public readonly constraints: IBoxConstraints = undefined as any;
    public readonly items: IList<I_MenuItem<T>> | undefined = undefined as any;
    public readonly padding: IEdgeInsetsGeometry = undefined as any;
    public readonly buttonRect: IRect = undefined as any;
    public readonly selectedIndex: number = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly capturedThemes: ICapturedThemes = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly dropdownColor: IColor | undefined = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        borderRadius?: IBorderRadius | undefined;
        elevation?: number;
        items?: IList<I_MenuItem<T>> | undefined;
        key?: IKey | undefined;
        style?: ITextStyle | undefined;
        buttonRect: IRect;
        capturedThemes: ICapturedThemes;
        constraints: IBoxConstraints;
        dropdownColor?: IColor | undefined;
        enableFeedback: boolean;
        padding: IEdgeInsetsGeometry;
        route: I_DropdownRoute<T>;
        selectedIndex: number;
    }) {
        flutter.material._dropdownRoutePage(this, {
            ..._dropdownRoutePageDefaultProps,
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
}
const _dropdownRoutePageDefaultProps = {
    elevation: 8,
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
