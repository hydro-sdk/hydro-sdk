import { Duration, IDuration } from "../../dart/core/duration";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { ITickerProvider } from "../scheduler/tickerProvider";
declare const flutter: {
    rendering: {
        floatingHeaderSnapConfiguration: (
            this: void,
            floatingHeaderSnapConfiguration: IFloatingHeaderSnapConfiguration,
            props: {
                curve: ICurve;
                duration: IDuration;
                vsync?: ITickerProvider | undefined;
            }
        ) => IFloatingHeaderSnapConfiguration;
    };
};
export interface IFloatingHeaderSnapConfiguration {
    vsync: ITickerProvider | undefined;
    curve: ICurve;
    duration: IDuration;
}
export class FloatingHeaderSnapConfiguration {
    public readonly vsync: ITickerProvider | undefined = undefined as any;
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public constructor(props: {
        curve?: ICurve;
        duration?: IDuration;
        vsync?: ITickerProvider | undefined;
    }) {
        flutter.rendering.floatingHeaderSnapConfiguration(this, {
            ...floatingHeaderSnapConfigurationDefaultProps,
            ...props,
        });
    }
}
const floatingHeaderSnapConfigurationDefaultProps = {
    curve: Curves.ease,
    duration: new Duration(),
};
