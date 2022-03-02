import { IRoute } from "./route";
export interface IRouteTransitionRecord {
    getRoute: () => IRoute<any>;
    getIsWaitingForEnteringDecision: () => boolean;
    getIsWaitingForExitingDecision: () => boolean;
    markForPush: () => void;
    markForAdd: () => void;
    markForPop: (result: any) => void;
    markForComplete: (result: any) => void;
    markForRemove: () => void;
}
