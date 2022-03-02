import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDragDownDetails } from "../gestures/dragDownDetails";
import { IDragEndDetails } from "../gestures/dragEndDetails";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IDragStartDetails } from "../gestures/dragStartDetails";
import { IDragUpdateDetails } from "../gestures/dragUpdateDetails";
import { IForcePressDetails } from "../gestures/forcePressDetails";
import { ILongPressDownDetails } from "../gestures/longPressDownDetails";
import { ILongPressEndDetails } from "../gestures/longPressEndDetails";
import { ILongPressMoveUpdateDetails } from "../gestures/longPressMoveUpdateDetails";
import { ILongPressStartDetails } from "../gestures/longPressStartDetails";
import { IScaleEndDetails } from "../gestures/scaleEndDetails";
import { IScaleStartDetails } from "../gestures/scaleStartDetails";
import { IScaleUpdateDetails } from "../gestures/scaleUpdateDetails";
import { ITapDownDetails } from "../gestures/tapDownDetails";
import { ITapUpDetails } from "../gestures/tapUpDetails";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IBuildContext } from "./buildContext";
import { IStatelessElement } from "./statelessElement";
import { IStatelessWidget } from "./statelessWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        gestureDetector: (
            this: void,
            gestureDetector: IGestureDetector,
            props: {
                behavior?: HitTestBehavior | undefined;
                child?: IWidget | undefined;
                dragStartBehavior: DragStartBehavior;
                excludeFromSemantics: boolean;
                key?: IKey | undefined;
                onDoubleTap?: () => void | undefined;
                onDoubleTapCancel?: () => void | undefined;
                onDoubleTapDown?: (
                    details: ITapDownDetails
                ) => void | undefined;
                onForcePressEnd?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onForcePressPeak?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onForcePressStart?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onForcePressUpdate?: (
                    details: IForcePressDetails
                ) => void | undefined;
                onHorizontalDragCancel?: () => void | undefined;
                onHorizontalDragDown?: (
                    details: IDragDownDetails
                ) => void | undefined;
                onHorizontalDragEnd?: (
                    details: IDragEndDetails
                ) => void | undefined;
                onHorizontalDragStart?: (
                    details: IDragStartDetails
                ) => void | undefined;
                onHorizontalDragUpdate?: (
                    details: IDragUpdateDetails
                ) => void | undefined;
                onLongPress?: () => void | undefined;
                onLongPressCancel?: () => void | undefined;
                onLongPressDown?: (
                    details: ILongPressDownDetails
                ) => void | undefined;
                onLongPressEnd?: (
                    details: ILongPressEndDetails
                ) => void | undefined;
                onLongPressMoveUpdate?: (
                    details: ILongPressMoveUpdateDetails
                ) => void | undefined;
                onLongPressStart?: (
                    details: ILongPressStartDetails
                ) => void | undefined;
                onLongPressUp?: () => void | undefined;
                onPanCancel?: () => void | undefined;
                onPanDown?: (details: IDragDownDetails) => void | undefined;
                onPanEnd?: (details: IDragEndDetails) => void | undefined;
                onPanStart?: (details: IDragStartDetails) => void | undefined;
                onPanUpdate?: (details: IDragUpdateDetails) => void | undefined;
                onScaleEnd?: (details: IScaleEndDetails) => void | undefined;
                onScaleStart?: (
                    details: IScaleStartDetails
                ) => void | undefined;
                onScaleUpdate?: (
                    details: IScaleUpdateDetails
                ) => void | undefined;
                onSecondaryLongPress?: () => void | undefined;
                onSecondaryLongPressCancel?: () => void | undefined;
                onSecondaryLongPressDown?: (
                    details: ILongPressDownDetails
                ) => void | undefined;
                onSecondaryLongPressEnd?: (
                    details: ILongPressEndDetails
                ) => void | undefined;
                onSecondaryLongPressMoveUpdate?: (
                    details: ILongPressMoveUpdateDetails
                ) => void | undefined;
                onSecondaryLongPressStart?: (
                    details: ILongPressStartDetails
                ) => void | undefined;
                onSecondaryLongPressUp?: () => void | undefined;
                onSecondaryTap?: () => void | undefined;
                onSecondaryTapCancel?: () => void | undefined;
                onSecondaryTapDown?: (
                    details: ITapDownDetails
                ) => void | undefined;
                onSecondaryTapUp?: (details: ITapUpDetails) => void | undefined;
                onTap?: () => void | undefined;
                onTapCancel?: () => void | undefined;
                onTapDown?: (details: ITapDownDetails) => void | undefined;
                onTapUp?: (details: ITapUpDetails) => void | undefined;
                onTertiaryLongPress?: () => void | undefined;
                onTertiaryLongPressCancel?: () => void | undefined;
                onTertiaryLongPressDown?: (
                    details: ILongPressDownDetails
                ) => void | undefined;
                onTertiaryLongPressEnd?: (
                    details: ILongPressEndDetails
                ) => void | undefined;
                onTertiaryLongPressMoveUpdate?: (
                    details: ILongPressMoveUpdateDetails
                ) => void | undefined;
                onTertiaryLongPressStart?: (
                    details: ILongPressStartDetails
                ) => void | undefined;
                onTertiaryLongPressUp?: () => void | undefined;
                onTertiaryTapCancel?: () => void | undefined;
                onTertiaryTapDown?: (
                    details: ITapDownDetails
                ) => void | undefined;
                onTertiaryTapUp?: (details: ITapUpDetails) => void | undefined;
                onVerticalDragCancel?: () => void | undefined;
                onVerticalDragDown?: (
                    details: IDragDownDetails
                ) => void | undefined;
                onVerticalDragEnd?: (
                    details: IDragEndDetails
                ) => void | undefined;
                onVerticalDragStart?: (
                    details: IDragStartDetails
                ) => void | undefined;
                onVerticalDragUpdate?: (
                    details: IDragUpdateDetails
                ) => void | undefined;
            }
        ) => IGestureDetector;
    };
};
export interface IGestureDetector {
    child: IWidget | undefined;
    behavior: HitTestBehavior | undefined;
    excludeFromSemantics: boolean;
    dragStartBehavior: DragStartBehavior;
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
export class GestureDetector implements IStatelessWidget, IDiagnosticable {
    public readonly child: IWidget | undefined = undefined as any;
    public readonly behavior: HitTestBehavior | undefined = undefined as any;
    public readonly excludeFromSemantics: boolean = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        behavior?: HitTestBehavior | undefined;
        child?: IWidget | undefined;
        dragStartBehavior?: DragStartBehavior;
        excludeFromSemantics?: boolean;
        key?: IKey | undefined;
        onDoubleTap?: () => void | undefined;
        onDoubleTapCancel?: () => void | undefined;
        onDoubleTapDown?: (details: ITapDownDetails) => void | undefined;
        onForcePressEnd?: (details: IForcePressDetails) => void | undefined;
        onForcePressPeak?: (details: IForcePressDetails) => void | undefined;
        onForcePressStart?: (details: IForcePressDetails) => void | undefined;
        onForcePressUpdate?: (details: IForcePressDetails) => void | undefined;
        onHorizontalDragCancel?: () => void | undefined;
        onHorizontalDragDown?: (details: IDragDownDetails) => void | undefined;
        onHorizontalDragEnd?: (details: IDragEndDetails) => void | undefined;
        onHorizontalDragStart?: (
            details: IDragStartDetails
        ) => void | undefined;
        onHorizontalDragUpdate?: (
            details: IDragUpdateDetails
        ) => void | undefined;
        onLongPress?: () => void | undefined;
        onLongPressCancel?: () => void | undefined;
        onLongPressDown?: (details: ILongPressDownDetails) => void | undefined;
        onLongPressEnd?: (details: ILongPressEndDetails) => void | undefined;
        onLongPressMoveUpdate?: (
            details: ILongPressMoveUpdateDetails
        ) => void | undefined;
        onLongPressStart?: (
            details: ILongPressStartDetails
        ) => void | undefined;
        onLongPressUp?: () => void | undefined;
        onPanCancel?: () => void | undefined;
        onPanDown?: (details: IDragDownDetails) => void | undefined;
        onPanEnd?: (details: IDragEndDetails) => void | undefined;
        onPanStart?: (details: IDragStartDetails) => void | undefined;
        onPanUpdate?: (details: IDragUpdateDetails) => void | undefined;
        onScaleEnd?: (details: IScaleEndDetails) => void | undefined;
        onScaleStart?: (details: IScaleStartDetails) => void | undefined;
        onScaleUpdate?: (details: IScaleUpdateDetails) => void | undefined;
        onSecondaryLongPress?: () => void | undefined;
        onSecondaryLongPressCancel?: () => void | undefined;
        onSecondaryLongPressDown?: (
            details: ILongPressDownDetails
        ) => void | undefined;
        onSecondaryLongPressEnd?: (
            details: ILongPressEndDetails
        ) => void | undefined;
        onSecondaryLongPressMoveUpdate?: (
            details: ILongPressMoveUpdateDetails
        ) => void | undefined;
        onSecondaryLongPressStart?: (
            details: ILongPressStartDetails
        ) => void | undefined;
        onSecondaryLongPressUp?: () => void | undefined;
        onSecondaryTap?: () => void | undefined;
        onSecondaryTapCancel?: () => void | undefined;
        onSecondaryTapDown?: (details: ITapDownDetails) => void | undefined;
        onSecondaryTapUp?: (details: ITapUpDetails) => void | undefined;
        onTap?: () => void | undefined;
        onTapCancel?: () => void | undefined;
        onTapDown?: (details: ITapDownDetails) => void | undefined;
        onTapUp?: (details: ITapUpDetails) => void | undefined;
        onTertiaryLongPress?: () => void | undefined;
        onTertiaryLongPressCancel?: () => void | undefined;
        onTertiaryLongPressDown?: (
            details: ILongPressDownDetails
        ) => void | undefined;
        onTertiaryLongPressEnd?: (
            details: ILongPressEndDetails
        ) => void | undefined;
        onTertiaryLongPressMoveUpdate?: (
            details: ILongPressMoveUpdateDetails
        ) => void | undefined;
        onTertiaryLongPressStart?: (
            details: ILongPressStartDetails
        ) => void | undefined;
        onTertiaryLongPressUp?: () => void | undefined;
        onTertiaryTapCancel?: () => void | undefined;
        onTertiaryTapDown?: (details: ITapDownDetails) => void | undefined;
        onTertiaryTapUp?: (details: ITapUpDetails) => void | undefined;
        onVerticalDragCancel?: () => void | undefined;
        onVerticalDragDown?: (details: IDragDownDetails) => void | undefined;
        onVerticalDragEnd?: (details: IDragEndDetails) => void | undefined;
        onVerticalDragStart?: (details: IDragStartDetails) => void | undefined;
        onVerticalDragUpdate?: (
            details: IDragUpdateDetails
        ) => void | undefined;
    }) {
        flutter.widgets.gestureDetector(this, {
            ...gestureDetectorDefaultProps,
            ...props,
        });
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
const gestureDetectorDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
    excludeFromSemantics: false,
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
