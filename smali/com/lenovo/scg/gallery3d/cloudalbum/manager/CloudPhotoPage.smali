.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
.source "CloudPhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;


# instance fields
.field private mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 29
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 33
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_photo_page"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->createPhotoAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->setPhotoAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)V

    .line 39
    return-void
.end method

.method private createPhotoAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    return-object v0
.end method

.method private getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    return-object v0
.end method

.method private getUI()Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    return-object v0
.end method


# virtual methods
.method protected createModel(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 54
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected createUI(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 48
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onRegisterListener()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected onUnRegisterListener()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public photoPageDestory()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->destory()V

    .line 90
    return-void
.end method

.method public requestData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v1, "cloud click same id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mIsSame:Z

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    move-result-object v0

    .line 82
    .local v0, "photoModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    if-eqz v0, :cond_1

    .line 83
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mIsSame:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->startGetData(Z)V

    .line 85
    :cond_1
    return-void
.end method

.method public requestPhotoOutsideUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    move-result-object v0

    .line 95
    .local v0, "photoModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->getPhotoOutSideUrl(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public requestSharedPhotoData(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    move-result-object v0

    .line 132
    .local v0, "photoModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->getSharedPhoto(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public requestUpdateData()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    move-result-object v0

    .line 118
    .local v0, "photoModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->stratUpdateData()V

    .line 121
    :cond_0
    return-void
.end method

.method public showSharePhotoPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->show()V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->loadingSharedUrlData(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public toDeletePhoto(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->getModel()Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;

    move-result-object v0

    .line 103
    .local v0, "photoModel":Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudPhotoModel;->toDeletePhotoFromCloud(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public toShowNextPhoto()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .line 110
    .local v0, "photoUI":Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->setNextPhoto()V

    .line 113
    :cond_0
    return-void
.end method
