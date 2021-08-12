import { IIterable } from "../core/iterable";
import { IStringSink } from "../core/stringSink";
declare const dart: {
    convert: {
        closableStringSinkFromStringSink: (
            sink: IStringSink,
            onClose: () => void
        ) => IClosableStringSink;
    };
};
export interface IClosableStringSink {
    close: () => void;
    write: (object?: Object | undefined) => void;
    writeAll: (objects: IIterable<any>, separator: string) => void;
    writeln: (object?: Object | undefined) => void;
    writeCharCode: (charCode: number) => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ClosableStringSink implements IStringSink {
    public static fromStringSink(
        sink: IStringSink,
        onClose: () => void
    ): IClosableStringSink {
        return dart.convert.closableStringSinkFromStringSink(sink, onClose);
    }
    private readonly _dart_close: () => void = undefined as any;
    private readonly _dart_write: (object?: Object | undefined) => void =
        undefined as any;
    private readonly _dart_writeAll: (
        objects: IIterable<any>,
        separator: string
    ) => void = undefined as any;
    private readonly _dart_writeln: (object?: Object | undefined) => void =
        undefined as any;
    private readonly _dart_writeCharCode: (charCode: number) => void =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public close(): void {
        return this._dart_close();
    }
    public write(object?: Object | undefined): void {
        return this._dart_write(object);
    }
    public writeAll(objects: IIterable<any>, separator: string = ""): void {
        return this._dart_writeAll(objects, separator);
    }
    public writeln(object?: Object | undefined = ""): void {
        return this._dart_writeln(object);
    }
    public writeCharCode(charCode: number): void {
        return this._dart_writeCharCode(charCode);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
