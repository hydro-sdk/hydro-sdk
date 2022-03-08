import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        bottomSheet: (
            this: void,
            bottomSheet: IBottomSheet,
            props: {
                animationController?: IAnimationController | undefined;
                backgroundColor?: IColor | undefined;
                clipBehavior?: Clip | undefined;
                constraints?: IBoxConstraints | undefined;
                elevation?: number | undefined;
                enableDrag: boolean;
                key?: IKey | undefined;
                onDragEnd?: (
                    details: IDragEndDetails,
                    props: { isClosing: boolean }
                ) => void | undefined;
                onDragStart?: (details: IDragStartDetails) => void | undefined;
                shape?: IShapeBorder | undefined;
                builder: (context: IBuildContext) => IWidget;
                onClosing: () => void;
            }
        ) => IBottomSheet;
        bottomSheetCreateAnimationController: (
            vsync: ITickerProvider
        ) => IAnimationController;
    };
};
export interface IBottomSheet {
    animationController: IAnimationController | undefined;
    enableDrag: boolean;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip | undefined;
    constraints: IBoxConstraints | undefined;
    key: IKey | undefined;
    createState: () => IState<IBottomSheet>;
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
export class BottomSheet implements IStatefulWidget, IDiagnosticable {
    public readonly animationController: IAnimationController | undefined =
        undefined as any;
    public readonly enableDrag: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        animationController?: IAnimationController | undefined;
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        enableDrag?: boolean;
        key?: IKey | undefined;
        onDragEnd?: (
            details: IDragEndDetails,
            props: { isClosing: boolean }
        ) => void | undefined;
        onDragStart?: (details: IDragStartDetails) => void | undefined;
        shape?: IShapeBorder | undefined;
        builder: (context: IBuildContext) => IWidget;
        onClosing: () => void;
    }) {
        flutter.material.bottomSheet(this, {
            ...bottomSheetDefaultProps,
            ...props,
        });
    }
    public static createAnimationController(
        vsync: ITickerProvider
    ): IAnimationController {
        return flutter.material.bottomSheetCreateAnimationController(vsync);
    }
    private readonly _dart_createState: () => IState<IBottomSheet> =
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
    public createState(): IState<IBottomSheet> {
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
const bottomSheetDefaultProps = {
    enableDrag: true,
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
