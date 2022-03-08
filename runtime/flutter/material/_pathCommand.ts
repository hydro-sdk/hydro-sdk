import { IPath } from "../../dart/ui/path";
export interface I_PathCommand {
    apply: (path: IPath, progress: number) => void;
}
