import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderRadiusGeometry } from "../painting/borderRadiusGeometry";
import { IShapeBorder } from "../painting/shapeBorder";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IMaterialInkController } from "./materialInkController";
import { MaterialType } from "./materialType";
declare const flutter: {
    material: {
        material: (
            this: void,
            material: IMaterial,
            props: {
                animationDuration: IDuration;
                borderOnForeground: boolean;
                borderRadius?: IBorderRadiusGeometry | undefined;
                child?: IWidget | undefined;
                clipBehavior: Clip;
                color?: IColor | undefined;
                elevation: number;
                key?: IKey | undefined;
                shadowColor?: IColor | undefined;
                shape?: IShapeBorder | undefined;
                textStyle?: ITextStyle | undefined;
                type: MaterialType;
            }
        ) => IMaterial;
        materialOf: (
            context: IBuildContext
        ) => IMaterialInkController | undefined;
    };
};
export interface IMaterial {
    child: IWidget | undefined;
    type: MaterialType;
    elevation: number;
    color: IColor | undefined;
    shadowColor: IColor | undefined;
    textStyle: ITextStyle | undefined;
    shape: IShapeBorder | undefined;
    borderOnForeground: boolean;
    clipBehavior: Clip;
    animationDuration: IDuration;
    borderRadius: IBorderRadiusGeometry | undefined;
    key: IKey | undefined;
    createState: () => IState<IMaterial>;
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
export class Material implements IStatefulWidget, IDiagnosticable {
    public static defaultSplashRadius = 35.0;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly type: MaterialType = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly shadowColor: IColor | undefined = undefined as any;
    public readonly textStyle: ITextStyle | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly borderOnForeground: boolean = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly animationDuration: IDuration = undefined as any;
    public readonly borderRadius: IBorderRadiusGeometry | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        animationDuration?: IDuration;
        borderOnForeground?: boolean;
        borderRadius?: IBorderRadiusGeometry | undefined;
        child?: IWidget | undefined;
        clipBehavior?: Clip;
        color?: IColor | undefined;
        elevation?: number;
        key?: IKey | undefined;
        shadowColor?: IColor | undefined;
        shape?: IShapeBorder | undefined;
        textStyle?: ITextStyle | undefined;
        type?: MaterialType;
    }) {
        flutter.material.material(this, {
            ...materialDefaultProps,
            ...props,
        });
    }
    public static of(
        context: IBuildContext
    ): IMaterialInkController | undefined {
        return flutter.material.materialOf(context);
    }
    private readonly _dart_createState: () => IState<IMaterial> =
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
    public createState(): IState<IMaterial> {
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
const materialDefaultProps = {
    animationDuration: new Duration({ milliseconds: 200 }),
    borderOnForeground: true,
    clipBehavior: Clip.none,
    elevation: 0.0,
    type: MaterialType.canvas,
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
