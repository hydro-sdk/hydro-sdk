import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
export interface IFabStartOffsetX {
    getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
}
