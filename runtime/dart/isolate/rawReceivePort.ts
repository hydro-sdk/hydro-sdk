import { IFunction } from "../core/function";
import { ISendPort } from "./sendPort";
export interface IRawReceivePort {
    setHandler: (newHandler?: IFunction | undefined) => void;
    close: () => void;
    getSendPort: () => ISendPort;
}
