.class public Lledroid/nac/utils/AndroidApplicationPath;
.super Ljava/lang/Object;
.source "AndroidApplicationPath.java"


# static fields
.field private static final DATA_DATA:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lledroid/nac/utils/AndroidApplicationPath;->DATA_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    .line 20
    iget-object v0, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 21
    iget-object v0, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 22
    return-void
.end method

.method private ensuredDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v2, 0x0

    iget-object v3, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "regularPath":Ljava/lang/String;
    sget-object v2, Lledroid/nac/utils/AndroidApplicationPath;->DATA_DATA:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "newOne":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getPackageCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lledroid/nac/utils/AndroidApplicationPath;->DATA_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    .end local v0    # "cacheDir":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v1}, Lledroid/nac/utils/AndroidApplicationPath;->ensuredDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageFilesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 25
    iget-object v2, p0, Lledroid/nac/utils/AndroidApplicationPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 26
    .local v0, "filesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lledroid/nac/utils/AndroidApplicationPath;->DATA_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    .end local v0    # "filesDir":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "filesDir":Ljava/io/File;
    :cond_0
    invoke-direct {p0, v1}, Lledroid/nac/utils/AndroidApplicationPath;->ensuredDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
