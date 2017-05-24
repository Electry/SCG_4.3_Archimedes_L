.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
.source "CloudAlbumPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_CloudActivity"

    const-string v3, "action_CloudActivity_click_album_page"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "albumId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 38
    const-string v1, "cloud click album id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->createAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .line 42
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setmAlbumId(Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->setAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;)V

    .line 46
    return-void
.end method

.method private createAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    return-object v0
.end method

.method private getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    return-object v0
.end method


# virtual methods
.method public cancelLoadData()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 130
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->cancelLoadAlbumThread()V

    .line 133
    :cond_0
    return-void
.end method

.method protected createModel(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 60
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createUI(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 55
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onRegisterListener()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected onUnRegisterListener()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public requestData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v1, "cloud click same id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mIsSame:Z

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 90
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_1

    .line 91
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mIsSame:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->startGetData(Z)V

    .line 93
    :cond_1
    return-void
.end method

.method public requestMultSharedUrl(Ljava/util/List;)V
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
    .line 97
    .local p1, "photoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 98
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->getMultSharedUrl(Ljava/util/List;)V

    .line 101
    :cond_0
    return-void
.end method

.method public requestSharedAlbumData(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 145
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->getSharedAlbumUrl(Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public requestSingelOutsideUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 106
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->getSingleOutSideUrl(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public requestUpdateData()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 122
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->stratUpdateData()V

    .line 125
    :cond_0
    return-void
.end method

.method public showShareAlbumPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->show()V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->loadingSharedUrlData(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public startPhotoPage(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public toDeletePhoto(Ljava/util/List;)V
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
    .line 113
    .local p1, "photoIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;

    move-result-object v0

    .line 114
    .local v0, "albumModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudAlbumModel;->toDeletePhotoFromCloud(Ljava/util/List;)V

    .line 117
    :cond_0
    return-void
.end method
