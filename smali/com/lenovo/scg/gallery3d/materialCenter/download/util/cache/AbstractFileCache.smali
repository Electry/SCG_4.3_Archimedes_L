.class public abstract Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;
.super Ljava/lang/Object;
.source "AbstractFileCache.java"


# instance fields
.field private dirString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->dirString:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->dirString:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->createDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 18
    .local v0, "ret":Z
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileHelper.createDirectory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->dirString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->dirString:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileHelper;->deleteDirectory(Ljava/lang/String;)Z

    .line 32
    return-void
.end method

.method public abstract getCacheDir()Ljava/lang/String;
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "f":Ljava/io/File;
    return-object v0
.end method

.method public abstract getSavePath(Ljava/lang/String;)Ljava/lang/String;
.end method
