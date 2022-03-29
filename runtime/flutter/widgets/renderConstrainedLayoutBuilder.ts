import { IConstraints } from "../rendering/constraints";
import { IRenderObject } from "../rendering/renderObject";
export interface IRenderConstrainedLayoutBuilder<ConstraintType, ChildType> {
    updateCallback: (value?: (constraints: ConstraintType) => void) => void;
    markNeedsBuild: () => void;
    rebuildIfNecessary: () => void;
}
