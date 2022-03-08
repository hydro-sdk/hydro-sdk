import { ITapDownDetails } from "../gestures/tapDownDetails";
import { SizedBox } from "../widgets/sizedBox";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        dataCell: (
            this: void,
            dataCell: IDataCell,
            child: IWidget,
            props: {
                onDoubleTap?: () => void | undefined;
                onLongPress?: () => void | undefined;
                onTap?: () => void | undefined;
                onTapCancel?: () => void | undefined;
                onTapDown?: (details: ITapDownDetails) => void | undefined;
                placeholder: boolean;
                showEditIcon: boolean;
            }
        ) => IDataCell;
    };
};
export interface IDataCell {
    child: IWidget;
    placeholder: boolean;
    showEditIcon: boolean;
}
export class DataCell {
    public static empty = new DataCell(new SizedBox());
    public readonly child: IWidget = undefined as any;
    public readonly placeholder: boolean = undefined as any;
    public readonly showEditIcon: boolean = undefined as any;
    public constructor(
        child: IWidget,
        props: {
            onDoubleTap?: () => void | undefined;
            onLongPress?: () => void | undefined;
            onTap?: () => void | undefined;
            onTapCancel?: () => void | undefined;
            onTapDown?: (details: ITapDownDetails) => void | undefined;
            placeholder?: boolean;
            showEditIcon?: boolean;
        }
    ) {
        flutter.material.dataCell(this, child, {
            ...dataCellDefaultProps,
            ...props,
        });
    }
}
const dataCellDefaultProps = {
    placeholder: false,
    showEditIcon: false,
};
