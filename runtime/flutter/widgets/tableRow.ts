import { IList } from "../../dart/core/list";
import { ILocalKey } from "../foundation/localKey";
import { IDecoration } from "../painting/decoration";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        tableRow: (
            this: void,
            tableRow: ITableRow,
            props?: {
                children?: IList<IWidget> | undefined;
                decoration?: IDecoration | undefined;
                key?: ILocalKey | undefined;
            }
        ) => ITableRow;
    };
};
export interface ITableRow {
    key: ILocalKey | undefined;
    decoration: IDecoration | undefined;
    children: IList<IWidget> | undefined;
    toString: () => string;
}
export class TableRow {
    public readonly key: ILocalKey | undefined = undefined as any;
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly children: IList<IWidget> | undefined = undefined as any;
    public constructor(props?: {
        children?: IList<IWidget> | undefined;
        decoration?: IDecoration | undefined;
        key?: ILocalKey | undefined;
    }) {
        flutter.widgets.tableRow(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
