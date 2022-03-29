import { IDuration } from "../../dart/core/duration";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { ITicker } from "../scheduler/ticker";
import { ITickerProvider } from "../scheduler/tickerProvider";
import { IStatefulWidget } from "./statefulWidget";
export interface ITickerProviderStateMixin<T> extends ITickerProvider {
    createTicker: (onTick: (elapsed: IDuration) => void) => ITicker;
    dispose: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
}
