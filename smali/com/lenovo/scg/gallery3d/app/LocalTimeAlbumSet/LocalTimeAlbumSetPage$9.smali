.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1008
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$2900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1009
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1011
    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3002(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)Z

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    const/4 v2, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V

    .line 1015
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mIsActive:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    const-string v1, "LocalTimeAlbumSetPage"

    const-string v2, "failed to load album set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_1
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1021
    return-void

    .line 1019
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
