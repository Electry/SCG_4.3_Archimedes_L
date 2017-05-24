.class public Lcom/lenovo/scg/camera/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.scg"

.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field public static final BACK_CAMERA:I = 0x0

.field public static final BACK_CAMERA_KEY:I = 0x1

.field public static CameraId:I = 0x0

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static FOCUSMODE:Ljava/lang/String; = null

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FRONT_BACK_CAMERA_KEY:I = 0x2

.field public static final FRONT_CAMERA:I = 0x1

.field public static final FRONT_CAMERA_KEY:I = 0x0

.field public static final NON_NORMAL:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static RATIO_4_3_DEFAULT_TRANS_Y:F = 0.0f

.field public static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field public static isEffectChange:Z

.field public static isEnableSound:Z

.field public static isSupportedAudio:Z

.field public static isUnClickAble:Z

.field public static isUnableFlash:Z

.field public static final mIsBackToModePreview:Z

.field public static mIsCMCC:Z

.field public static mIsModeButton:Z

.field public static mIsZSDSupport:Z

.field public static mScreenHeight:I

.field public static mScreenWidth:I

.field private static sImageFileNamer:Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;

.field private static sLocation:[I

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    sput v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 119
    sput v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .line 139
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/CameraUtil;->FOCUSMODE:Ljava/lang/String;

    .line 145
    sput-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->isEnableSound:Z

    .line 149
    sput-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    .line 153
    sput-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsZSDSupport:Z

    .line 155
    sput-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/lenovo/scg/camera/CameraUtil;->sPixelDensity:F

    .line 661
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 356
    if-nez p0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.scg.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 429
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 453
    if-le p0, p2, :cond_0

    .line 455
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 454
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 455
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 347
    if-nez p0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    .line 306
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 307
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 309
    .local v0, "h":D
    if-gez p2, :cond_1

    move v2, v6

    .line 310
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 312
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 322
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 309
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 310
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 317
    .restart local v3    # "upperBound":I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 318
    goto :goto_2

    .line 319
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 322
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 290
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/camera/CameraUtil;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 293
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 294
    const/4 v1, 0x1

    .line 295
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 296
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 302
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 735
    sget-object v1, Lcom/lenovo/scg/camera/CameraUtil;->sImageFileNamer:Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;

    monitor-enter v1

    .line 736
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/CameraUtil;->sImageFileNamer:Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 447
    sub-float v0, p0, p2

    .line 448
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 449
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 221
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "flattened":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 713
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void
.end method

.method public static enableScroll(Z)V
    .locals 1
    .param p0, "bEnable"    # Z

    .prologue
    .line 1057
    if-eqz p0, :cond_0

    .line 1058
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    .line 1062
    :goto_0
    return-void

    .line 1060
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 433
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static exclude(I[I)Z
    .locals 6
    .param p0, "id"    # I
    .param p1, "exclude"    # [I

    .prologue
    const/4 v4, 0x0

    .line 774
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v4

    .line 777
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 778
    .local v1, "i":I
    if-ne v1, p0, :cond_2

    .line 779
    const/4 v4, 0x1

    goto :goto_0

    .line 777
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 786
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x190

    invoke-static {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;FFJ)V

    .line 789
    if-eqz p0, :cond_0

    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 792
    :cond_0
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startAlpha"    # F
    .param p2, "endAlpha"    # F
    .param p3, "duration"    # J

    .prologue
    .line 747
    if-nez p0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 756
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 757
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 759
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 760
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 761
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 795
    if-nez p0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 801
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 805
    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 806
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 809
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 810
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 811
    new-instance v1, Lcom/lenovo/scg/camera/CameraUtil$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/CameraUtil$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 831
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 633
    const/4 v1, -0x1

    .line 635
    .local v1, "cameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 637
    .local v3, "intentCameraId":I
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 640
    .local v2, "frontCameraId":I
    if-eq v2, v6, :cond_0

    .line 641
    move v1, v2

    .line 650
    .end local v2    # "frontCameraId":I
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 646
    .local v0, "backCameraId":I
    if-eq v0, v6, :cond_0

    .line 647
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 493
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 494
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 495
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getCloseBattery(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1073
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1074
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1075
    .local v0, "mCloseBattery":I
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCloseBattery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return v0
.end method

.method public static getDangerBattery(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1068
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1069
    .local v0, "mDangerBattery":I
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDangerBattery : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return v0
.end method

.method private static getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "size"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 517
    .local v0, "d":Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 518
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 522
    :goto_0
    return-object p1

    .line 520
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->sPixelDensity:F

    return v0
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .prologue
    .line 480
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 481
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 483
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 484
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 485
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 489
    :goto_0
    return v1

    .line 487
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 464
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 474
    :goto_0
    :pswitch_0
    return v1

    .line 468
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 470
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 472
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFillInLightFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 921
    const-string/jumbo v1, "super_camera"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 922
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "fillinlight"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getFlashUseAbleLevel(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1080
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1081
    .local v0, "mFlashUseAbleLevel":I
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFlashUseAbleLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return v0
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .prologue
    .line 838
    const/4 v1, 0x0

    .line 839
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 840
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 841
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 842
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 847
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 844
    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 18
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p2, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f8cac083126e979L    # 0.014

    .line 529
    .local v2, "ASPECT_TOLERANCE":D
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 562
    :cond_0
    return-object v5

    .line 531
    :cond_1
    const/4 v5, 0x0

    .line 532
    .local v5, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 539
    .local v6, "minDiff":D
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/lenovo/scg/camera/CameraUtil;->getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 540
    .local v8, "point":Landroid/graphics/Point;
    iget v13, v8, Landroid/graphics/Point;->x:I

    iget v14, v8, Landroid/graphics/Point;->y:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 542
    .local v12, "targetHeight":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 543
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v14, v13

    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 544
    .local v10, "ratio":D
    sub-double v14, v10, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f8cac083126e979L    # 0.014

    cmpl-double v13, v14, v16

    if-gtz v13, :cond_2

    .line 545
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v14, v13

    cmpg-double v13, v14, v6

    if-gez v13, :cond_2

    .line 546
    move-object v5, v9

    .line 547
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v6, v13

    goto :goto_0

    .line 552
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    .end local v10    # "ratio":D
    :cond_3
    if-nez v5, :cond_0

    .line 553
    const-string v13, "Util"

    const-string v14, "No preview size match the aspect ratio"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 555
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 556
    .restart local v9    # "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v14, v13

    cmpg-double v13, v14, v6

    if-gez v13, :cond_4

    .line 557
    move-object v5, v9

    .line 558
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v6, v13

    goto :goto_1
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 13
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 569
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 592
    :cond_0
    return-object v3

    .line 571
    :cond_1
    const/4 v3, 0x0

    .line 574
    .local v3, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 575
    .local v6, "size":Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v7

    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 576
    .local v4, "ratio":D
    sub-double v8, v4, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v7, v8, v10

    if-gtz v7, :cond_2

    .line 577
    if-eqz v3, :cond_3

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 578
    :cond_3
    move-object v3, v6

    goto :goto_0

    .line 584
    .end local v4    # "ratio":D
    .end local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 585
    const-string v7, "Util"

    const-string v8, "No picture size match the aspect ratio"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 587
    .restart local v6    # "size":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_5

    .line 588
    :cond_6
    move-object v3, v6

    goto :goto_1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 671
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v0, v2, v4

    .line 672
    .local v0, "referenceX":I
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v1, v2, v5

    .line 673
    .local v1, "referenceY":I
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 674
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 675
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 676
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    return-object v2
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 210
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 211
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 212
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/lenovo/scg/camera/CameraUtil;->sPixelDensity:F

    .line 214
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 215
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .line 217
    new-instance v2, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;

    const v3, 0x7f0f0548

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sImageFileNamer:Lcom/lenovo/scg/camera/CameraUtil$ImageFileNamer;

    .line 218
    return-void
.end method

.method public static isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 166
    const-string/jumbo v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 170
    const-string/jumbo v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    .line 658
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "hdr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChineseLanguage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1087
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    const/4 v0, 0x1

    .line 1090
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 195
    :cond_0
    return v0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 654
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 184
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 187
    :cond_0
    return v0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 609
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 610
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    .line 628
    :goto_0
    return v5

    .line 615
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-array v1, v5, [Ljava/lang/Class;

    .line 616
    .local v1, "partypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v6, "isVoiceCapable"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 618
    .local v3, "sIsVoiceCapable":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 619
    .local v0, "arglist":[Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 620
    .local v2, "retobj":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "retobj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 627
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v1    # "partypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "sIsVoiceCapable":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 628
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 624
    :catch_1
    move-exception v5

    goto :goto_1

    .line 621
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 162
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 680
    if-nez p0, :cond_0

    .line 692
    :goto_0
    return v2

    .line 683
    :cond_0
    :try_start_0
    const-string/jumbo v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 684
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 685
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 690
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 688
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 174
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 328
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 331
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 342
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 334
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/lenovo/scg/camera/CameraUtil;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 335
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 337
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 338
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 339
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 340
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 12
    .param p0, "milliSeconds"    # J
    .param p2, "displayHours"    # Z

    .prologue
    .line 947
    const-wide/16 v10, 0x3e8

    div-long v6, p0, v10

    .line 948
    .local v6, "seconds":J
    const-wide/16 v10, 0x3c

    div-long v0, v6, v10

    .line 951
    .local v0, "minutes":J
    move-wide v2, v0

    .line 952
    .local v2, "remainderMinutes":J
    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v0

    sub-long v4, v6, v10

    .line 954
    .local v4, "remainderSeconds":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v8, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v10, 0xa

    cmp-long v9, v2, v10

    if-gez v9, :cond_0

    .line 972
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    :cond_0
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 975
    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

    .line 979
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 981
    :cond_1
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static mirror([BIII)[B
    .locals 7
    .param p0, "src"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 997
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;-><init>()V

    .line 998
    .local v0, "pTrans":Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Init()Z

    .line 999
    const/4 v6, 0x0

    .line 1000
    .local v6, "dst":[B
    sparse-switch p3, :sswitch_data_0

    .line 1013
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Finish()V

    .line 1014
    return-object v6

    .line 1003
    :sswitch_0
    array-length v4, p0

    sget-object v5, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_V:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TransformJpegToJpeg([BIIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    move-result-object v6

    .line 1004
    goto :goto_0

    .line 1007
    :sswitch_1
    array-length v4, p0

    sget-object v5, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_FLIP_H:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TransformJpegToJpeg([BIIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    move-result-object v6

    .line 1008
    goto :goto_0

    .line 1000
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 437
    add-int/lit8 p0, p0, -0x1

    .line 438
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 439
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 440
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 441
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 442
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 443
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/camera/CameraHardwareException;,
            Lcom/lenovo/scg/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraUtil;->throwIfCameraDisabled(Landroid/app/Activity;)V

    .line 376
    :try_start_0
    const-string/jumbo v2, "open camera, id = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/CameraHolder;->open(I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v1

    .line 380
    .local v1, "proxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    const-string/jumbo v2, "open camera end, id = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    return-object v1

    .line 384
    .end local v1    # "proxy":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "openCamera failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 390
    :cond_0
    throw v0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 665
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 666
    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/CameraUtil;->sLocation:[I

    aget v2, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I

    .prologue
    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 725
    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 727
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 730
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 731
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 732
    return-void

    :cond_0
    move v0, v1

    .line 725
    goto :goto_0
.end method

.method public static printStackTrace(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 934
    const-string v0, "Util"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 717
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 718
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 719
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 720
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 721
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotate([BIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B
    .locals 7
    .param p0, "src"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    .prologue
    .line 1029
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;-><init>()V

    .line 1030
    .local v0, "pTrans":Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Init()Z

    .line 1031
    array-length v4, p0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->TransformJpegToJpeg([BIIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    move-result-object v6

    .line 1032
    .local v6, "dst":[B
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer;->Finish()V

    .line 1033
    return-object v6
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 237
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 238
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 241
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 242
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 243
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 244
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 252
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 254
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 258
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 259
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 260
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    move-object p0, v7

    .line 267
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 246
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 247
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 249
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static rotateYUV([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;)[B
    .locals 6
    .param p0, "src"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    .prologue
    .line 1048
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;-><init>()V

    .line 1049
    .local v0, "pTrans":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Init()Z

    .line 1050
    array-length v1, p0

    new-array v5, v1, [B

    .local v5, "dst":[B
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 1051
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z

    .line 1052
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Finish()V

    .line 1053
    return-object v5
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 501
    const/4 v0, 0x1

    .line 507
    :goto_0
    if-eqz v0, :cond_0

    .line 508
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 510
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 503
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 504
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 505
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setFillInLightFlag(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .prologue
    .line 926
    const-string/jumbo v2, "super_camera"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 927
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 928
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fillinlight"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 929
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    return-void
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 14
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    .line 852
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 858
    if-eqz p1, :cond_1

    .line 859
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 860
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 861
    .local v4, "lon":D
    cmpl-double v1, v2, v10

    if-nez v1, :cond_0

    cmpl-double v1, v4, v10

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 863
    .local v0, "hasLatLon":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 864
    const-string v1, "Util"

    const-string v8, "Set gps location"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 866
    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 867
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 876
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    div-long v6, v8, v12

    .line 880
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 886
    .end local v0    # "hasLatLon":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "utcTimeSeconds":J
    :cond_1
    :goto_2
    return-void

    .line 861
    .restart local v2    # "lat":D
    .restart local v4    # "lon":D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 874
    .restart local v0    # "hasLatLon":Z
    :cond_3
    invoke-virtual {p0, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 883
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;IZ)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgId"    # I
    .param p2, "finish"    # Z

    .prologue
    .line 397
    new-instance v0, Lcom/lenovo/scg/camera/CameraUtil$1;

    invoke-direct {v0, p2, p0}, Lcom/lenovo/scg/camera/CameraUtil$1;-><init>(ZLandroid/app/Activity;)V

    .line 406
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 407
    .local v1, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 408
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f04ca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0546

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    return-void
.end method

.method public static showExitDialog(Landroid/app/Activity;II)Landroid/app/AlertDialog;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgId"    # I
    .param p2, "okButtonTextId"    # I

    .prologue
    .line 413
    new-instance v0, Lcom/lenovo/scg/camera/CameraUtil$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/CameraUtil$2;-><init>(Landroid/app/Activity;)V

    .line 420
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 421
    .local v1, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 422
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static systemRotationLocked(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static throwIfCameraDisabled(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 364
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 366
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    new-instance v1, Lcom/lenovo/scg/camera/CameraDisabledException;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/CameraDisabledException;-><init>()V

    throw v1

    .line 370
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lenovo/scg/camera/CameraUtil;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 702
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v1

    .line 705
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 706
    :catch_1
    move-exception v0

    .line 707
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
