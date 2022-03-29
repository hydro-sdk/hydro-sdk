import { IParentData } from "./parentData";
export interface IKeepAliveParentDataMixin extends IParentData {
    keepAlive: boolean;
    getKeptAlive: () => boolean;
}
