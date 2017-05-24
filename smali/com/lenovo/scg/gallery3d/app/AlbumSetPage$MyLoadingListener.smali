.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$1;

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    .line 1075
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2300(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mNeedUpdateSelection:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2302(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z

    .line 1082
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->restoreSelection()V

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 1087
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionActionBarMenu()V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2200(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    .line 1066
    return-void
.end method
