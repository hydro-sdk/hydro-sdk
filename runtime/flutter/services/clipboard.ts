import { IFuture } from "../../dart/async/future";
import { IClipboardData } from "./clipboardData";
declare const flutter: {
    services: {
        clipboardSetData: (data: IClipboardData) => IFuture<void>;
        clipboardGetData: (
            format: string
        ) => IFuture<IClipboardData | undefined>;
        clipboardHasStrings: () => IFuture<boolean>;
    };
};
export interface IClipboard {}
export class Clipboard {
    public static kTextPlain = "text/plain";
    public static setData(data: IClipboardData): IFuture<void> {
        return flutter.services.clipboardSetData(data);
    }
    public static getData(format: string): IFuture<IClipboardData | undefined> {
        return flutter.services.clipboardGetData(format);
    }
    public static hasStrings(): IFuture<boolean> {
        return flutter.services.clipboardHasStrings();
    }
}
