.class Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource$EmptyAlbumSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAlbumSet"
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 61
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "picasa"

    return-object v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource$EmptyAlbumSet;->mDataVersion:J

    return-wide v0
.end method
