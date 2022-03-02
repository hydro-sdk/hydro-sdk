import { IFuture } from "../../dart/async/future";
import { TextDirection } from "../../dart/ui/textDirection";
declare const flutter: {
    semantics: {
        semanticsServiceAnnounce: (
            message: string,
            textDirection: TextDirection
        ) => IFuture<void>;
        semanticsServiceTooltip: (message: string) => IFuture<void>;
    };
};
export interface ISemanticsService {}
export class SemanticsService {
    public static announce(
        message: string,
        textDirection: TextDirection
    ): IFuture<void> {
        return flutter.semantics.semanticsServiceAnnounce(
            message,
            textDirection
        );
    }
    public static tooltip(message: string): IFuture<void> {
        return flutter.semantics.semanticsServiceTooltip(message);
    }
}
