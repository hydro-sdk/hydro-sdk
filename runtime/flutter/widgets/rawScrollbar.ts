import { Duration, IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IRadius } from "../../dart/ui/radius";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { IRawScrollbarState } from "./rawScrollbarState";
import { ScrollbarOrientation } from "./scrollbarOrientation";
import { IScrollController } from "./scrollController";
import { IScrollNotification } from "./scrollNotification";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        rawScrollbar: (
            this: void,
            rawScrollbar: IRawScrollbar,
            props: {
                controller?: IScrollController | undefined;
                crossAxisMargin: number;
                fadeDuration: IDuration;
                interactive?: boolean | undefined;
                isAlwaysShown?: boolean | undefined;
                key?: IKey | undefined;
                mainAxisMargin: number;
                minOverscrollLength?: number | undefined;
                minThumbLength: number;
                notificationPredicate: (
                    notification: IScrollNotification
                ) => boolean;
                pressDuration: IDuration;
                radius?: IRadius | undefined;
                scrollbarOrientation?: ScrollbarOrientation | undefined;
                shape?: IOutlinedBorder | undefined;
                thickness?: number | undefined;
                thumbColor?: IColor | undefined;
                timeToFade: IDuration;
                child: IWidget;
            }
        ) => IRawScrollbar;
    };
};
export interface IRawScrollbar {
    child: IWidget;
    controller: IScrollController | undefined;
    isAlwaysShown: boolean | undefined;
    shape: IOutlinedBorder | undefined;
    radius: IRadius | undefined;
    thickness: number | undefined;
    thumbColor: IColor | undefined;
    minThumbLength: number;
    minOverscrollLength: number | undefined;
    fadeDuration: IDuration;
    timeToFade: IDuration;
    pressDuration: IDuration;
    interactive: boolean | undefined;
    scrollbarOrientation: ScrollbarOrientation | undefined;
    mainAxisMargin: number;
    crossAxisMargin: number;
    key: IKey | undefined;
    createState: () => IRawScrollbarState<IRawScrollbar>;
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
export class RawScrollbar implements IStatefulWidget, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly isAlwaysShown: boolean | undefined = undefined as any;
    public readonly shape: IOutlinedBorder | undefined = undefined as any;
    public readonly radius: IRadius | undefined = undefined as any;
    public readonly thickness: number | undefined = undefined as any;
    public readonly thumbColor: IColor | undefined = undefined as any;
    public readonly minThumbLength: number = undefined as any;
    public readonly minOverscrollLength: number | undefined = undefined as any;
    public readonly fadeDuration: IDuration = undefined as any;
    public readonly timeToFade: IDuration = undefined as any;
    public readonly pressDuration: IDuration = undefined as any;
    public readonly interactive: boolean | undefined = undefined as any;
    public readonly scrollbarOrientation: ScrollbarOrientation | undefined =
        undefined as any;
    public readonly mainAxisMargin: number = undefined as any;
    public readonly crossAxisMargin: number = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        controller?: IScrollController | undefined;
        crossAxisMargin?: number;
        fadeDuration?: IDuration;
        interactive?: boolean | undefined;
        isAlwaysShown?: boolean | undefined;
        key?: IKey | undefined;
        mainAxisMargin?: number;
        minOverscrollLength?: number | undefined;
        minThumbLength: number;
        notificationPredicate: (notification: IScrollNotification) => boolean;
        pressDuration?: IDuration;
        radius?: IRadius | undefined;
        scrollbarOrientation?: ScrollbarOrientation | undefined;
        shape?: IOutlinedBorder | undefined;
        thickness?: number | undefined;
        thumbColor?: IColor | undefined;
        timeToFade?: IDuration;
        child: IWidget;
    }) {
        flutter.widgets.rawScrollbar(this, {
            ...rawScrollbarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IRawScrollbarState<IRawScrollbar> =
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
    public createState(): IRawScrollbarState<IRawScrollbar> {
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
const rawScrollbarDefaultProps = {
    crossAxisMargin: 0.0,
    fadeDuration: new Duration({ milliseconds: 300 }),
    mainAxisMargin: 0.0,
    pressDuration: Duration.zero,
    timeToFade: new Duration({ milliseconds: 600 }),
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
