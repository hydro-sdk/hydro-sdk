import { Future } from "../../../runtime/dart/async/future";
import { List } from "../../../runtime/dart/collection/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;


Future
    .value()
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
    .then((a1: Array<number>): Future<List<number>> => {
        assert(a1 != undefined);
        assert(a1[0] == 0);
        assert(a1[1] == 1);
        assert(a1[2] == 2);
        return new Future(() => List.fromArray(a1).map((x) => x + 1))
            .then((l1) => {
                assert(a1 != undefined);
                assert(a1[0] == 0);
                assert(a1[1] == 1);
                assert(a1[2] == 2);

                assert(l1 != undefined);
                assert(l1.elementAt(0) == 1);
                assert(l1.elementAt(1) == 2);
                assert(l1.elementAt(2) == 3);
                
                return l1.map((x) => x + 2);
            });

    })
    .then((l2: Future<List<number>>) => {
        assert(l2 != undefined);
        l2.then((l3: List<number>) => {
            assert(l3 != undefined);
            assert(l3.elementAt(0) == 3);
            assert(l3.elementAt(1) == 4);
            assert(l3.elementAt(2) == 5);

            return l3.unwrap();
        }).then((a2: Array<number>) => {
            assert(a2 != undefined);
            assert(a2[0] == 3);
            assert(a2[1] == 4);
            assert(a2[2] == 5);
        });
    });

