.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$1;

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 6
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    const/4 v5, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V

    .line 1039
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-nez v4, :cond_1

    .line 1066
    :cond_0
    return-void

    .line 1043
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1044
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1045
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mNeedUpdateSelection:Z
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3402(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)Z

    .line 1046
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->restoreSelection()V

    .line 1050
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedMenuOperation()V

    .line 1051
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionActionBarMenu()V

    .line 1055
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$1200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1056
    .local v0, "albumMediaSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;>;"
    if-eqz v0, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->clearDate()V

    .line 1058
    const/4 v3, 0x0

    .line 1059
    .local v3, "point":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1060
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    add-int/2addr v3, v4

    .line 1062
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDateItem(Ljava/lang/String;I)V

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$3300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V

    .line 1030
    return-void
.end method
