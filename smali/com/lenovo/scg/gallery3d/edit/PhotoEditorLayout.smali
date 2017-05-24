.class public Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
.super Ljava/lang/Object;
.source "PhotoEditorLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

.field private mIsEditState:Z

.field private mIsFakeHorizontal:Z

.field private mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

.field private mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

.field private mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "controller"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mParentView:Landroid/view/ViewGroup;

    .line 41
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getCurrentOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isCanSlidShow()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->reset(Lcom/lenovo/scg/gallery3d/data/MediaItem;ZZ)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isCanSlidShow()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->reset(Lcom/lenovo/scg/gallery3d/data/MediaItem;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public crop()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->crop()V

    .line 248
    return-void
.end method

.method public deletePhoto()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->deletePhoto()V

    .line 243
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->removePhotoEditorActionBar()V

    .line 455
    return-void
.end method

.method public dissmissMoreShare()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->dismissMoreShareDialog()Z

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hide()V

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->show()V

    .line 321
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->resetToFullViewAnimation()V

    .line 322
    return-void
.end method

.method public getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getEditActionBarController()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    return-object v0
.end method

.method public getFakeHorizontalEditBarWidth()I
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 450
    .local v0, "width":I
    return v0
.end method

.method public getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getFirstPhotoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 130
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v4, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCameraBrustPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getBrushName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v4, "wwf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    instance-of v4, v4, Lcom/lenovo/scg/gallery3d/data/UriImage;

    if-eqz v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/UriImage;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "subStrings":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 141
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v2, v4

    .line 142
    .local v1, "subString":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 145
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 149
    .end local v1    # "subString":Ljava/lang/String;
    .end local v2    # "subStrings":[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_0

    .line 152
    .end local v3    # "uri":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 156
    :cond_4
    const-string v4, ""

    goto :goto_0

    .line 158
    .restart local v2    # "subStrings":[Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_5
    const-string v4, ""

    goto :goto_0
.end method

.method public getVerticalEditBarHeight()I
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 445
    .local v0, "height":I
    return v0
.end method

.method public getpath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->goBack()V

    .line 305
    return-void
.end method

.method public hideEditBar()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->hide()V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->hide()V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hide()V

    goto :goto_0
.end method

.method public hidePhotoEditMoreLayout()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->hide()V

    .line 108
    return-void
.end method

.method public hideUndoRedoFrame()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hide()V

    .line 75
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 426
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    .line 427
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .line 428
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .line 429
    return-void
.end method

.method public isAutoRotate()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isAutoRotate()Z

    move-result v0

    return v0
.end method

.method public isCameraBrustPhoto()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isCameraBrustPhoto()Z

    move-result v0

    return v0
.end method

.method public isCanSlidShow()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isCanSlidShow()Z

    move-result v0

    return v0
.end method

.method public isDoingEdit()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isDoingEdit()Z

    move-result v0

    return v0
.end method

.method public isEditState()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    return v0
.end method

.method public isFakeHorizontal()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsFakeHorizontal:Z

    return v0
.end method

.method public isMoreItemsVisible()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->isMoreItemsVisible()Z

    move-result v0

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public isRedoCanClicked()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isRedoCanClicked()Z

    move-result v0

    return v0
.end method

.method public isSpeechPic()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isSpeechPic()Z

    move-result v0

    return v0
.end method

.method public isStartFromCamera()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isStartFromCamera()Z

    move-result v0

    return v0
.end method

.method public isStartFromCameraOrContinuePics()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isStartFromCameraOrContinuePics()Z

    move-result v0

    return v0
.end method

.method public isUndoCanClicked()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isUndoCanClicked()Z

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->lockOrientation()V

    .line 223
    return-void
.end method

.method public mIsStartFromCamera()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mIsStartFromCamera()Z

    move-result v0

    return v0
.end method

.method public makeEditorViewsClickable()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->makeAllEditButtonsClickable()V

    .line 350
    return-void
.end method

.method public makeEditorViewsUnClickable()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->makeAllEditButtonsUnclickable()V

    .line 354
    return-void
.end method

.method public makeUndoRedoViewsUnclickable()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->makeUndoRedoViewsUnclickable()V

    .line 338
    return-void
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->redo()V

    .line 281
    return-void
.end method

.method public removePhotoEditorActionBar()V
    .locals 3

    .prologue
    .line 372
    const-string v1, "jiaxiaowei"

    const-string/jumbo v2, "removePhotoEditorActionBar"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 375
    .local v0, "rootView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    .end local v0    # "rootView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public reset(Lcom/lenovo/scg/gallery3d/data/MediaItem;ZZ)V
    .locals 6
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "isCanSlidShow"    # Z
    .param p3, "isFakeHorizontal"    # Z

    .prologue
    const/4 v5, 0x0

    .line 382
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhotoEditorActionBar---------reset------, isFakeHorizontal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsFakeHorizontal:Z

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 386
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 387
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_2

    .line 388
    const v2, 0x7f040124

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 393
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->initViews(Landroid/view/View;)V

    .line 394
    if-nez p3, :cond_1

    .line 395
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->updateUndoRedoViews()V

    .line 396
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isRedoCanClicked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isUndoCanClicked()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 399
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 403
    :cond_1
    const-string/jumbo v2, "panhui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhotoEditorActionBar---------reset------, mIsEditState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFakeHorizontal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    .line 406
    const-string/jumbo v2, "panhui"

    const-string v3, "PhotoEditorActionBar1111111111111"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->setPortrait()V

    .line 408
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->show()V

    .line 409
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->hide()V

    .line 422
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->rotateShareDialog()V

    .line 423
    return-void

    .line 390
    :cond_2
    const v2, 0x7f040123

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_3
    const-string/jumbo v2, "panhui"

    const-string v3, "PhotoEditorActionBar2222222222222"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hide()V

    .line 414
    if-eqz p2, :cond_4

    .line 415
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->hide()V

    goto :goto_1

    .line 417
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->show()V

    goto :goto_1
.end method

.method public resetFilterStack()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->resetFilterStack()V

    .line 293
    return-void
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->resetLayout()V

    .line 433
    return-void
.end method

.method public resetPhotoEditActionBarLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V
    .locals 3
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "isCanSlidShow"    # Z

    .prologue
    .line 357
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------resetPhotoEditActionBarLayout------------getCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->resetPopupWindow()V

    .line 360
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getCurrentOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 361
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1111111111111111, isCanSlidShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->removePhotoEditorActionBar()V

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->reset(Lcom/lenovo/scg/gallery3d/data/MediaItem;ZZ)V

    .line 369
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2222222222222222, isCanSlidShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->removePhotoEditorActionBar()V

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->reset(Lcom/lenovo/scg/gallery3d/data/MediaItem;ZZ)V

    goto :goto_0
.end method

.method public resetToFullViewAnimation()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->resetToFullViewAnimation()V

    .line 238
    return-void
.end method

.method public rotatePhoto(Z)V
    .locals 1
    .param p1, "isLeft"    # Z

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->hidePhotoEditMoreLayout()V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->rotatePhoto(Z)V

    .line 253
    return-void
.end method

.method public setEditState(Z)V
    .locals 0
    .param p1, "isEditState"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 112
    return-void
.end method

.method public setMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 1
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->updateViews()V

    .line 126
    :cond_0
    return-void
.end method

.method public setPortrait()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->setPortrait()V

    .line 215
    return-void
.end method

.method public setScreenFullSensor()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->setScreenFullSensor()V

    .line 227
    return-void
.end method

.method public setas()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->setas()V

    .line 257
    return-void
.end method

.method public showConfigExitEditDialog()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->showConfigExitEditDialog()V

    .line 277
    return-void
.end method

.method public showDetails()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->showDetails()V

    .line 265
    return-void
.end method

.method public showEditBar()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getCurrentOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsFakeHorizontal:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->resetLayout()V

    .line 59
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hide()V

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->show()V

    .line 62
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getCurrentOrientation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsFakeHorizontal:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->resetLayout()V

    goto :goto_0
.end method

.method public showPhotoEditMoreLayout()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->show()V

    .line 100
    return-void
.end method

.method public showSourceImageView(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canScale"    # Z

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSourceImageView(Landroid/graphics/Bitmap;Z)V

    .line 346
    return-void
.end method

.method public showUndoRedoFrame()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->show()V

    .line 79
    return-void
.end method

.method public slideShow()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->slideShow()V

    .line 261
    return-void
.end method

.method public startBeautyActivity()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->startBeautyActivity()V

    .line 83
    return-void
.end method

.method public startEditBarInAnim()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startEditBarInAnimation()V

    .line 334
    return-void
.end method

.method public startEditTopViewsInAnim()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->startTopsViewInAnim()V

    .line 330
    return-void
.end method

.method public startEffectViewsInAnim()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startEffectViewsInAnim()V

    .line 326
    return-void
.end method

.method public startMosaicActivity()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->startMosaicActivity()V

    .line 96
    return-void
.end method

.method public startOutEditStateAnimation()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startEffectsViewsOutAnim()V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startUndoRedoViewOutAnim()V

    .line 315
    return-void
.end method

.method public startSpecialEffectsActivity()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->startSpecialEffectsActivity()V

    .line 87
    return-void
.end method

.method public startTiltShiftActivity()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->startTiltShiftActivity()V

    .line 91
    return-void
.end method

.method public startUndoRedoViewsInAnim()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->startUndoRedoViewsInAnim()V

    .line 309
    return-void
.end method

.method public startZoomInAnimation()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "startZoomInAnimation-----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mIsEditState:Z

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->startZoomInAnimation()V

    .line 233
    return-void
.end method

.method public unLockOrientation()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->unLockOrientation()V

    .line 219
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mController:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->undo()V

    .line 269
    return-void
.end method

.method public updatePhotoEditMoreLayoutVisible()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoEditMoreLayout:Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateMoreItemsVisible()V

    .line 116
    return-void
.end method

.method public updateUndoRedoViews()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->mPhotoUndoRedoFrame:Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->updateUndoRedoViews()V

    .line 342
    return-void
.end method
