.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V
    .locals 5
    .param p1, "mediaObject"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .param p2, "isPanorama"    # Z
    .param p3, "isPanorama360"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz p2, :cond_1

    move v2, v0

    :goto_0
    if-eqz p3, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 419
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
