.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
.source "CloudAlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_album_set_page"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->createAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->setAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;)V

    .line 38
    return-void
.end method

.method private createAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    return-object v0
.end method

.method private getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    return-object v0
.end method

.method private getUI()Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    return-object v0
.end method


# virtual methods
.method public addNewAlbum(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 93
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->addAlbumInCloud(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public cancelLoadData()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 133
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->cancelLoadAlbumSet()V

    .line 136
    :cond_0
    return-void
.end method

.method protected createModel(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 53
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createUI(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onRegisterListener()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onUnRegisterListener()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public renameAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "newAlbumName"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 101
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->renameAlbum(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public requestAlbumOutsideUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 109
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->getAlbumOutsideUrl(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public requestData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v1, "cloud click same id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mIsSame:Z

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 85
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mIsSame:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->startGetData(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method public requestUpdateData()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 125
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->stratUpdateData()V

    .line 128
    :cond_0
    return-void
.end method

.method public startAlbumPage(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public toDeleteAlbum(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "albumIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumSetPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;

    move-result-object v0

    .line 117
    .local v0, "albumSetModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumSetModel;->toDeleteAlbumFromCloud(Ljava/util/List;)V

    .line 120
    :cond_0
    return-void
.end method
