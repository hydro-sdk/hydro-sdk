import { Duration, IDuration } from "../../dart/core/duration";
import { IList, List } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IScrollController } from "../widgets/scrollController";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        cupertinoAlertDialog: (
            this: void,
            cupertinoAlertDialog: ICupertinoAlertDialog,
            props: {
                actionScrollController?: IScrollController | undefined;
                actions: IList<IWidget>;
                content?: IWidget | undefined;
                insetAnimationCurve: ICurve;
                insetAnimationDuration: IDuration;
                key?: IKey | undefined;
                scrollController?: IScrollController | undefined;
                title?: IWidget | undefined;
            }
        ) => ICupertinoAlertDialog;
    };
};
export interface ICupertinoAlertDialog {
    title: IWidget | undefined;
    content: IWidget | undefined;
    actions: IList<IWidget>;
    scrollController: IScrollController | undefined;
    actionScrollController: IScrollController | undefined;
    insetAnimationDuration: IDuration;
    insetAnimationCurve: ICurve;
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
export class CupertinoAlertDialog implements IStatelessWidget, IDiagnosticable {
    public readonly title: IWidget | undefined = undefined as any;
    public readonly content: IWidget | undefined = undefined as any;
    public readonly actions: IList<IWidget> = undefined as any;
    public readonly scrollController: IScrollController | undefined =
        undefined as any;
    public readonly actionScrollController: IScrollController | undefined =
        undefined as any;
    public readonly insetAnimationDuration: IDuration = undefined as any;
    public readonly insetAnimationCurve: ICurve = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actionScrollController?: IScrollController | undefined;
        actions?: IList<IWidget>;
        content?: IWidget | undefined;
        insetAnimationCurve?: ICurve;
        insetAnimationDuration?: IDuration;
        key?: IKey | undefined;
        scrollController?: IScrollController | undefined;
        title?: IWidget | undefined;
    }) {
        flutter.cupertino.cupertinoAlertDialog(this, {
            ...cupertinoAlertDialogDefaultProps,
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
const cupertinoAlertDialogDefaultProps = {
    actions: List.fromArray<IWidget>([]),
    insetAnimationCurve: Curves.decelerate,
    insetAnimationDuration: new Duration({ milliseconds: 100 }),
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
