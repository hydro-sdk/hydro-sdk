import { ISet } from "../../dart/core/set";
import { IOffset } from "../../dart/ui/offset";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { ICurvedAnimation } from "../animation/curvedAnimation";
import { ICustomPainter } from "../rendering/customPainter";
import { IMouseCursor } from "../services/mouseCursor";
import { IFocusNode } from "../widgets/focusNode";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { MaterialState } from "./materialState";
import { IMaterialStateProperty } from "./materialStateProperty";
export interface IToggleableStateMixin<S> {
    getPositionController: () => IAnimationController;
    getPosition: () => ICurvedAnimation;
    getReactionController: () => IAnimationController;
    getReaction: () => IAnimation<number>;
    getReactionHoverFade: () => IAnimation<number>;
    getReactionFocusFade: () => IAnimation<number>;
    getIsInteractive: () => boolean;
    getOnChanged: () => (value?: boolean | undefined) => void | undefined;
    getValue: () => boolean | undefined;
    getTristate: () => boolean;
    initState: () => void;
    animateToValue: () => void;
    dispose: () => void;
    getDownPosition: () => IOffset | undefined;
    getStates: () => ISet<MaterialState>;
    buildToggleable: (props: {
        autofocus: boolean;
        focusNode?: IFocusNode | undefined;
        mouseCursor: IMaterialStateProperty<IMouseCursor>;
        painter: ICustomPainter;
        size: ISize;
    }) => IWidget;
}
