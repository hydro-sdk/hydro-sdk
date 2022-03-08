import { IWidget } from "../widgets/widget";
import { StepState } from "./stepState";
declare const flutter: {
    material: {
        step: (
            this: void,
            step: IStep,
            props: {
                isActive: boolean;
                state: StepState;
                subtitle?: IWidget | undefined;
                content: IWidget;
                title: IWidget;
            }
        ) => IStep;
    };
};
export interface IStep {
    title: IWidget;
    subtitle: IWidget | undefined;
    content: IWidget;
    state: StepState;
    isActive: boolean;
}
export class Step {
    public readonly title: IWidget = undefined as any;
    public readonly subtitle: IWidget | undefined = undefined as any;
    public readonly content: IWidget = undefined as any;
    public readonly state: StepState = undefined as any;
    public readonly isActive: boolean = undefined as any;
    public constructor(props: {
        isActive?: boolean;
        state?: StepState;
        subtitle?: IWidget | undefined;
        content: IWidget;
        title: IWidget;
    }) {
        flutter.material.step(this, {
            ...stepDefaultProps,
            ...props,
        });
    }
}
const stepDefaultProps = {
    isActive: false,
    state: StepState.indexed,
};
