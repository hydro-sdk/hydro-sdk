declare const flutter: {
    material: {
        animatedIcons: (
            this: void,
            animatedIcons: IAnimatedIcons
        ) => IAnimatedIcons;
    };
};
export interface IAnimatedIcons {}
export class AnimatedIcons {
    public constructor() {
        flutter.material.animatedIcons(this);
    }
}
