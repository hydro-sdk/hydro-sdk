import { IListenable } from "../foundation/listenable";
import { IValueListenable } from "../foundation/valueListenable";
import { ITextSpan } from "../painting/textSpan";
import { ITextStyle } from "../painting/textStyle";
import { ITextEditingValue } from "../services/textEditingValue";
import { ITextSelection } from "../services/textSelection";
import { IBuildContext } from "../widgets/buildContext";
import { ITextEditingController } from "../widgets/textEditingController";
declare const flutter: {
    material: {
        _textSpanEditingController: (
            this: void,
            _textSpanEditingController: I_TextSpanEditingController,
            props: { textSpan: ITextSpan }
        ) => I_TextSpanEditingController;
    };
};
export interface I_TextSpanEditingController {
    buildTextSpan: (props: {
        style?: ITextStyle | undefined;
        context: IBuildContext;
        withComposing: boolean;
    }) => ITextSpan;
    setText: (newText?: string | undefined) => void;
    clear: () => void;
    clearComposing: () => void;
    isSelectionWithinTextBounds: (selection: ITextSelection) => boolean;
    getText: () => string;
    setValue: (newValue: ITextEditingValue) => void;
    getSelection: () => ITextSelection;
    setSelection: (newSelection: ITextSelection) => void;
    toString: () => string;
    getValue: () => ITextEditingValue;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class _TextSpanEditingController
    implements
        ITextEditingController,
        IValueListenable<ITextEditingValue>,
        IListenable
{
    public constructor(props: { textSpan: ITextSpan }) {
        flutter.material._textSpanEditingController(this, props);
    }
    private readonly _dart_buildTextSpan: (props: {
        style?: ITextStyle | undefined;
        context: IBuildContext;
        withComposing: boolean;
    }) => ITextSpan = undefined as any;
    private readonly _dart_setText: (newText?: string | undefined) => void =
        undefined as any;
    private readonly _dart_clear: () => void = undefined as any;
    private readonly _dart_clearComposing: () => void = undefined as any;
    private readonly _dart_isSelectionWithinTextBounds: (
        selection: ITextSelection
    ) => boolean = undefined as any;
    private readonly _dart_getText: () => string = undefined as any;
    private readonly _dart_setValue: (newValue: ITextEditingValue) => void =
        undefined as any;
    private readonly _dart_getSelection: () => ITextSelection =
        undefined as any;
    private readonly _dart_setSelection: (
        newSelection: ITextSelection
    ) => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getValue: () => ITextEditingValue = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public buildTextSpan(props: {
        style?: ITextStyle | undefined;
        context: IBuildContext;
        withComposing: boolean;
    }): ITextSpan {
        return this._dart_buildTextSpan(props);
    }
    public setText(newText?: string | undefined): void {
        return this._dart_setText(newText);
    }
    public clear(): void {
        return this._dart_clear();
    }
    public clearComposing(): void {
        return this._dart_clearComposing();
    }
    public isSelectionWithinTextBounds(selection: ITextSelection): boolean {
        return this._dart_isSelectionWithinTextBounds(selection);
    }
    public getText(): string {
        return this._dart_getText();
    }
    public setValue(newValue: ITextEditingValue): void {
        return this._dart_setValue(newValue);
    }
    public getSelection(): ITextSelection {
        return this._dart_getSelection();
    }
    public setSelection(newSelection: ITextSelection): void {
        return this._dart_setSelection(newSelection);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getValue(): ITextEditingValue {
        return this._dart_getValue();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
