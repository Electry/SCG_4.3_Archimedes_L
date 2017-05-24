.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;
.super Ljava/lang/Object;
.source "CameraBrowsePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 884
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 885
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 887
    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->val$resultCode:I

    if-nez v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mInitialSynced:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$1902(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Z)Z

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    const/4 v2, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->clearLoadingBit(I)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$2000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 891
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->val$resultCode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mIsActive:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$2100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mAlbumDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$100(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 893
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0f0681

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :cond_1
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 898
    return-void

    .line 896
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
