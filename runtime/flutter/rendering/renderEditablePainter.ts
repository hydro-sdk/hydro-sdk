import { ICanvas } from "../../dart/ui/canvas";
import { ISize } from "../../dart/ui/size";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IRenderEditable } from "./renderEditable";
export interface IRenderEditablePainter extends IChangeNotifier {
    shouldRepaint: (
        oldDelegate?: IRenderEditablePainter | undefined
    ) => boolean;
    paint: (
        canvas: ICanvas,
        size: ISize,
        renderEditable: IRenderEditable
    ) => void;
}
