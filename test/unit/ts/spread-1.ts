declare const assert: (this: void, arg: boolean, message?: string) => void;

interface Foo {
    a: string;
    b: string;
    c: string;
}

interface Bar {
    d: number;
    e: number;
}

let foo: Foo = {
    a: "A",
    b: "B",
    c: "C",
}

assert(foo.a == "A");
assert(foo.b == "B");
assert(foo.c == "C");

let bar: Bar = {
    d: 1,
    e: 2,
}

assert(bar.d == 1);
assert(bar.e == 2);

let baz: Foo & Bar = {
    ...foo,
    ...bar
};

assert(baz.a == "A");
assert(baz.b == "B");
assert(baz.c == "C");
assert(baz.d == 1);
assert(baz.e == 2);


assert(foo.a == "A");
assert(foo.b == "B");
assert(foo.c == "C");

assert(bar.d == 1);
assert(bar.e == 2);
