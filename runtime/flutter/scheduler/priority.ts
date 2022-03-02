declare const flutter: {
    scheduler: {
        priorityIdle: (this: void) => IPriority;
        priorityAnimation: (this: void) => IPriority;
        priorityTouch: (this: void) => IPriority;
    };
};
export interface IPriority {
    getValue: () => number;
}
export class Priority {
    public static idle = flutter.scheduler.priorityIdle();
    public static animation = flutter.scheduler.priorityAnimation();
    public static touch = flutter.scheduler.priorityTouch();
    public static kMaxOffset = 10000;
    private readonly _dart_getValue: () => number = undefined as any;
    public getValue(): number {
        return this._dart_getValue();
    }
}
