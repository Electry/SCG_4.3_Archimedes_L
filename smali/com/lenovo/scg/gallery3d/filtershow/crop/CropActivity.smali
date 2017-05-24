.class public Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
.super Landroid/app/Activity;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;,
        Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final DO_EXTRA_OUTPUT:I = 0x4

.field private static final DO_RETURN_DATA:I = 0x2

.field private static final DO_SET_WALLPAPER:I = 0x1

.field private static final FLAG_CHECK:I = 0x7

.field private static final LOGTAG:Ljava/lang/String; = "CropActivity"

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field private static final SELECT_PICTURE:I = 0x1


# instance fields
.field private finalIOGuard:Z

.field private mCancel:Landroid/widget/ImageButton;

.field private mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

.field private mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

.field private mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/RectF;

.field private mOriginalRotation:I

.field private mOutputX:I

.field private mOutputY:I

.field private mSave:Landroid/widget/ImageButton;

.field private mSaveButton:Landroid/view/View;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    .line 84
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    .line 86
    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    .line 88
    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    .line 90
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 92
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 94
    iput v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    .line 96
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 98
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    .line 100
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    .line 102
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    .line 472
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startFinishOutput()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 76
    iget v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->updateFileSize(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;ZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->doneBitmapIO(ZLandroid/content/Intent;)V

    return-void
.end method

.method private cannotLoadImage()V
    .locals 3

    .prologue
    .line 312
    const v2, 0x7f0f044c

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 314
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 315
    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 892
    const-string/jumbo v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private done()V
    .locals 0

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->finish()V

    .line 841
    return-void
.end method

.method private doneBitmapIO(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 453
    const v1, 0x7f1003fc

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "loading":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 460
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->done()V

    .line 461
    return-void

    .line 458
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    .line 273
    const v6, 0x7f1003fc

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 274
    .local v3, "loading":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 276
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 277
    iput p3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    .line 278
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 279
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    .local v2, "imgBounds":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v6, p1, v2, v2, p3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 281
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    if-eqz v6, :cond_2

    .line 282
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getAspectX()I

    move-result v0

    .line 283
    .local v0, "aspectX":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getAspectY()I

    move-result v1

    .line 284
    .local v1, "aspectY":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getOutputX()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    .line 285
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getOutputY()I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    .line 286
    iget v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    if-lez v6, :cond_0

    .line 287
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 290
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getSpotlightX()F

    move-result v4

    .line 291
    .local v4, "spotX":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getSpotlightY()F

    move-result v5

    .line 292
    .local v5, "spotY":F
    cmpl-float v6, v4, v9

    if-lez v6, :cond_1

    cmpl-float v6, v5, v9

    if-lez v6, :cond_1

    .line 293
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v6, v4, v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->setWallpaperSpotlight(FF)V

    .line 295
    :cond_1
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 296
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 299
    .end local v0    # "aspectX":I
    .end local v1    # "aspectY":I
    .end local v4    # "spotX":F
    .end local v5    # "spotY":F
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 306
    .end local v2    # "imgBounds":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 301
    :cond_3
    const-string v6, "CropActivity"

    const-string v7, "could not load image for cropping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->cannotLoadImage()V

    .line 303
    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->done()V

    goto :goto_0
.end method

.method private enableSave(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method private getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "imageBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 903
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v0

    .line 904
    .local v0, "crop":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->getPhoto()Landroid/graphics/RectF;

    move-result-object v1

    .line 905
    .local v1, "photo":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 906
    :cond_0
    const-string v3, "CropActivity"

    const-string v4, "could not get crop"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v2, 0x0

    .line 910
    :goto_0
    return-object v2

    .line 909
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 910
    .local v2, "scaledCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method protected static getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "photoBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 844
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 845
    .local v1, "imageBounds":Landroid/graphics/RectF;
    invoke-static {p1, p2, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 846
    .local v0, "crop":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 847
    const/4 v3, 0x0

    .line 851
    :goto_0
    return-object v3

    .line 849
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 850
    .local v2, "intCrop":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 851
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "max_size"    # I

    .prologue
    const/4 v5, 0x1

    .line 855
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    if-ge p1, v3, :cond_1

    .line 856
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad argument to getDownsampledBitmap()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    :cond_1
    const/4 v1, 0x0

    .line 859
    .local v1, "shifts":I
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 860
    .local v2, "size":I
    :goto_0
    if-le v2, p1, :cond_2

    .line 861
    add-int/lit8 v1, v1, 0x1

    .line 862
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 864
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/2addr v4, v1

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 865
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 866
    const/4 v0, 0x0

    .line 872
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0

    .line 869
    .restart local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    if-le v3, p1, :cond_3

    .line 870
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected static getExtrasFromIntent(Landroid/content/Intent;)Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 879
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 880
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 881
    new-instance v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    const-string/jumbo v1, "outputX"

    invoke-virtual {v13, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "outputY"

    invoke-virtual {v13, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "scale"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "scaleUpIfNeeded"

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    const-string v4, "aspectX"

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "aspectY"

    invoke-virtual {v13, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "set-as-wallpaper"

    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "return-data"

    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "output"

    invoke-virtual {v13, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    const-string/jumbo v9, "outputFormat"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "showWhenLocked"

    invoke-virtual {v13, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v11, "spotlightX"

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    const-string/jumbo v12, "spotlightY"

    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    .line 888
    :goto_1
    return-object v0

    :cond_0
    move v3, v10

    .line 881
    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 896
    if-nez p0, :cond_1

    const-string v0, "jpg"

    .line 897
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 896
    goto :goto_0

    .line 898
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method private getScreenImageSize()I
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 249
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 250
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static isNewGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 469
    const-string v0, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pickImage()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const v1, 0x7f0f0658

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 419
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 429
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 430
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 431
    return-void
.end method

.method private startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 13
    .param p1, "flags"    # I
    .param p2, "currentBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sourceUri"    # Landroid/net/Uri;
    .param p4, "destUri"    # Landroid/net/Uri;
    .param p5, "cropBounds"    # Landroid/graphics/RectF;
    .param p6, "photoBounds"    # Landroid/graphics/RectF;
    .param p7, "currentBitmapBounds"    # Landroid/graphics/RectF;
    .param p8, "format"    # Ljava/lang/String;
    .param p9, "rotation"    # I

    .prologue
    .line 435
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_0

    .line 442
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 443
    const v1, 0x7f0f044e

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 446
    :cond_2
    const v1, 0x7f1003fc

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 447
    .local v12, "loading":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    new-instance v0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;-><init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V

    .line 449
    .local v0, "ioTask":Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startFinishOutput()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    .line 372
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, "destinationUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 375
    .local v1, "flags":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_1

    .line 379
    or-int/lit8 v1, v1, 0x4

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getSetAsWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    or-int/lit8 v1, v1, 0x1

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getReturnData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    or-int/lit8 v1, v1, 0x2

    .line 389
    :cond_3
    if-nez v1, :cond_4

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_4

    .line 392
    or-int/lit8 v1, v1, 0x4

    .line 397
    :cond_4
    if-nez v4, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->isSourceFileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->showOriginalImageIsDeletedDialog()V

    goto :goto_0

    .line 403
    :cond_5
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 404
    new-instance v6, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v6, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 405
    .local v6, "photo":Landroid/graphics/RectF;
    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 406
    .local v5, "crop":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    if-nez v0, :cond_6

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getOutputFormat()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 410
    .end local v5    # "crop":Landroid/graphics/RectF;
    .end local v6    # "photo":Landroid/graphics/RectF;
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->done()V

    goto/16 :goto_0
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 259
    const v1, 0x7f1003fc

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "loading":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    new-instance v1, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;-><init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    .end local v0    # "loading":Landroid/view/View;
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->cannotLoadImage()V

    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->done()V

    goto :goto_0
.end method

.method private updateFileSize(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 805
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 806
    .local v2, "FILE_NAME":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 807
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 809
    .local v9, "filename":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 810
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 817
    :cond_0
    if-eqz v6, :cond_1

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 822
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    .local v8, "file":Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 825
    .local v10, "fis":Ljava/io/FileInputStream;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 826
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_size"

    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v11, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 836
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 817
    if-eqz v6, :cond_1

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 817
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 828
    .restart local v8    # "file":Ljava/io/File;
    :catch_1
    move-exception v7

    .line 830
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 831
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 833
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 238
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;->configChanged()V

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v8, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 138
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 139
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v8, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 140
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getExtrasFromIntent(Landroid/content/Intent;)Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    .line 141
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropExtras;->getShowWhenLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 145
    :cond_0
    const v6, 0x7f040099

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setContentView(I)V

    .line 146
    const v6, 0x7f1003fb

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropView;

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 149
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 150
    const v6, 0x7f0400c7

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 161
    const v6, 0x7f100518

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCancel:Landroid/widget/ImageButton;

    .line 162
    const v6, 0x7f100519

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSave:Landroid/widget/ImageButton;

    .line 163
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mCancel:Landroid/widget/ImageButton;

    new-instance v7, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$1;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSave:Landroid/widget/ImageButton;

    new-instance v7, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$2;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 180
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 181
    const-string v6, "com.android.providers.media.documents"

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "docId":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "split":[Ljava/lang/String;
    aget-object v5, v4, v8

    .line 185
    .local v5, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "contentUri":Landroid/net/Uri;
    const-string v6, "image"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 187
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 193
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 196
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "docId":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 200
    :goto_1
    return-void

    .line 188
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "docId":Ljava/lang/String;
    .restart local v4    # "split":[Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 189
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 190
    :cond_4
    const-string v6, "audio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 198
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "docId":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->pickImage()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->cancel(Z)Z

    .line 213
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    return-void
.end method
