import { IRenderBox } from "./renderBox";
export interface IListWheelChildManager {
    getChildCount: () => number | undefined;
    childExistsAt: (index: number) => boolean;
    createChild: (
        index: number,
        props?: { after?: IRenderBox | undefined }
    ) => void;
    removeChild: (child: IRenderBox) => void;
}
