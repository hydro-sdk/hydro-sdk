import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
export interface INotchedShape {
    getOuterPath: (host: IRect, guest?: IRect | undefined) => IPath;
}
