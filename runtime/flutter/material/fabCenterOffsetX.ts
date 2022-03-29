import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
export interface IFabCenterOffsetX {
    getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
}
