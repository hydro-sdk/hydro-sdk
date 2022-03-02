import { IBuildContext } from "../widgets/buildContext";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
export interface IObstructingPreferredSizeWidget extends IPreferredSizeWidget {
    shouldFullyObstruct: (context: IBuildContext) => boolean;
}
