export abstract class ScrollPhysics {
    public abstract applyTo: (ancestor: ScrollPhysics) => ScrollPhysics;
}
