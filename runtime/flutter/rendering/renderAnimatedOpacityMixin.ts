import { IOffset } from "../../dart/ui/offset";
import { IAnimation } from "../animation/animation";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IPaintingContext } from "./paintingContext";
import { IPipelineOwner } from "./pipelineOwner";
import { IRenderObject } from "./renderObject";
export interface IRenderAnimatedOpacityMixin<T> {
    getAlwaysNeedsCompositing: () => boolean;
    getOpacity: () => IAnimation<number>;
    setOpacity: (value: IAnimation<number>) => void;
    getAlwaysIncludeSemantics: () => boolean;
    setAlwaysIncludeSemantics: (value: boolean) => void;
    attach: (owner: unknown) => void;
    detach: () => void;
    paint: (context: IPaintingContext, offset: IOffset) => void;
    visitChildrenForSemantics: (
        visitor: (child: IRenderObject) => void
    ) => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
