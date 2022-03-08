import { ISet } from "../../dart/core/set";
import { IBorderSide } from "../painting/borderSide";
import { IOutlinedBorder } from "../painting/outlinedBorder";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
export interface IMaterialStateOutlinedBorder
    extends IOutlinedBorder,
        IMaterialStateProperty<?OutlinedBorder> {
    resolve: (states: ISet<MaterialState>) => IOutlinedBorder | undefined;
}
