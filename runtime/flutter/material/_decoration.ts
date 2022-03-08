import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IWidget } from "../widgets/widget";
import { I_InputBorderGap } from "./_inputBorderGap";
import { IInputBorder } from "./inputBorder";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        _decoration: (
            this: void,
            _decoration: I_Decoration,
            props: {
                border?: IInputBorder | undefined;
                borderGap?: I_InputBorderGap | undefined;
                container?: IWidget | undefined;
                counter?: IWidget | undefined;
                helperError?: IWidget | undefined;
                hint?: IWidget | undefined;
                icon?: IWidget | undefined;
                input?: IWidget | undefined;
                label?: IWidget | undefined;
                prefix?: IWidget | undefined;
                prefixIcon?: IWidget | undefined;
                suffix?: IWidget | undefined;
                suffixIcon?: IWidget | undefined;
                visualDensity?: IVisualDensity | undefined;
                alignLabelWithHint: boolean;
                contentPadding: IEdgeInsetsGeometry;
                floatingLabelHeight: number;
                floatingLabelProgress: number;
                isCollapsed: boolean;
                isDense?: boolean | undefined;
            }
        ) => I_Decoration;
    };
};
export interface I_Decoration {
    contentPadding: IEdgeInsetsGeometry;
    isCollapsed: boolean;
    floatingLabelHeight: number;
    floatingLabelProgress: number;
    border: IInputBorder | undefined;
    borderGap: I_InputBorderGap | undefined;
    alignLabelWithHint: boolean;
    isDense: boolean | undefined;
    visualDensity: IVisualDensity | undefined;
    icon: IWidget | undefined;
    input: IWidget | undefined;
    label: IWidget | undefined;
    hint: IWidget | undefined;
    prefix: IWidget | undefined;
    suffix: IWidget | undefined;
    prefixIcon: IWidget | undefined;
    suffixIcon: IWidget | undefined;
    helperError: IWidget | undefined;
    counter: IWidget | undefined;
    container: IWidget | undefined;
    getHashCode: () => number;
}
export class _Decoration {
    public readonly contentPadding: IEdgeInsetsGeometry = undefined as any;
    public readonly isCollapsed: boolean = undefined as any;
    public readonly floatingLabelHeight: number = undefined as any;
    public readonly floatingLabelProgress: number = undefined as any;
    public readonly border: IInputBorder | undefined = undefined as any;
    public readonly borderGap: I_InputBorderGap | undefined = undefined as any;
    public readonly alignLabelWithHint: boolean = undefined as any;
    public readonly isDense: boolean | undefined = undefined as any;
    public readonly visualDensity: IVisualDensity | undefined =
        undefined as any;
    public readonly icon: IWidget | undefined = undefined as any;
    public readonly input: IWidget | undefined = undefined as any;
    public readonly label: IWidget | undefined = undefined as any;
    public readonly hint: IWidget | undefined = undefined as any;
    public readonly prefix: IWidget | undefined = undefined as any;
    public readonly suffix: IWidget | undefined = undefined as any;
    public readonly prefixIcon: IWidget | undefined = undefined as any;
    public readonly suffixIcon: IWidget | undefined = undefined as any;
    public readonly helperError: IWidget | undefined = undefined as any;
    public readonly counter: IWidget | undefined = undefined as any;
    public readonly container: IWidget | undefined = undefined as any;
    public constructor(props: {
        border?: IInputBorder | undefined;
        borderGap?: I_InputBorderGap | undefined;
        container?: IWidget | undefined;
        counter?: IWidget | undefined;
        helperError?: IWidget | undefined;
        hint?: IWidget | undefined;
        icon?: IWidget | undefined;
        input?: IWidget | undefined;
        label?: IWidget | undefined;
        prefix?: IWidget | undefined;
        prefixIcon?: IWidget | undefined;
        suffix?: IWidget | undefined;
        suffixIcon?: IWidget | undefined;
        visualDensity?: IVisualDensity | undefined;
        alignLabelWithHint: boolean;
        contentPadding: IEdgeInsetsGeometry;
        floatingLabelHeight: number;
        floatingLabelProgress: number;
        isCollapsed: boolean;
        isDense?: boolean | undefined;
    }) {
        flutter.material._decoration(this, props);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
