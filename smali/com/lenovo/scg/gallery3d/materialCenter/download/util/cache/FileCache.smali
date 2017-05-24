.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/FileCache;
.super Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;
.source "FileCache.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/AbstractFileCache;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getSaveFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/FileCache;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
