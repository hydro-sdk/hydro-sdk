declare const assert: (this: void, arg: boolean, message?: string) => void;

class BaseClass {
    public fooMethod() {
        return "BaseClass";
    }

    public toString() {
        return "BaseClass";
    }
}

class Child1 extends BaseClass {
    public fooMethod() {
        return super.fooMethod() + "Child1";
    }
    public toString() {
        return "Child1";
    }
}

const baseClass = new BaseClass();

assert(baseClass.toString() == "BaseClass");
assert(baseClass.fooMethod() == "BaseClass");

const child1 = new Child1();

assert(child1.toString() == "Child1");
assert(child1.fooMethod() == "BaseClassChild1");
