import { IPipelineOwner } from "./pipelineOwner";
export interface IRelayoutWhenSystemFontsChangeMixin {
    systemFontsDidChange: () => void;
    attach: (owner: unknown) => void;
    detach: () => void;
}
