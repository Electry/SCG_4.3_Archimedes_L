.class public Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
.super Ljava/lang/Object;
.source "PhotoEditActionBarManager.java"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

.field private mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 2
    .param p1, "photoPage"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 36
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 38
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    .line 39
    return-void
.end method


# virtual methods
.method public addPhotoEditActionBar(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mParentView:Landroid/view/ViewGroup;

    .line 50
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getPhotoEditorActionBar()Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "bFirstWay":Z
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->destroy()V

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->setFirstPhotoPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-nez v2, :cond_2

    .line 63
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 64
    .local v1, "controller":Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setPhotoEditorActionBar(Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->lockOrientation()V

    .line 78
    .end local v1    # "controller":Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    if-nez v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getEditActionBarController()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    move-result-object v1

    .line 73
    .restart local v1    # "controller":Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;
    if-eqz v1, :cond_1

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->updatePhotoPage(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->destroy()V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setPhotoEditorActionBar(Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->destroy()V

    .line 106
    :cond_1
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    .line 107
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 108
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 109
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 111
    return-void
.end method

.method public getFakeHorizontalEditBarWidth()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getFakeHorizontalEditBarWidth()I

    move-result v0

    return v0
.end method

.method public getPhotoPage()Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    return-object v0
.end method

.method public getVerticalEditBarHeight()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getVerticalEditBarHeight()I

    move-result v0

    return v0
.end method

.method public hideEditBar()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideEditBar()V

    .line 137
    :cond_0
    return-void
.end method

.method public hideMoreItems()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public isAutoRotate()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getPhotoViewAutoScreenRotated()Z

    move-result v0

    return v0
.end method

.method public isEditState()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isEditState()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoreItemsVisible()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartFromContinue()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isstartFromContinuePics()Z

    move-result v0

    return v0
.end method

.method public onBackPressedWhenOthers()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 268
    const-string v2, "jiaxiaowei"

    const-string/jumbo v3, "onBackPressedWhenOthers"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isEditState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isUndoCanClicked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isRedoCanClicked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDialog()V

    .line 306
    :goto_0
    return v0

    .line 274
    :cond_1
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBackPressedWhenOthers-------------mPhotoEditorActionBar.mIsStartFromCamera():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsStartFromCamera()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isAutoRotate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isAutoRotate()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetToFullViewAnimation()V

    .line 279
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startOutEditStateAnimation()V

    .line 283
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isAutoRotate()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isStartFromContinue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 288
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDoingEdit(Z)V

    .line 289
    const-string v1, "WDY:AllEffectsBar"

    const-string v2, "exit edit mode  onBackPressed from gallery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->exitEditMode()V

    goto :goto_1

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_6

    .line 296
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isMoreItemsVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    goto/16 :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideUndoRedoFrame()V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideEditBar()V

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    move v0, v1

    .line 306
    goto/16 :goto_0
.end method

.method public onBackPressedWhenStartFromCamera()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 231
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isEditState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isUndoCanClicked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isRedoCanClicked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDialog()V

    .line 264
    :cond_1
    :goto_0
    return v0

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDoingEdit(Z)V

    .line 237
    const-string v1, "WDY:AllEffectsBar"

    const-string v2, "exit edit mode  onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetToFullViewAnimation()V

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startOutEditStateAnimation()V

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->exitEditMode()V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 249
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_6

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isMoreItemsVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideUndoRedoFrame()V

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideEditBar()V

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onBack()V

    .line 261
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method public onBackWhenConfigFromDialog()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetToFullViewAnimation()V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->startOutEditStateAnimation()V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isAutoRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 228
    :goto_1
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->exitEditMode()V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 173
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showUndoRedoFrame()V

    .line 177
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 181
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isAutoRotate()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    instance-of v2, v2, Lcom/lenovo/scg/camera/CameraActivity;

    if-nez v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isEditState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getOrientationCompensation()I

    move-result v1

    .line 192
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v2

    if-eqz v2, :cond_4

    rem-int/lit16 v2, v1, 0xb4

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isFakeHorizontal()Z

    move-result v2

    if-nez v2, :cond_1

    rem-int/lit16 v2, v1, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetPhotoEditActionBarLayout()V

    goto :goto_0
.end method

.method public onStateResult(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 153
    if-eqz p1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->updateUndoRedoViews()V

    .line 170
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideUndoRedoFrame()V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hideEditBar()V

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->exitEditMode()V

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public removePhotoEditorActionBar()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->removePhotoEditorActionBar()V

    .line 117
    :cond_0
    return-void
.end method

.method public reset(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 2
    .param p1, "photoPage"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 43
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mFilterStackManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    .line 46
    return-void
.end method

.method public resetLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V
    .locals 1
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "isSlideShow"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->resetPhotoEditActionBarLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V

    goto :goto_0
.end method

.method public showEditBar()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------showEditBar------mPhotoPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showEditBar()V

    .line 131
    :cond_0
    return-void
.end method

.method public showUndoRedoFrame()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showUndoRedoFrame()V

    .line 320
    return-void
.end method

.method public toggleEditorActionBarMoreItems()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->updatePhotoEditMoreLayoutVisible()V

    goto :goto_0
.end method
