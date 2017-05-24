.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1263
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1264
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->val$resultCode:I

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSyncResult:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2802(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)I

    .line 1266
    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->val$resultCode:I

    if-nez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2902(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v2, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    .line 1270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$11;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v2

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1274
    return-void

    .line 1272
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
