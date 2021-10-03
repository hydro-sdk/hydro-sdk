import { Future, IFuture } from "../../../../runtime/dart/async/future";
import { IIterable } from "../../../../runtime/dart/core/iterable";
import { IList, List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

Future.value()
    .then(() => "hello world")
    .then((s1: string): number => {
        assert(s1 != undefined);
        assert(s1 == "hello world");
        return 5;
    })
    .then((n1: number): Array<number> => {
        assert(n1 != undefined);
        assert(n1 == 5);
        return [0, 1, 2];
    })
    .then((a1: Array<number>): IFuture<IIterable<number>> => {
        assert(a1 != undefined);
        assert(a1[0] == 0);
        assert(a1[1] == 1);
        assert(a1[2] == 2);
        return new Future(() => List.fromArray(a1).map((x) => x + 1)).then(
            (l1) => {
                assert(a1 != undefined);
                assert(a1[0] == 0);
                assert(a1[1] == 1);
                assert(a1[2] == 2);

                assert(l1 != undefined);
                assert(l1.elementAt(0) == 1);
                assert(l1.elementAt(1) == 2);
                assert(l1.elementAt(2) == 3);

                return l1.map((x) => x + 2);
            }
        );
    })
    .then((l2: IFuture<IIterable<number>>) => {
        assert(l2 != undefined);
        l2.then((l3: IIterable<number>) => {
            assert(l3 != undefined);
            assert(l3.elementAt(0) == 3);
            assert(l3.elementAt(1) == 4);
            assert(l3.elementAt(2) == 5);
        });
    });
