.class public Lcom/lenovo/scg/gallery3d/data/SnailItem;
.super Lcom/lenovo/scg/gallery3d/data/MediaItem;
.source "SnailItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnailItem"

.field private static final THREAD_POOL_NAME_SNAILITEM_REQUESTIMAGE:Ljava/lang/String; = "pool_snailitem_requestimage"

.field private static final THREAD_POOL_NAME_SNAILITEM_REQUESTLARGEIMAGE:Ljava/lang/String; = "pool_snailitem_requestlargeimage"


# instance fields
.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 45
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 46
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, ""

    return-object v0
.end method

.method public getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/SnailItem;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/SnailItem$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/data/SnailItem$1;-><init>(Lcom/lenovo/scg/gallery3d/data/SnailItem;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/SnailItem$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/data/SnailItem$2;-><init>(Lcom/lenovo/scg/gallery3d/data/SnailItem;)V

    return-object v0
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "screenNail"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/SnailItem;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 108
    return-void
.end method

.method public updateVersion()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/SnailItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/SnailItem;->mDataVersion:J

    .line 112
    return-void
.end method
