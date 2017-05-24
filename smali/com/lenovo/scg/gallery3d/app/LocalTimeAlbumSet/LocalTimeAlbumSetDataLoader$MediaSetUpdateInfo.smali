.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSetUpdateInfo"
.end annotation


# instance fields
.field public mediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public size:I

.field public startUpdateIndex:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaSetList:Ljava/util/ArrayList;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;->mediaItemList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;-><init>()V

    return-void
.end method
