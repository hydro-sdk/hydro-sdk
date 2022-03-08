import { I_PageOpener } from "./_pageOpener";
export interface I_MasterDetailFlowProxy extends I_PageOpener {
    openDetailPage: (arguments: Object) => void;
    setInitialDetailPage: (arguments: Object) => void;
}
