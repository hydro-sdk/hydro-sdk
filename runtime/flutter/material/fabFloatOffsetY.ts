import { IScaffoldPrelayoutGeometry } from "./scaffoldPrelayoutGeometry";
export interface IFabFloatOffsetY {
    getOffsetY: (
        scaffoldGeometry: IScaffoldPrelayoutGeometry,
        adjustment: number
    ) => number;
}
