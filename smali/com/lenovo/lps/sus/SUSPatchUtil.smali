.class public final Lcom/lenovo/lps/sus/SUSPatchUtil;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "libsus-xdelta.so"

.field private static final b:Ljava/lang/String; = "sus-xdelta"

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:J

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    sput-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    sput-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->h:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SUSPatchUtil init begin,isInitFlag="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/lenovo/lps/sus/SUSPatchUtil;->h:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->h:Z

    if-nez v1, :cond_5

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/sus/a/j;->f()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SUSPatchUtil context="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/data/data/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "libsus-xdelta.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/data/data/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/files/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "libsus-xdelta.so"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "SUSPatchUtil f="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "SUSPatchUtil f2="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "SUSPatchUtil f="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "; f2"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_3

    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v7, "libsus-xdelta.so"

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    const-string v7, "libsus-xdelta.so"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    const/16 v4, 0x1000

    :try_start_3
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "write lib file to buffer, filesize="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "!f.exists() && !f2.exists"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    sput-boolean v10, Lcom/lenovo/lps/sus/SUSPatchUtil;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUSPatchUtil init end,bAllowPatchUpdateFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v0, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-long v8, v7

    add-long/2addr v2, v8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_3
    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v0

    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v0

    if-eqz v0, :cond_b

    :try_start_8
    const-string/jumbo v0, "sus-xdelta"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_5
    :try_start_9
    const-string v0, "f.exists"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadLibrary fail! bAllowPatchUpdateFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLibrary fail! bAllowPatchUpdateFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_6
    :try_start_b
    const-string v0, "f2.exists"

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "System.load fail! bAllowPatchUpdateFlag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System.load fail! bAllowPatchUpdateFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4

    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4

    :catch_6
    move-exception v2

    goto/16 :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v6, 0x4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "patchUpdateInit entry,bAllowPatchUpdateFlag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_b

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getApkFile fail! pName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getApkFile Size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_1
    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-eqz v1, :cond_2

    sget-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    sget-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/lenovo/lps/sus/c/b;->a(J)Z

    move-result v1

    if-nez v1, :cond_2

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkSize fail! freeMemSize <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    mul-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_2
    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-eqz v1, :cond_7

    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/lps/sus/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_3
    invoke-static {p0, p1}, Lcom/lenovo/lps/sus/c/b;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/lenovo/lps/sus/c/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "md5sum Md5Str="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    sput-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "old fileMD5! vCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; fileSizeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; FileMd5Str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    :cond_7
    sget-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&PUIF=Y&SPMD5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    :cond_8
    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&SPFS="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    :cond_9
    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    if-eqz p3, :cond_a

    sget-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&SPVC="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "patchUpdateInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/sus/c/j;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    sget-wide v2, Lcom/lenovo/lps/sus/SUSPatchUtil;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lps/sus/SUSPatchUtil;->f:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static doXdeltaPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/lenovo/lps/sus/SUSPatchUtil;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/lenovo/lps/sus/SUSPatchUtil;->xdeltaPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static native xdeltaPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
