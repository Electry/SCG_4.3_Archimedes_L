.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumMediaItem"
.end annotation


# instance fields
.field mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field mItemIndex:I

.field mItemOverFlag:Z

.field mItemRealCount:I

.field mItemShowCount:I

.field mMediaSetIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/data/MediaItem;IIIIZ)V
    .locals 1
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p3, "mediaSetIndex"    # I
    .param p4, "showCount"    # I
    .param p5, "realCount"    # I
    .param p6, "itemIndex"    # I
    .param p7, "itemOverFlag"    # Z

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemShowCount:I

    .line 112
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemRealCount:I

    .line 114
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemIndex:I

    .line 116
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemOverFlag:Z

    .line 120
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 121
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mMediaSetIndex:I

    .line 123
    iput p4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemShowCount:I

    .line 124
    iput p6, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemIndex:I

    .line 125
    iput-boolean p7, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemOverFlag:Z

    .line 126
    iput p5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemRealCount:I

    .line 128
    return-void
.end method
