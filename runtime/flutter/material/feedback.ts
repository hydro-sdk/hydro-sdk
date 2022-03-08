import { IFuture } from "../../dart/async/future";
import { IBuildContext } from "../widgets/buildContext";
declare const flutter: {
    material: {
        feedbackForTap: (context: IBuildContext) => IFuture<void>;
        feedbackWrapForTap: (
            callback: () => void,
            context: IBuildContext
        ) => () => void | undefined;
        feedbackForLongPress: (context: IBuildContext) => IFuture<void>;
        feedbackWrapForLongPress: (
            callback: () => void,
            context: IBuildContext
        ) => () => void | undefined;
    };
};
export interface IFeedback {}
export class Feedback {
    public static forTap(context: IBuildContext): IFuture<void> {
        return flutter.material.feedbackForTap(context);
    }
    public static wrapForTap(
        callback: () => void,
        context: IBuildContext
    ): () => void | undefined {
        return flutter.material.feedbackWrapForTap(callback, context);
    }
    public static forLongPress(context: IBuildContext): IFuture<void> {
        return flutter.material.feedbackForLongPress(context);
    }
    public static wrapForLongPress(
        callback: () => void,
        context: IBuildContext
    ): () => void | undefined {
        return flutter.material.feedbackWrapForLongPress(callback, context);
    }
}
