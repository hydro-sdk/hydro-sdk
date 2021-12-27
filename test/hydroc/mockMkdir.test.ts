(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    MockFsNode,
    MockFsNodeKind,
    mockGetFileByPath,
    mockMkdir,
} from "../../hydroc";

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {},
    };

    mockMkdir("root", true, mockFs as MockFsNode);

    const res = mockGetFileByPath("root", mockFs as MockFsNode);

    expect(res).toBeDefined();
    expect(res?.kind).toBe(MockFsNodeKind.kDirectory);

    expect(mockFs).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {},
            },
        },
    });
});

test("", async () => {
    const mockFs = {
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstFile: {
                        kind: MockFsNodeKind.kFile,
                        content: "the first file",
                    },
                    secondDirectory: {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            secondFile: {
                                kind: MockFsNodeKind.kFile,
                                content: "the second file",
                            },
                        },
                    },
                },
            },
        },
    };

    mockMkdir(
        `root${path.sep}secondDirectory${path.sep}thirdDirectory`,
        true,
        mockFs as MockFsNode
    );

    expect(mockFs).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            root: {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    firstFile: {
                        kind: MockFsNodeKind.kFile,
                        content: "the first file",
                    },
                    secondDirectory: {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            secondFile: {
                                kind: MockFsNodeKind.kFile,
                                content: "the second file",
                            },
                            thirdDirectory: {
                                kind: MockFsNodeKind.kDirectory,
                                children: {},
                            },
                        },
                    },
                },
            },
        },
    });
});
