.class public Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;
.super Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;
.source "MiniCameraQRandBarCodeMode.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;
.implements Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController;
.implements Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;


# static fields
.field private static final INTENT_REQUESTCODE_PHOTO_PICKED_WITH_DATA:I = 0x3e9

.field private static final INTENT_REQUESTCODE_SELECT_PICTURE:I = 0x3e8

.field private static final SELECT_PICTURE_INTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final TAG:Ljava/lang/String; = "MiniCameraQRandBarCodeMode"

.field private static final TEMP_NAME:Ljava/lang/String; = "code_temp_img.jpg"


# instance fields
.field private mIssetPreviewcallback:Z

.field private mPhotoFilePath:Ljava/lang/String;

.field private mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

.field private mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

.field private mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;-><init>()V

    return-void
.end method

.method private doCropPhoto(Landroid/net/Uri;)V
    .locals 6
    .param p1, "filepath"    # Landroid/net/Uri;

    .prologue
    .line 240
    :try_start_0
    const-string v3, "code_temp_img.jpg"

    invoke-static {v3}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mPhotoFilePath:Ljava/lang/String;

    .line 241
    const-string v3, "MiniCameraQRandBarCodeMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCropPhoto, croppedPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mPhotoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mPhotoFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->intentForSCGCropImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 245
    .local v2, "intent":Landroid/content/Intent;
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "MiniCameraQRandBarCodeMode"

    const-string v4, "ActivityNotFoundException, Cannot start SCG crop image!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mPhotoFilePath:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->intentForCropImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 252
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v3

    const/16 v4, 0x3e9

    invoke-virtual {v3, v2, v4}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 254
    .local v1, "exception":Ljava/lang/Exception;
    const-string v3, "MiniCameraQRandBarCodeMode"

    const-string v4, "Cannot common crop image, exception = "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleQRandBarPicture(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->handlePicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initAlipayEngine()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    .line 99
    :cond_0
    return-void
.end method

.method private intentForCropImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "inputPhotoPath"    # Landroid/net/Uri;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 268
    return-object v1
.end method

.method private intentForGallery()V
    .locals 5

    .prologue
    .line 285
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :try_start_0
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MiniCameraQRandBarCodeMode"

    const-string v3, "ActivityNotFoundException, Cannot start common pick image!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    const v3, 0x7f0f09ee

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private intentForInputBarcodeNumber()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method private intentForSCG()V
    .locals 4

    .prologue
    .line 298
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.scg.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :try_start_0
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MiniCameraQRandBarCodeMode"

    const-string v3, "ActivityNotFoundException, Cannot start SCG pick image!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->intentForGallery()V

    goto :goto_0
.end method

.method private intentForSCGCropImage(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "inputPhotoPath"    # Landroid/net/Uri;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lenovo.intent.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 277
    return-object v1
.end method

.method private openCameraCommon()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getCameraConfigManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->onCameraOpened(Landroid/hardware/Camera$Parameters;)V

    .line 321
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->showTapToFocusToastIfNeeded()V

    .line 323
    new-instance v0, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;

    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, "le":Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;
    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/setting/LightnessExecuter;->excuteUpdateScreenBrightness()V

    .line 325
    return-void
.end method

.method private setScanMode()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_2

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_1

    .line 418
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = QR, mQRandBarCodeEngine = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_4

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_3

    .line 426
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = QR, mQRandBarCodeEngine = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_6

    .line 432
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = BOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_5

    .line 434
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = BOOK, mQRandBarCodeEngine = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0

    .line 439
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_8

    .line 440
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = CD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_7

    .line 442
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = CD, mQRandBarCodeEngine = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0

    .line 447
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    sget-object v1, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_0

    .line 448
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = OCRTRANS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-nez v0, :cond_9

    .line 450
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "setScanMode, mode = OCRTRANS, mQRandBarCodeEngine = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto/16 :goto_0
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->isFocusAreaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    :cond_0
    return-void
.end method

.method private unInitAlipayEngine()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public changeMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateScanModeView(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 166
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finishActivity()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->finish()V

    .line 203
    return-void
.end method

.method public getCameraPreviewPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->getCameraConfigManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->getCameraPreviewPointResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public handleCodeNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string v1, "handleExpress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->intentForInputBarcodeNumber()V

    .line 176
    return-void
.end method

.method public handleNormal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 499
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mIssetPreviewcallback:Z

    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setIfsenddatatoetao(Z)V

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->startScan()V

    .line 502
    return-void
.end method

.method public handleNotsetpreviewcallback()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mIssetPreviewcallback:Z

    .line 488
    return-void
.end method

.method public handleOnlysetpreviewcallback()V
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mIssetPreviewcallback:Z

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->setIfsenddatatoetao(Z)V

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->startScan()V

    .line 495
    return-void
.end method

.method public handleSelectPicture()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string v1, "handlePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->intentForSCG()V

    .line 187
    return-void
.end method

.method public init(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .param p2, "frame"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->init(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;)V

    .line 71
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 73
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-direct {v0, p1, p0, p0, p2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;-><init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mIssetPreviewcallback:Z

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestcode"    # I
    .param p2, "resultcode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 506
    const-string v2, "MiniCameraQRandBarCodeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult, requestcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sparse-switch p1, :sswitch_data_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 511
    :sswitch_0
    if-ne p2, v5, :cond_0

    .line 515
    const-string v2, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v3, "onActivityResult, requestcode=INTENT_REQUESTCODE_SELECT_PICTURE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setCameraDisabled(Z)V

    .line 518
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 519
    .local v0, "path":Landroid/net/Uri;
    const-string v2, "MiniCameraQRandBarCodeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->doCropPhoto(Landroid/net/Uri;)V

    goto :goto_0

    .line 526
    .end local v0    # "path":Landroid/net/Uri;
    :sswitch_1
    const-string v2, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v3, "onActivityResult, requestcode=INTENT_REQUESTCODE_PHOTO_PICKED_WITH_DATA!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setCameraDisabled(Z)V

    .line 530
    if-ne p2, v5, :cond_0

    .line 533
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mPhotoFilePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->handleQRandBarPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :sswitch_2
    const/4 v1, -0x1

    .line 539
    .local v1, "resId":I
    if-ne p2, v5, :cond_1

    .line 540
    const v1, 0x7f0f09f8

    .line 544
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    move-result-object v2

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 542
    :cond_1
    const v1, 0x7f0f09f9

    goto :goto_1

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x79f4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpened()V
    .locals 4

    .prologue
    .line 339
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 342
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 343
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 345
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getFocusManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->setPreviewSize(II)V

    .line 348
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->openCameraCommon()V

    .line 350
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v3}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->onCameraOpenedEngine()V

    .line 353
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->isFocusAreaSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->isMeteringAreaSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getFocusManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStatusBackGroundColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->setStatusBackgroundColor(I)V

    .line 143
    return-void
.end method

.method public onStatusHintChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->setStatusHint(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "MiniCameraQRandBarCodeMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceCreated, mUI.getSurfaceHoler() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getSurfaceHoler()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->getSurfaceHoler()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->initCameraAndStartPreview()V

    .line 88
    return-void
.end method

.method public onSurfaceDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->stopPreview()V

    .line 93
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->onZoomChanged(I)I

    move-result v0

    return v0
.end method

.method public playDecodeSuccessLockRectAnim(Lcom/etao/kaka/decode/DecodeResult;)V
    .locals 2
    .param p1, "result"    # Lcom/etao/kaka/decode/DecodeResult;

    .prologue
    .line 219
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "playDecodeSuccessLockRectAnim."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->lockTargetArea(Lcom/etao/kaka/decode/DecodeResult;)V

    .line 221
    return-void
.end method

.method public playDecodeSuccessSound()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "playDecodeSuccessSound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public playScanningAnim()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "playScanningAnim."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->startScanningLineQRAnimation()V

    .line 227
    return-void
.end method

.method public setExtrasByIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 461
    const-string v5, "bm"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 462
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 464
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 465
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    mul-int v2, v5, v3

    .line 466
    .local v2, "count":I
    const-string/jumbo v5, "panhui1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setExtrasByIntent, bm != null, w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v5, v1}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->handleBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    .end local v2    # "count":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "action":Ljava/lang/String;
    const-string v5, "MiniCameraQRandBarCodeMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setExtrasByIntent, bm == null, action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v5, "com.lenovo.scg.minicamera.barcode.start"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 477
    sget-object v5, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 482
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->updateScanModeView(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0

    .line 479
    :cond_1
    sget-object v5, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_1
.end method

.method public setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 410
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setScanMode()V

    .line 411
    return-void
.end method

.method public setTorch(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/mode/MiniCameraAbstractCameraMode;->setTorch(Z)V

    .line 405
    return-void
.end method

.method public startScan()V
    .locals 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->initAlipayEngine()V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->setScanMode()V

    .line 130
    const-string v0, "MiniCameraQRandBarCodeMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScan, mQRandBarCodeEngine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mQRandBarCodeEngine:Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;->startScan()V

    .line 133
    return-void
.end method

.method public stopScanningAnim()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "MiniCameraQRandBarCodeMode"

    const-string/jumbo v1, "stopScanningAnim."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->stopScanningLineQRAnimation(Z)V

    .line 233
    return-void
.end method

.method public updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;
    .param p2, "reset"    # Z

    .prologue
    .line 147
    const-string v1, "MiniCameraQRandBarCodeMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreview, callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mUI:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz p2, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->updatePreviewDisplayHolder()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->mIssetPreviewcallback:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getCallbackManager()Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;->getCallbackManager()Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;->setCallbackBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 160
    :cond_1
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
