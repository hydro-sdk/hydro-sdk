declare const flutter: {
    physics: {
        springDescription: (
            this: void,
            springDescription: ISpringDescription,
            props: { damping: number; mass: number; stiffness: number }
        ) => ISpringDescription;
    };
};
export interface ISpringDescription {
    mass: number;
    stiffness: number;
    damping: number;
    toString: () => string;
}
export class SpringDescription {
    public readonly mass: number = undefined as any;
    public readonly stiffness: number = undefined as any;
    public readonly damping: number = undefined as any;
    public constructor(props: {
        damping: number;
        mass: number;
        stiffness: number;
    }) {
        flutter.physics.springDescription(this, props);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
