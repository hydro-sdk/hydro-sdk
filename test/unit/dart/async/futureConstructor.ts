//Based on https://github.com/dart-lang/sdk/blob/42d354c91dcd69fd468134fc9a21275f4628b7a6/tests/lib_2/async/future_constructor_test.dart
import { Future } from "../../../../runtime/dart/async/future";
declare const assert: (this: void, arg: boolean, message?: string) => void;

function compare<T>(func: () => T) {
    const f1 = new Future(func);
    const f2 = Future.value().then(() => func());
    f2.catchError(() => undefined);
    f1.then(
        (v1) => {
            f2.then((v2) => {
                assert(v1 != undefined);
                assert(v2 != undefined);
                assert(v1 == v2);
            });
        },
        {
            onError: (e1) => {
                f2.then(
                    () => {
                        assert(false);
                    },
                    {
                        onError: (e2) => {
                            assert(e1 != undefined);
                            assert(e2 != undefined);
                            assert(e1 == e2);
                        },
                    }
                );
            },
        }
    );
}
const val = Future.value(42);
const err1 = Future.error("Error").catchError(() => {});
compare(() => {
    return 42;
});
compare(() => {
    return val;
});
compare(() => {
    return err1;
});
let hasExecuted = false;
compare(() => {
    hasExecuted = true;
    return 499;
});
assert(hasExecuted == false);
