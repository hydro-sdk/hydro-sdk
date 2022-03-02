import { IOffset } from "../../dart/ui/offset";
import { FloatingCursorDragState } from "./floatingCursorDragState";
declare const flutter: {
    services: {
        rawFloatingCursorPoint: (
            this: void,
            rawFloatingCursorPoint: IRawFloatingCursorPoint,
            props: {
                offset?: IOffset | undefined;
                state: FloatingCursorDragState;
            }
        ) => IRawFloatingCursorPoint;
    };
};
export interface IRawFloatingCursorPoint {
    offset: IOffset | undefined;
    state: FloatingCursorDragState;
}
export class RawFloatingCursorPoint {
    public readonly offset: IOffset | undefined = undefined as any;
    public readonly state: FloatingCursorDragState = undefined as any;
    public constructor(props: {
        offset?: IOffset | undefined;
        state: FloatingCursorDragState;
    }) {
        flutter.services.rawFloatingCursorPoint(this, props);
    }
}
