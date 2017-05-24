.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1044
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1045
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1047
    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1902(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v2, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    .line 1051
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mIsActive:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    const-string v1, "AlbumSetPage"

    const-string v2, "failed to load album set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_1
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1057
    return-void

    .line 1055
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
