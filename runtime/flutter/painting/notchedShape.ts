
import { IRect } from "../../dart/ui/rect";
import { IPath } from "../../dart/ui/path";
export interface INotchedShape


{
getOuterPath: (host: IRect, guest?: IRect | undefined) => IPath;
}