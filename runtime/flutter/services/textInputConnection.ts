import { IFontWeight } from "../../dart/ui/fontWeight";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextAlign } from "../../dart/ui/textAlign";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
import { ITextEditingValue } from "./textEditingValue";
import { ITextInputConfiguration } from "./textInputConfiguration";
declare const flutter: {
    services: {
        textInputConnectionDebugResetId: (props: { to: number }) => void;
    };
};
export interface ITextInputConnection {
    getAttached: () => boolean;
    show: () => void;
    requestAutofill: () => void;
    updateConfig: (configuration: ITextInputConfiguration) => void;
    setEditingState: (value: ITextEditingValue) => void;
    setEditableSizeAndTransform: (
        editableBoxSize: ISize,
        transform: IMatrix4
    ) => void;
    setComposingRect: (rect: IRect) => void;
    setCaretRect: (rect: IRect) => void;
    setStyle: (props: {
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontWeight?: IFontWeight | undefined;
        textAlign: TextAlign;
        textDirection: TextDirection;
    }) => void;
    close: () => void;
    connectionClosedReceived: () => void;
}
export class TextInputConnection {
    public static debugResetId(props: { to?: number }): void {
        return flutter.services.textInputConnectionDebugResetId({
            ...debugResetIdDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_show: () => void = undefined as any;
    private readonly _dart_requestAutofill: () => void = undefined as any;
    private readonly _dart_updateConfig: (
        configuration: ITextInputConfiguration
    ) => void = undefined as any;
    private readonly _dart_setEditingState: (value: ITextEditingValue) => void =
        undefined as any;
    private readonly _dart_setEditableSizeAndTransform: (
        editableBoxSize: ISize,
        transform: IMatrix4
    ) => void = undefined as any;
    private readonly _dart_setComposingRect: (rect: IRect) => void =
        undefined as any;
    private readonly _dart_setCaretRect: (rect: IRect) => void =
        undefined as any;
    private readonly _dart_setStyle: (props: {
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontWeight?: IFontWeight | undefined;
        textAlign: TextAlign;
        textDirection: TextDirection;
    }) => void = undefined as any;
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_connectionClosedReceived: () => void =
        undefined as any;
    public getAttached(): boolean {
        return this._dart_getAttached();
    }
    public show(): void {
        return this._dart_show();
    }
    public requestAutofill(): void {
        return this._dart_requestAutofill();
    }
    public updateConfig(configuration: ITextInputConfiguration): void {
        return this._dart_updateConfig(configuration);
    }
    public setEditingState(value: ITextEditingValue): void {
        return this._dart_setEditingState(value);
    }
    public setEditableSizeAndTransform(
        editableBoxSize: ISize,
        transform: IMatrix4
    ): void {
        return this._dart_setEditableSizeAndTransform(
            editableBoxSize,
            transform
        );
    }
    public setComposingRect(rect: IRect): void {
        return this._dart_setComposingRect(rect);
    }
    public setCaretRect(rect: IRect): void {
        return this._dart_setCaretRect(rect);
    }
    public setStyle(props: {
        fontFamily?: string | undefined;
        fontSize?: number | undefined;
        fontWeight?: IFontWeight | undefined;
        textAlign: TextAlign;
        textDirection: TextDirection;
    }): void {
        return this._dart_setStyle(props);
    }
    public close(): void {
        return this._dart_close();
    }
    public connectionClosedReceived(): void {
        return this._dart_connectionClosedReceived();
    }
}
const debugResetIdDefaultProps = {
    to: 1,
};
