import { ISliverConstraints } from "./sliverConstraints";
import { ISliverGridLayout } from "./sliverGridLayout";
export interface ISliverGridDelegate {
    getLayout: (constraints: ISliverConstraints) => ISliverGridLayout;
    shouldRelayout: (oldDelegate: unknown) => boolean;
}
