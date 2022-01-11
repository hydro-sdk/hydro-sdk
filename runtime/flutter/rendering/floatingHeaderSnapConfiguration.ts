import { Duration, IDuration } from "../../dart/core/duration";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
declare const flutter: {
    rendering: {
        floatingHeaderSnapConfiguration: (
            this: void,
            floatingHeaderSnapConfiguration: IFloatingHeaderSnapConfiguration,
            props: { curve: ICurve; duration: IDuration }
        ) => IFloatingHeaderSnapConfiguration;
    };
};
export interface IFloatingHeaderSnapConfiguration {
    curve: ICurve;
    duration: IDuration;
}
export class FloatingHeaderSnapConfiguration {
    public readonly curve: ICurve = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public constructor(props: { curve?: ICurve; duration?: IDuration }) {
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
