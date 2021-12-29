(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
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
                fileMode: "",
                content: "a child",
            },
        },
    };

    mockUnlinkByPath(
        "firstChild",
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    const res = mockGetFileByPath(
        "firstChild",
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

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
                        fileMode: "",
                        content: "a child",
                    },
                },
            },
        },
    };

    mockUnlinkByPath(
        `root${path.sep}firstChild`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    const res = mockGetFileByPath(
        `root${path.sep}firstChild`,
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(res).toBeUndefined();

    const root = mockGetFileByPath(
        "root",
        mockFs as MockFsNode,
        path.sep as "\\" | "/"
    );

    expect(root).toBeDefined();
});
