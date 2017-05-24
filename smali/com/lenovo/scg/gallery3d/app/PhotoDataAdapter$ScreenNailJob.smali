.class Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/lenovo/scg/gallery3d/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 793
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 6
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 799
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 800
    .local v1, "s":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 813
    :cond_0
    :goto_0
    return-object v2

    .line 804
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$400(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 805
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->access$500(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v2

    goto :goto_0

    .line 808
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 809
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    if-eqz v0, :cond_3

    .line 811
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 813
    :cond_3
    if-eqz v0, :cond_0

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$ScreenNailJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
