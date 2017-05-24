.class public abstract Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
.super Ljava/lang/Object;
.source "CloudBasePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;


# instance fields
.field protected mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field protected mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

.field protected mIsSame:Z

.field protected mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

.field private mPageTye:I

.field protected mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mPageTye:I

    .line 38
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mIsSame:Z

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 42
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->init(Landroid/os/Bundle;)V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    const-string v0, "cloud_page_type_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mPageTye:I

    .line 46
    :cond_0
    return-void
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->createUI(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    .line 70
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->createModel(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->setController(Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;)V

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->setModelChangedListener(Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->onRegisterListener()V

    .line 78
    return-void
.end method


# virtual methods
.method public addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V
    .locals 1
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p2, "pageType"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V

    .line 133
    :cond_0
    return-void
.end method

.method public closePage()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->closeCurrentPage()V

    .line 90
    return-void
.end method

.method protected abstract createModel(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.end method

.method protected abstract createUI(Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.end method

.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->onUnRegisterListener()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->removeLayout()V

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->setController(Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;)V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->setAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->destory()V

    .line 62
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .line 63
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mModel:Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;

    .line 65
    return-void
.end method

.method protected getActivity()Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    return-object v0
.end method

.method public getmPageTye()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mPageTye:I

    return v0
.end method

.method public hidePage()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->hide()V

    .line 114
    :cond_0
    return-void
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onActivityResult(ILandroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onBackPressed()V

    .line 126
    :cond_0
    return-void
.end method

.method protected abstract onRegisterListener()V
.end method

.method protected abstract onUnRegisterListener()V
.end method

.method public setmPageTye(I)V
    .locals 0
    .param p1, "mPageTye"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mPageTye:I

    .line 54
    return-void
.end method

.method public showAndLoading(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->show()V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->loadingCloudData(Landroid/os/Bundle;)V

    .line 97
    :cond_0
    return-void
.end method

.method public showPage()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->show()V

    .line 108
    :cond_0
    return-void
.end method

.method public startPage(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "pageType"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public updateDataInfo()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->updateData()V

    .line 102
    :cond_0
    return-void
.end method

.method public updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V
    .locals 1
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p2, "pageType"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V

    .line 140
    :cond_0
    return-void
.end method
