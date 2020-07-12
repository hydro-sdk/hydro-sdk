//Based on https://github.com/dart-lang/sdk/blob/42d354c91dcd69fd468134fc9a21275f4628b7a6/tests/lib_2/async/future_value_chain2_test.dart
import { Future } from "../../../runtime/dart/async/future";
declare const assert: (this: void, arg: boolean, message?: string) => void;

const errorFuture = Future.error(499);
errorFuture.catchError((error) => {
    const valueChainFuture = Future.sync(() => errorFuture);
    valueChainFuture.catchError((error) => {
        assert(499 == error);
    });
});