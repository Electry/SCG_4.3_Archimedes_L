.class public final Lledroid/nac/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFileByPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    :cond_0
    const/4 v2, 0x1

    .line 41
    :goto_0
    return v2

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 35
    aget-object v2, v0, v1

    invoke-static {v2}, Lledroid/nac/utils/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 36
    const-string v2, "FileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Failed] Deleted folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static setReadableAndExecutable(Ljava/io/File;ZZZ)V
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .param p1, "readable"    # Z
    .param p2, "executable"    # Z
    .param p3, "ownerOnly"    # Z

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Lledroid/nac/utils/ReflectClass;

    const-class v2, Ljava/io/File;

    invoke-direct {v1, v2, p0}, Lledroid/nac/utils/ReflectClass;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 47
    .local v1, "fr":Lledroid/nac/utils/ReflectClass;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    .line 48
    .local v0, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setExecutable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v2, "setReadable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Lledroid/nac/utils/ReflectClass;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "fr":Lledroid/nac/utils/ReflectClass;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v2

    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 18
    .local v0, "out":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 22
    return-void

    .line 20
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
.end method
