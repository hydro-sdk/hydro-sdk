import { IIterable } from "./iterable";
export interface IStringSink {
    write: (object?: Object | undefined) => void;
    writeAll: (objects: IIterable<any>, separator: string) => void;
    writeln: (object?: Object | undefined) => void;
    writeCharCode: (charCode: number) => void;
}
