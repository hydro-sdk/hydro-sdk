declare const assert: (this: void, arg: boolean, message?: string) => void;

class BaseClass {
    public foo() {
        return "BaseClass";
    }
}

class Child1 extends BaseClass {
    public foo() {
        return super.foo() + "Child1";
    }
}

const baseClass = new BaseClass();

assert(baseClass.foo() == "BaseClass");

const child1 = new Child1();

assert(child1.foo() == "BaseClassChild1");