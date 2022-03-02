import { IFuture } from "../../dart/async/future";
declare const flutter: {
    services: {
        hapticFeedbackVibrate: () => IFuture<void>;
        hapticFeedbackLightImpact: () => IFuture<void>;
        hapticFeedbackMediumImpact: () => IFuture<void>;
        hapticFeedbackHeavyImpact: () => IFuture<void>;
        hapticFeedbackSelectionClick: () => IFuture<void>;
    };
};
export interface IHapticFeedback {}
export class HapticFeedback {
    public static vibrate(): IFuture<void> {
        return flutter.services.hapticFeedbackVibrate();
    }
    public static lightImpact(): IFuture<void> {
        return flutter.services.hapticFeedbackLightImpact();
    }
    public static mediumImpact(): IFuture<void> {
        return flutter.services.hapticFeedbackMediumImpact();
    }
    public static heavyImpact(): IFuture<void> {
        return flutter.services.hapticFeedbackHeavyImpact();
    }
    public static selectionClick(): IFuture<void> {
        return flutter.services.hapticFeedbackSelectionClick();
    }
}
