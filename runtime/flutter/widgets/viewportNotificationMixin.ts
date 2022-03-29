import { IList } from "../../dart/core/list";
import { IElement } from "./element";
export interface IViewportNotificationMixin {
    getDepth: () => number;
    visitAncestor: (element: IElement) => boolean;
    debugFillDescription: (description: IList<string>) => void;
}
