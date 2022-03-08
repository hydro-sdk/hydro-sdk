import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IDataRow } from "./dataRow";
export interface IDataTableSource extends IChangeNotifier {
    getRow: (index: number) => IDataRow | undefined;
    getRowCount: () => number;
    getIsRowCountApproximate: () => boolean;
    getSelectedRowCount: () => number;
}
