import { IList } from "../../dart/core/list";
import { Color } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { TextStyle } from "../painting/textStyle";
import { IPaintingContext } from "./paintingContext";
export interface IDebugOverflowIndicatorMixin {
    paintOverflowIndicator: (
        context: IPaintingContext,
        offset: IOffset,
        containerRect: IRect,
        childRect: IRect,
        props?: { overflowHints?: IList<IDiagnosticsNode> | undefined }
    ) => void;
    reassemble: () => void;
}
