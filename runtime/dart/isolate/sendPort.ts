import { ICapability } from "./capability";
export interface ISendPort extends ICapability {
    send: (message?: Object | undefined) => void;
    getHashCode: () => number;
}
