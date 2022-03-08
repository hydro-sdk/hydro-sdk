import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { ILocalKey } from "../foundation/localKey";
import { IDataCell } from "./dataCell";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        dataRow: (
            this: void,
            dataRow: IDataRow,
            props: {
                color?: IMaterialStateProperty<IColor | undefined> | undefined;
                key?: ILocalKey | undefined;
                onLongPress?: () => void | undefined;
                onSelectChanged?: (
                    value?: boolean | undefined
                ) => void | undefined;
                selected: boolean;
                cells: IList<IDataCell>;
            }
        ) => IDataRow;
    };
};
export interface IDataRow {
    key: ILocalKey | undefined;
    selected: boolean;
    cells: IList<IDataCell>;
    color: IMaterialStateProperty<IColor | undefined> | undefined;
}
export class DataRow {
    public readonly key: ILocalKey | undefined = undefined as any;
    public readonly selected: boolean = undefined as any;
    public readonly cells: IList<IDataCell> = undefined as any;
    public readonly color:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public constructor(props: {
        color?: IMaterialStateProperty<IColor | undefined> | undefined;
        key?: ILocalKey | undefined;
        onLongPress?: () => void | undefined;
        onSelectChanged?: (value?: boolean | undefined) => void | undefined;
        selected?: boolean;
        cells: IList<IDataCell>;
    }) {
        flutter.material.dataRow(this, {
            ...dataRowDefaultProps,
            ...props,
        });
    }
}
const dataRowDefaultProps = {
    selected: false,
};
