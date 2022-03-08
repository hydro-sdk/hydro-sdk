import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        dataColumn: (
            this: void,
            dataColumn: IDataColumn,
            props: {
                numeric: boolean;
                onSort?: (
                    columnIndex: number,
                    ascending: boolean
                ) => void | undefined;
                tooltip?: string | undefined;
                label: IWidget;
            }
        ) => IDataColumn;
    };
};
export interface IDataColumn {
    label: IWidget;
    tooltip: string | undefined;
    numeric: boolean;
}
export class DataColumn {
    public readonly label: IWidget = undefined as any;
    public readonly tooltip: string | undefined = undefined as any;
    public readonly numeric: boolean = undefined as any;
    public constructor(props: {
        numeric?: boolean;
        onSort?: (columnIndex: number, ascending: boolean) => void | undefined;
        tooltip?: string | undefined;
        label: IWidget;
    }) {
        flutter.material.dataColumn(this, {
            ...dataColumnDefaultProps,
            ...props,
        });
    }
}
const dataColumnDefaultProps = {
    numeric: false,
};
