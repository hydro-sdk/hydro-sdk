import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { IImplicitlyAnimatedWidget } from "../widgets/implicitlyAnimatedWidget";
import { IImplicitlyAnimatedWidgetState } from "../widgets/implicitlyAnimatedWidgetState";
import { IStatefulElement } from "../widgets/statefulElement";
import { IWidget } from "../widgets/widget";
import { I_MaterialInteriorState } from "./_materialInteriorState";
declare const flutter: {
    material: {
        _materialInterior: (
            this: void,
            _materialInterior: I_MaterialInterior,
            props: {
                borderOnForeground: boolean;
                clipBehavior: Clip;
                curve: ICurve;
                key?: IKey | undefined;
                child: IWidget;
                color: IColor;
                duration: IDuration;
                elevation: number;
                shadowColor: IColor;
                shape: IShapeBorder;
            }
        ) => I_MaterialInterior;
    };
};
export interface I_MaterialInterior {
    child: IWidget;
    shape: IShapeBorder;
    borderOnForeground: boolean;
    clipBehavior: Clip;
    elevation: number;
    color: IColor;
    shadowColor: IColor;
    curve: ICurve;
    duration: IDuration;
    onEnd: () => void | undefined;
    key: IKey | undefined;
    createState: () => I_MaterialInteriorState;
    debugFillProperties: (description: IDiagnosticPropertiesBuilder) => void;
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
export class _MaterialInterior
    implements IImplicitlyAnimatedWidget, IDiagnosticable
{
    public readonly child: IWidget = undefined as any;
    public readonly shape: IShapeBorder = undefined as any;
    public readonly borderOnForeground: boolean = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly color: IColor = undefined as any;
    public readonly shadowColor: IColor = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly onEnd: () => void | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        borderOnForeground?: boolean;
        clipBehavior?: Clip;
        curve?: ICurve;
        key?: IKey | undefined;
        child: IWidget;
        color: IColor;
        duration: IDuration;
        elevation: number;
        shadowColor: IColor;
        shape: IShapeBorder;
    }) {
        flutter.material._materialInterior(this, {
            ..._materialInteriorDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_MaterialInteriorState =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        description: IDiagnosticPropertiesBuilder
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
    public createState(): I_MaterialInteriorState {
        return this._dart_createState();
    }
    public debugFillProperties(
        description: IDiagnosticPropertiesBuilder
    ): void {
        return this._dart_debugFillProperties(description);
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
const _materialInteriorDefaultProps = {
    borderOnForeground: true,
    clipBehavior: Clip.none,
    curve: Curves.linear,
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
