(global as any).HYDROC_DISABLE_TOP_LEVEL = true;

import * as path from "path";

import {
    Hydroc,
    HydrocMockChmodProvider,
    HydrocMockFsProvider,
    HydrocMockGhReleasesFileProvider,
    HydrocMockGhReleasesFsProvider,
    MockFsNode,
    MockFsNodeKind,
    TargetPlatform,
} from "../../hydroc";

test("should successfully download, verify sdk-tool", async () => {
    const mockGhFsProvider = new HydrocMockGhReleasesFsProvider({
        mockFsNode: {
            kind: MockFsNodeKind.kDirectory,
            children: {
                "github.com": {
                    kind: MockFsNodeKind.kDirectory,
                    children: {
                        "hydro-sdk": {
                            kind: MockFsNodeKind.kDirectory,
                            children: {
                                "hydro-sdk": {
                                    kind: MockFsNodeKind.kDirectory,
                                    children: {
                                        releases: {
                                            kind: MockFsNodeKind.kDirectory,
                                            children: {
                                                download: {
                                                    kind: MockFsNodeKind.kDirectory,
                                                    children: {
                                                        "1.2.3": {
                                                            kind: MockFsNodeKind.kDirectory,
                                                            children: {
                                                                "mock-tool-win32-x64.exe":
                                                                {
                                                                    kind: MockFsNodeKind.kFile,
                                                                    fileMode:
                                                                        "",
                                                                    content:
                                                                        "this is mock-tool-win32-x64.exe",
                                                                },
                                                                "mock-tool-win32-x64.exe.sha256":
                                                                {
                                                                    kind: MockFsNodeKind.kFile,
                                                                    fileMode:
                                                                        "",
                                                                    content:
                                                                        "f7ac22caf03fc45fb095533cdbdd9cd9cfc659cf780f1ce834f7f6dee48e85a3",
                                                                },
                                                            },
                                                        },
                                                    },
                                                },
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        } as MockFsNode,
        pathSeparator: "/",
    });

    const mockGhFileProvider = new HydrocMockGhReleasesFileProvider({
        fsProvider: mockGhFsProvider,
    });

    const mockOutputFileSystem = new HydrocMockFsProvider({
        mockFsNode: {
            kind: MockFsNodeKind.kDirectory,
            children: {},
        } as MockFsNode,
        pathSeparator: path.sep as "\\" | "/",
    });

    const hydroc = new Hydroc({
        sdkToolsVersion: "1.2.3",
        sdkTools: ["mock-tool"],
        ghFilesProvider: mockGhFileProvider,
        fsProvider: mockOutputFileSystem,
        chmodProvider: new HydrocMockChmodProvider({
            mockFsNode: mockOutputFileSystem.mockFsNode,
            pathSeparator: path.sep as "\\" | "/",
        }),
        targetPlatform: TargetPlatform.win32x64,
    });

    await hydroc.downloadMissingSdkTools();

    expect(mockOutputFileSystem.mockFsNode).toMatchObject({
        kind: MockFsNodeKind.kDirectory,
        children: {
            ".hydroc": {
                kind: MockFsNodeKind.kDirectory,
                children: {
                    "1.2.3": {
                        kind: MockFsNodeKind.kDirectory,
                        children: {
                            "sdk-tools": {
                                kind: MockFsNodeKind.kDirectory,
                                children: {
                                    "mock-tool-win32-x64.exe": {
                                        kind: MockFsNodeKind.kFile,
                                        fileMode: "",
                                        content: "this is mock-tool-win32-x64.exe",
                                    },
                                },
                            },
                        },
                    },
                },
            },
        },
    });
});
