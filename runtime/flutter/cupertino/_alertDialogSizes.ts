import { ISize } from "../../dart/ui/size";
declare const flutter: {
    cupertino: {
        _alertDialogSizes: (
            this: void,
            _alertDialogSizes: I_AlertDialogSizes,
            props: {
                contentHeight: number;
                dividerThickness: number;
                size: ISize;
            }
        ) => I_AlertDialogSizes;
    };
};
export interface I_AlertDialogSizes {
    size: ISize;
    contentHeight: number;
    dividerThickness: number;
}
export class _AlertDialogSizes {
    public readonly size: ISize = undefined as any;
    public readonly contentHeight: number = undefined as any;
    public readonly dividerThickness: number = undefined as any;
    public constructor(props: {
        contentHeight: number;
        dividerThickness: number;
        size: ISize;
    }) {
        flutter.cupertino._alertDialogSizes(this, props);
    }
}
