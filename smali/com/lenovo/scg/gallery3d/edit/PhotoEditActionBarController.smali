.class public Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;
.super Ljava/lang/Object;
.source "PhotoEditActionBarController.java"


# static fields
.field public static FILTERSTACKINDEX:Ljava/lang/String; = null

.field public static final PHOTO_PATH:Ljava/lang/String; = "PHOTO_PATH"

.field private static final REQUEST_BEAUTY:I = 0x7

.field private static final REQUEST_MOSAIC:I = 0xd

.field private static final REQUEST_SPECIALEFFECTS:I = 0x6


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mContext:Landroid/content/Context;

.field private mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

.field private mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "filterStackIndex"

    sput-object v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;
    .param p3, "photoPage"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    .line 55
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 56
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 58
    return-void
.end method

.method private isTooSmall(III)Z
    .locals 7
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeight"    # I
    .param p3, "minValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 297
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v3

    .line 300
    :cond_1
    const/16 v1, 0x5a0

    .line 301
    .local v1, "maxSpecialWidth":I
    const/16 v0, 0x438

    .line 302
    .local v0, "maxSpecialHeight":I
    int-to-float v4, v1

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 303
    .local v2, "scale":F
    int-to-float v4, v0

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 304
    int-to-float v4, p1

    mul-float/2addr v4, v2

    int-to-float v5, p3

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    int-to-float v4, p2

    mul-float/2addr v4, v2

    int-to-float v5, p3

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    .line 307
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showImageTooSmallDialog()V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0858

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    const v1, 0x7f0f0653

    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 320
    return-void
.end method


# virtual methods
.method public crop()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->crop()V

    .line 258
    return-void
.end method

.method public deletePhoto()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->deletePhoto()V

    .line 254
    return-void
.end method

.method public getActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    return-object v0
.end method

.method public getBrushName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getBrushName(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentOrientation()I

    move-result v0

    return v0
.end method

.method public getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPhotoUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->getFirstPhotoPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->goBack()V

    .line 294
    return-void
.end method

.method public isAutoRotate()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getPhotoViewAutoScreenRotated()Z

    move-result v0

    return v0
.end method

.method public isCameraBrustPhoto()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method public isCanSlidShow()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCanSlidShow()Z

    move-result v0

    return v0
.end method

.method public isDoingEdit()Z
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 197
    .local v0, "application":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    const-string v1, "WDY:AllEffectsBar"

    const-string v2, "isDoingEdit : false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "WDY:AllEffectsBar"

    const-string/jumbo v2, "setDoingEdit(true)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDoingEdit(Z)V

    .line 200
    const-string v1, "WDY:AllEffectsBar"

    const-string v2, "isDoingEdit : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    return v1
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

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

.method public isRedoCanClicked()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isRedoCanClicked()Z

    move-result v0

    return v0
.end method

.method public isSpeechPic()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isSpeechPic(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method public isStartFromCamera()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v0

    return v0
.end method

.method public isStartFromCameraOrContinuePics()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    return v0
.end method

.method public isUndoCanClicked()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->isUndoCanClicked()Z

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->lockOrientation()V

    .line 217
    return-void
.end method

.method public mIsStartFromCamera()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v0

    return v0
.end method

.method public redo()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->redo()V

    .line 286
    return-void
.end method

.method public resetFilterStack()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->resetFilterStack()V

    .line 82
    return-void
.end method

.method public resetLayout()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetPhotoEditActionBarLayout()V

    .line 278
    return-void
.end method

.method public resetToFullViewAnimation()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetToFullViewAnimation()V

    .line 238
    return-void
.end method

.method public rotatePhoto(Z)V
    .locals 1
    .param p1, "isLeft"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->RotatePhoto(Z)V

    .line 290
    return-void
.end method

.method public setPortrait()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 210
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "setPortrait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 213
    :cond_0
    return-void
.end method

.method public setScreenFullSensor()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 225
    return-void
.end method

.method public setas()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setas()V

    .line 262
    return-void
.end method

.method public showConfigExitEditDialog()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDialog()V

    .line 70
    return-void
.end method

.method public showDetails()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDetails()V

    .line 270
    return-void
.end method

.method public slideShow()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->slideShow()V

    .line 266
    return-void
.end method

.method public startBeautyActivity()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "PHOTO_PATH"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method

.method public startMosaicActivity()V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "dongyu"

    const-string v2, "mManager.getCurrentFilterStackBitmap() = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "PHOTO_PATH"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method public startSpecialEffectsActivity()V
    .locals 8

    .prologue
    .line 105
    const-string v5, "jiaxiaowei"

    const-string/jumbo v6, "startSpecialEffectsActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 114
    .local v3, "minSpecialEffectValue":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPhotoWidth()I

    move-result v4

    .line 115
    .local v4, "width":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPhotoHeight()I

    move-result v0

    .line 116
    .local v0, "height":I
    invoke-direct {p0, v4, v0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isTooSmall(III)Z

    move-result v2

    .line 117
    .local v2, "isTooSmall":Z
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------------width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-le v4, v3, :cond_0

    if-le v0, v3, :cond_0

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->showImageTooSmallDialog()V

    .line 134
    .end local v0    # "height":I
    .end local v2    # "isTooSmall":Z
    .end local v3    # "minSpecialEffectValue":I
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 125
    :cond_1
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v5, :cond_2

    .line 127
    sget-object v5, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackIndex()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_2

    .line 129
    const-string v5, "PHOTO_PATH"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v6, 0x6

    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startTiltShiftActivity()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->getCurrentFilterStackBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    const-string v1, "PHOTO_PATH"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method

.method public startZoomInAnimation()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "startZoomInAnimation----------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->isAutoRotate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->startZoomInAnimation()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->startZoomInAnimationDelay(I)V

    goto :goto_0
.end method

.method public unLockOrientation()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->unlockOrientation()V

    .line 221
    return-void
.end method

.method public undo()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mManager:Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStackManager;->undo()V

    .line 282
    return-void
.end method

.method public updatePhotoPage(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p1, "page"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->mPhotoPage:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 62
    return-void
.end method
