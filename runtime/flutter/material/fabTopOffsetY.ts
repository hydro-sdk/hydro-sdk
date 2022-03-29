import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
export interface IFabTopOffsetY {
    getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
}
