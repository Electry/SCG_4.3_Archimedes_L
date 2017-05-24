.class abstract Lledroid/nac/client/RootWorkableTester;
.super Ljava/lang/Object;
.source "RootWorkableTester.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ledroid-nac"


# instance fields
.field private final mPackageCacheFileDir:Ljava/io/File;

.field private final mPackageFilesDir:Ljava/io/File;

.field private final mPackageName:Ljava/lang/String;

.field private final mRootTest:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lledroid/nac/utils/DebugConfig;->isDebugable()Z

    move-result v0

    sput-boolean v0, Lledroid/nac/client/RootWorkableTester;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgFileDir"    # Ljava/io/File;
    .param p3, "pkgCacheDir"    # Ljava/io/File;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lledroid/nac/client/RootWorkableTester;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lledroid/nac/client/RootWorkableTester;->mPackageFilesDir:Ljava/io/File;

    .line 28
    iput-object p3, p0, Lledroid/nac/client/RootWorkableTester;->mPackageCacheFileDir:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lledroid/nac/client/RootWorkableTester;->mPackageCacheFileDir:Ljava/io/File;

    const-string/jumbo v2, "testr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    .line 30
    return-void
.end method

.method private isRootOwnerForRootTestFile()Z
    .locals 17

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_0
    new-instance v8, Lledroid/nac/utils/ReflectClass;

    const-string v12, "libcore.io.Libcore"

    invoke-direct {v8, v12}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, "rf":Lledroid/nac/utils/ReflectClass;
    const-string/jumbo v12, "os"

    invoke-virtual {v8, v12}, Lledroid/nac/utils/ReflectClass;->hasField(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 42
    new-instance v5, Lledroid/nac/utils/ReflectClass;

    const-string v12, "libcore.io.Os"

    const-string/jumbo v13, "os"

    invoke-virtual {v8, v13}, Lledroid/nac/utils/ReflectClass;->getDeclaredFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .local v5, "osrf":Lledroid/nac/utils/ReflectClass;
    const-string/jumbo v12, "stat"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v5, v12, v13, v14}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 44
    .local v10, "st":Ljava/lang/Object;
    new-instance v7, Lledroid/nac/utils/ReflectClass;

    const-string v12, "libcore.io.StructStat"

    invoke-direct {v7, v12, v10}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .local v7, "refStructStat":Lledroid/nac/utils/ReflectClass;
    const-string/jumbo v12, "st_uid"

    invoke-virtual {v7, v12}, Lledroid/nac/utils/ReflectClass;->getFieldValueInt(Ljava/lang/String;)I

    move-result v11

    .line 46
    .local v11, "uid":I
    const-string/jumbo v12, "st_gid"

    invoke-virtual {v7, v12}, Lledroid/nac/utils/ReflectClass;->getFieldValueInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 47
    .local v4, "gid":I
    if-nez v11, :cond_0

    if-nez v4, :cond_0

    const/4 v12, 0x1

    .line 94
    .end local v4    # "gid":I
    .end local v5    # "osrf":Lledroid/nac/utils/ReflectClass;
    .end local v7    # "refStructStat":Lledroid/nac/utils/ReflectClass;
    .end local v8    # "rf":Lledroid/nac/utils/ReflectClass;
    .end local v10    # "st":Ljava/lang/Object;
    .end local v11    # "uid":I
    :goto_0
    return v12

    .line 47
    .restart local v4    # "gid":I
    .restart local v5    # "osrf":Lledroid/nac/utils/ReflectClass;
    .restart local v7    # "refStructStat":Lledroid/nac/utils/ReflectClass;
    .restart local v8    # "rf":Lledroid/nac/utils/ReflectClass;
    .restart local v10    # "st":Ljava/lang/Object;
    .restart local v11    # "uid":I
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 49
    .end local v4    # "gid":I
    .end local v5    # "osrf":Lledroid/nac/utils/ReflectClass;
    .end local v7    # "refStructStat":Lledroid/nac/utils/ReflectClass;
    .end local v8    # "rf":Lledroid/nac/utils/ReflectClass;
    .end local v10    # "st":Ljava/lang/Object;
    .end local v11    # "uid":I
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    .line 59
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 60
    const-string v12, "ledroid-nac"

    const-string v13, "Determine test root file status"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_2
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x11

    if-ge v12, v13, :cond_4

    .line 64
    new-instance v9, Lledroid/nac/utils/ReflectClass;

    const-string v12, "android.os.FileUtils$FileStatus"

    invoke-direct {v9, v12}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/String;)V

    .line 66
    .local v9, "rfFileStatus":Lledroid/nac/utils/ReflectClass;
    :try_start_1
    invoke-virtual {v9}, Lledroid/nac/utils/ReflectClass;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 67
    .local v3, "fsObject":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 68
    new-instance v6, Lledroid/nac/utils/ReflectClass;

    const-class v12, Landroid/os/FileUtils;

    invoke-direct {v6, v12}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/Class;)V

    .line 69
    .local v6, "refFileUtils":Lledroid/nac/utils/ReflectClass;
    const-string v12, "getFileStatus"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Lledroid/nac/utils/ReflectClass;->getCurClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-virtual {v6, v12, v13, v14}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v12, "uid"

    invoke-virtual {v9, v12}, Lledroid/nac/utils/ReflectClass;->getFieldValueInt(Ljava/lang/String;)I

    move-result v11

    .line 71
    .restart local v11    # "uid":I
    const-string v12, "gid"

    invoke-virtual {v9, v12}, Lledroid/nac/utils/ReflectClass;->getFieldValueInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9

    move-result v4

    .line 72
    .restart local v4    # "gid":I
    if-nez v11, :cond_3

    if-nez v4, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "fsObject":Ljava/lang/Object;
    .end local v4    # "gid":I
    .end local v6    # "refFileUtils":Lledroid/nac/utils/ReflectClass;
    .end local v9    # "rfFileStatus":Lledroid/nac/utils/ReflectClass;
    .end local v11    # "uid":I
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    move-object v2, v1

    .line 57
    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v1

    .line 57
    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    goto :goto_1

    .line 72
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "fsObject":Ljava/lang/Object;
    .restart local v4    # "gid":I
    .restart local v6    # "refFileUtils":Lledroid/nac/utils/ReflectClass;
    .restart local v9    # "rfFileStatus":Lledroid/nac/utils/ReflectClass;
    .restart local v11    # "uid":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 74
    .end local v3    # "fsObject":Ljava/lang/Object;
    .end local v4    # "gid":I
    .end local v6    # "refFileUtils":Lledroid/nac/utils/ReflectClass;
    .end local v11    # "uid":I
    :catch_4
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v2, v1

    .line 89
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .end local v9    # "rfFileStatus":Lledroid/nac/utils/ReflectClass;
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 90
    const-string v12, "ledroid-nac"

    const-string v13, "Determine test root file status"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_5
    const-string v12, "ledroid-nac"

    const-string v13, "Cannot be able to determine test root file status."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v12, 0x0

    goto :goto_0

    .line 76
    .restart local v9    # "rfFileStatus":Lledroid/nac/utils/ReflectClass;
    :catch_5
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    .line 86
    goto :goto_2

    .line 78
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    move-object v2, v1

    .line 86
    goto :goto_2

    .line 80
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_7
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v2, v1

    .line 86
    goto :goto_2

    .line 82
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_8
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    .line 86
    goto :goto_2

    .line 84
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_9
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v1

    goto :goto_2
.end method

.method private isStatusErrorOnRootTest()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkForMe()Z
    .locals 9

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, "workableForMe":Z
    iget-object v6, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    invoke-direct {p0}, Lledroid/nac/client/RootWorkableTester;->isRootOwnerForRootTestFile()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lledroid/nac/client/RootWorkableTester;->isStatusErrorOnRootTest()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const-string v6, "ledroid-nac"

    const-string v7, "Test root file status error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v6, 0x0

    .line 134
    :goto_0
    return v6

    .line 105
    :cond_0
    const/4 v2, 0x0

    .line 107
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lnss:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lledroid/nac/client/RootWorkableTester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "valid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    const/4 v5, 0x1

    .line 121
    :cond_2
    if-eqz v3, :cond_3

    .line 123
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 130
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "valid":Ljava/lang/String;
    :cond_3
    :goto_1
    sget-boolean v6, Lledroid/nac/client/RootWorkableTester;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 131
    const-string v7, "ledroid-nac"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Root can work for me: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_6

    const-string v6, "Yes"

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v6, v5

    .line 134
    goto :goto_0

    .line 116
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    if-eqz v2, :cond_3

    .line 123
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v6

    goto :goto_1

    .line 118
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    if-eqz v2, :cond_3

    .line 123
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 124
    :catch_3
    move-exception v6

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_5

    .line 123
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 125
    :cond_5
    :goto_6
    throw v6

    .line 131
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_6
    const-string v6, "No"

    goto :goto_2

    .line 124
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "valid":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "valid":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 121
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 118
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 116
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method protected abstract execTest(Ljava/lang/String;)Z
.end method

.method protected abstract onRootTestWorkable(Z)V
.end method

.method protected abstract readRootSocketResult()Lledroid/nac/client/RootSocketResponse;
.end method

.method protected testRootWorkable()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    const/4 v3, 0x0

    .line 141
    .local v3, "workable":Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lledroid/nac/client/RootWorkableTester;->mPackageFilesDir:Ljava/io/File;

    const-string/jumbo v7, "testa.sh"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rm -f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "echo lnss:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lledroid/nac/client/RootWorkableTester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " && chmod 666 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lledroid/nac/client/RootWorkableTester;->mRootTest:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lledroid/nac/utils/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Lledroid/nac/utils/FileUtils;->setReadableAndExecutable(Ljava/io/File;ZZZ)V

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lledroid/nac/client/RootWorkableTester;->execTest(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-virtual {p0}, Lledroid/nac/client/RootWorkableTester;->readRootSocketResult()Lledroid/nac/client/RootSocketResponse;

    move-result-object v2

    .line 151
    .local v2, "response":Lledroid/nac/client/RootSocketResponse;
    if-eqz v2, :cond_1

    .line 152
    const-string v6, "ledroid-nac"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Test Root Workable: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lledroid/nac/client/RootSocketResponse;->isSuccessful()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-interface {v2}, Lledroid/nac/client/RootSocketResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lledroid/nac/client/RootWorkableTester;->isWorkForMe()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 155
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    const-string v4, "ledroid-nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove File Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "response":Lledroid/nac/client/RootSocketResponse;
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lledroid/nac/client/RootWorkableTester;->onRootTestWorkable(Z)V

    .line 164
    return v3

    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "response":Lledroid/nac/client/RootSocketResponse;
    :cond_3
    move v3, v5

    .line 153
    goto :goto_0

    .line 159
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "response":Lledroid/nac/client/RootSocketResponse;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ledroid-nac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test Root Workable: Error["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
