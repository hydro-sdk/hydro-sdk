import { IRenderObject } from "./renderObject";
export interface IContainerParentDataMixin<ChildType> {
    detach: () => void;
}
