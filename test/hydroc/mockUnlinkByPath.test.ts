(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    MockFsFile,
    MockFsNode,
    MockFsNodeKind,
    mockGetFileByPath,
    mockUnlinkByPath,
} from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            firstChild: {
                kind: MockFsNodeKind.kFile,
                content: "a child",
            },
        },
    };

    mockUnlinkByPath("firstChild", mockFs as any);

    const res = mockGetFileByPath("firstChild", mockFs as any);

    expect(res).toBeUndefined();
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstChild: {
                        kind: MockFsNodeKind.kFile,
                        content: "a child",
                    },
                },
            },
        },
    };

    mockUnlinkByPath(`root${path.sep}firstChild`, mockFs as MockFsNode);

    const res = mockGetFileByPath(
        `root${path.sep}firstChild`,
        mockFs as MockFsNode
    );

    expect(res).toBeUndefined();

    const root = mockGetFileByPath("root", mockFs as MockFsNode);

    expect(root).toBeDefined();
});
