import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
export interface IFabEndOffsetX {
    getOffsetX: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
}
