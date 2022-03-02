import { TextAffinity } from "../../dart/ui/textAffinity";
import { ITextPosition } from "../../dart/ui/textPosition";
import { ITextRange } from "../../dart/ui/textRange";
declare const flutter: {
    services: {
        textSelection: (
            this: void,
            textSelection: ITextSelection,
            props: {
                affinity: TextAffinity;
                isDirectional: boolean;
                baseOffset: number;
                extentOffset: number;
            }
        ) => ITextSelection;
    };
};
export interface ITextSelection {
    baseOffset: number;
    extentOffset: number;
    affinity: TextAffinity;
    isDirectional: boolean;
    start: number;
    end: number;
    getBase: () => ITextPosition;
    getExtent: () => ITextPosition;
    toString: () => string;
    getHashCode: () => number;
    copyWith: (props?: {
        affinity?: TextAffinity | undefined;
        baseOffset?: number | undefined;
        extentOffset?: number | undefined;
        isDirectional?: boolean | undefined;
    }) => ITextSelection;
    expandTo: (
        position: ITextPosition,
        extentAtIndex: boolean
    ) => ITextSelection;
    extendTo: (position: ITextPosition) => ITextSelection;
    textBefore: (text: string) => string;
    textAfter: (text: string) => string;
    textInside: (text: string) => string;
    getIsValid: () => boolean;
    getIsCollapsed: () => boolean;
    getIsNormalized: () => boolean;
}
export class TextSelection implements ITextRange {
    public readonly baseOffset: number = undefined as any;
    public readonly extentOffset: number = undefined as any;
    public readonly affinity: TextAffinity = undefined as any;
    public readonly isDirectional: boolean = undefined as any;
    public readonly start: number = undefined as any;
    public readonly end: number = undefined as any;
    public constructor(props: {
        affinity?: TextAffinity;
        isDirectional?: boolean;
        baseOffset: number;
        extentOffset: number;
    }) {
        flutter.services.textSelection(this, {
            ...textSelectionDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getBase: () => ITextPosition = undefined as any;
    private readonly _dart_getExtent: () => ITextPosition = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_copyWith: (props?: {
        affinity?: TextAffinity | undefined;
        baseOffset?: number | undefined;
        extentOffset?: number | undefined;
        isDirectional?: boolean | undefined;
    }) => ITextSelection = undefined as any;
    private readonly _dart_expandTo: (
        position: ITextPosition,
        extentAtIndex: boolean
    ) => ITextSelection = undefined as any;
    private readonly _dart_extendTo: (
        position: ITextPosition
    ) => ITextSelection = undefined as any;
    private readonly _dart_textBefore: (text: string) => string =
        undefined as any;
    private readonly _dart_textAfter: (text: string) => string =
        undefined as any;
    private readonly _dart_textInside: (text: string) => string =
        undefined as any;
    private readonly _dart_getIsValid: () => boolean = undefined as any;
    private readonly _dart_getIsCollapsed: () => boolean = undefined as any;
    private readonly _dart_getIsNormalized: () => boolean = undefined as any;
    public getBase(): ITextPosition {
        return this._dart_getBase();
    }
    public getExtent(): ITextPosition {
        return this._dart_getExtent();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public copyWith(props?: {
        affinity?: TextAffinity | undefined;
        baseOffset?: number | undefined;
        extentOffset?: number | undefined;
        isDirectional?: boolean | undefined;
    }): ITextSelection {
        return this._dart_copyWith(props);
    }
    public expandTo(
        position: ITextPosition,
        extentAtIndex: boolean = false
    ): ITextSelection {
        return this._dart_expandTo(position, extentAtIndex);
    }
    public extendTo(position: ITextPosition): ITextSelection {
        return this._dart_extendTo(position);
    }
    public textBefore(text: string): string {
        return this._dart_textBefore(text);
    }
    public textAfter(text: string): string {
        return this._dart_textAfter(text);
    }
    public textInside(text: string): string {
        return this._dart_textInside(text);
    }
    public getIsValid(): boolean {
        return this._dart_getIsValid();
    }
    public getIsCollapsed(): boolean {
        return this._dart_getIsCollapsed();
    }
    public getIsNormalized(): boolean {
        return this._dart_getIsNormalized();
    }
}
const textSelectionDefaultProps = {
    affinity: TextAffinity.downstream,
    isDirectional: false,
};
