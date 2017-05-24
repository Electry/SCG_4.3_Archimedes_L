.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumPage$1;

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3000(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    .line 1326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3102(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 1327
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showSyncErrorIfNecessary(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)V

    .line 1332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mNeedUpdateSelection:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3402(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 1339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->restoreSelection()V

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 1342
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2100(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionActionBarMenu()V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    .line 1320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mLoadingFailed:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$3102(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)Z

    .line 1321
    return-void
.end method
