import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IFixedExtentScrollController } from "../widgets/fixedExtentScrollController";
import { IListWheelChildDelegate } from "../widgets/listWheelChildDelegate";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { CupertinoPickerDefaultSelectionOverlay } from "./cupertinoPickerDefaultSelectionOverlay";
declare const flutter: {
    cupertino: {
        cupertinoPicker: (
            this: void,
            cupertinoPicker: ICupertinoPicker,
            props: {
                backgroundColor?: IColor | undefined;
                diameterRatio: number;
                key?: IKey | undefined;
                looping: boolean;
                magnification: number;
                offAxisFraction: number;
                scrollController?: IFixedExtentScrollController | undefined;
                selectionOverlay?: IWidget | undefined;
                squeeze: number;
                useMagnifier: boolean;
                children: IList<IWidget>;
                itemExtent: number;
                onSelectedItemChanged?: (value: number) => void | undefined;
            }
        ) => ICupertinoPicker;
    };
};
export interface ICupertinoPicker {
    diameterRatio: number;
    backgroundColor: IColor | undefined;
    offAxisFraction: number;
    useMagnifier: boolean;
    magnification: number;
    scrollController: IFixedExtentScrollController | undefined;
    itemExtent: number;
    squeeze: number;
    childDelegate: IListWheelChildDelegate;
    selectionOverlay: IWidget | undefined;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
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
export class CupertinoPicker implements IStatefulWidget, IDiagnosticable {
    public readonly diameterRatio: number = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly offAxisFraction: number = undefined as any;
    public readonly useMagnifier: boolean = undefined as any;
    public readonly magnification: number = undefined as any;
    public readonly scrollController: IFixedExtentScrollController | undefined =
        undefined as any;
    public readonly itemExtent: number = undefined as any;
    public readonly squeeze: number = undefined as any;
    public readonly childDelegate: IListWheelChildDelegate = undefined as any;
    public readonly selectionOverlay: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        diameterRatio: number;
        key?: IKey | undefined;
        looping?: boolean;
        magnification?: number;
        offAxisFraction?: number;
        scrollController?: IFixedExtentScrollController | undefined;
        selectionOverlay?: IWidget | undefined;
        squeeze: number;
        useMagnifier?: boolean;
        children: IList<IWidget>;
        itemExtent: number;
        onSelectedItemChanged?: (value: number) => void | undefined;
    }) {
        flutter.cupertino.cupertinoPicker(this, {
            ...cupertinoPickerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public createState(): IState<IStatefulWidget> {
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
const cupertinoPickerDefaultProps = {
    looping: false,
    magnification: 1.0,
    offAxisFraction: 0.0,
    selectionOverlay: new CupertinoPickerDefaultSelectionOverlay(),
    useMagnifier: false,
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
