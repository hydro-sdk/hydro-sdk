import { IAccessibilityFeatures } from "../../dart/ui/accessibilityFeatures";
import { ISemanticsUpdateBuilder } from "../../dart/ui/semanticsUpdateBuilder";
export interface ISemanticsBinding {
    initInstances: () => void;
    handleAccessibilityFeaturesChanged: () => void;
    createSemanticsUpdateBuilder: () => ISemanticsUpdateBuilder;
    getAccessibilityFeatures: () => IAccessibilityFeatures;
    getDisableAnimations: () => boolean;
}
