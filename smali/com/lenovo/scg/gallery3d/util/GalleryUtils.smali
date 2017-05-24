.class public Lcom/lenovo/scg/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# static fields
.field private static final CAMERA_LAUNCHER_NAME:Ljava/lang/String; = "com.lenovo.scg.camera.CameraLauncher"

.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final EARTH_RADIUS_METERS:D = 6367000.0

.field private static final KEY_CAMERA_UPDATE:Ljava/lang/String; = "camera-update"

.field private static final KEY_HAS_CAMERA:Ljava/lang/String; = "has-camera"

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_PANORAMA360:Ljava/lang/String; = "application/vnd.google.panorama360+jpg"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final M_MAX_WIDTH:I = 0x140

.field private static final PREFIX_HAS_PHOTO_EDITOR:Ljava/lang/String; = "has-editor-"

.field private static final PREFIX_PHOTO_EDITOR_UPDATE:Ljava/lang/String; = "editor-update-"

.field private static final RAD_PER_DEG:D = 0.017453292519943295

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field public static WM_HEIGHT:I

.field public static WM_WIDTH:I

.field private static sCameraAvailable:Z

.field private static sCameraAvailableInitialized:Z

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field private static sPixelDensity:F

.field private static volatile sWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 89
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 99
    sput v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    .line 101
    sput v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 14
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 202
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 203
    .local v0, "dlat":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 204
    .local v2, "dlng":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 205
    .local v4, "x":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 168
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sWarned:Z

    .line 171
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_0
    return-void
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "typeBits":I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "type":Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    const/4 v1, 0x3

    .line 375
    :goto_0
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    if-eqz v2, :cond_0

    .line 376
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    or-int/lit8 v1, v1, 0x4

    .line 381
    :cond_0
    return v1

    .line 367
    :cond_1
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 369
    :cond_3
    const-string/jumbo v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 372
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .param p0, "dp"    # F

    .prologue
    .line 134
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1
    .param p0, "dp"    # I

    .prologue
    .line 138
    int-to-float v0, p0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static fakeBusy(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 4
    .param p0, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p1, "timeout"    # I

    .prologue
    .line 214
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 215
    .local v0, "cv":Landroid/os/ConditionVariable;
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils$1;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils$1;-><init>(Landroid/os/ConditionVariable;)V

    invoke-interface {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 222
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 223
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 224
    return-void
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12
    .param p0, "latRad1"    # D
    .param p2, "lngRad1"    # D
    .param p4, "latRad2"    # D
    .param p6, "lngRad2"    # D

    .prologue
    .line 181
    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 182
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    .line 198
    :goto_0
    return-wide v8

    .line 185
    :cond_1
    sub-double v2, p0, p4

    .line 188
    .local v2, "sineLat":D
    sub-double v4, p2, p6

    .line 192
    .local v4, "sineLng":D
    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 193
    .local v0, "cosTerms":D
    mul-double/2addr v0, v0

    .line 194
    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    .line 195
    .local v6, "trigTerm":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 198
    const-wide v8, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 348
    div-int/lit16 v1, p1, 0xe10

    .line 349
    .local v1, "h":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 350
    .local v2, "m":I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 352
    .local v3, "s":I
    if-nez v1, :cond_0

    .line 353
    const v4, 0x7f0f0644

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "durationValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 355
    .end local v0    # "durationValue":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0f0645

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "durationValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 284
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 148
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 149
    .local v4, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "output":I
    .local v5, "output":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 150
    .local v1, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "output":I
    .restart local v4    # "output":I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 151
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "output":I
    .restart local v5    # "output":I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "ch":C
    :cond_0
    return-object v6
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .param p0, "typeBits"    # I

    .prologue
    .line 385
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 386
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0f0659

    .line 388
    :goto_0
    return v0

    .line 386
    :cond_0
    const v0, 0x7f0f065a

    goto :goto_0

    .line 388
    :cond_1
    const v0, 0x7f0f0658

    goto :goto_0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 10
    .param p0, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v4

    .line 397
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    cmp-long v5, v6, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GalleryUtils"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sPixelDensity:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 108
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 111
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    .line 112
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_HEIGHT:I

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0d001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->setPlaceholderColor(I)V

    .line 117
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 119
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private static initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "metrics"    # Landroid/util/DisplayMetrics;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    .local v0, "maxPixels":I
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x5

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->setThumbnailSizes(II)V

    .line 126
    div-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->setMaxSide(I)V

    .line 127
    return-void
.end method

.method public static intColorToFloatARGBArray(I)[F
    .locals 4
    .param p0, "from"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static isAnyCameraAvailable(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v3

    .line 244
    .local v3, "version":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "camera-update"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 247
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "camera-update"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has-camera"

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move v4, v5

    :cond_0
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v4, "has-camera"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    :goto_0
    return v2

    .line 451
    :cond_0
    const/4 v1, 0x0

    .line 453
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :goto_1
    if-nez v1, :cond_1

    .line 459
    const-string v3, "GalleryUtils"

    const-string v4, "isAppInstalled, not installed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 456
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 462
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v2, "GalleryUtils"

    const-string v3, "isAppInstalled, is installed!! "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 254
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    if-eqz v4, :cond_0

    sget-boolean v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 260
    :goto_0
    return v3

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 256
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.lenovo.scg.camera.CameraLauncher"

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    .local v0, "name":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 258
    .local v2, "state":I
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 259
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_1
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 260
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    goto :goto_0

    .line 259
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v5

    .line 229
    .local v5, "version":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "editor-update-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "updateKey":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has-editor-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "hasKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 233
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 235
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 236
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    :cond_0
    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method public static isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/16 v5, 0x140

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 419
    if-nez p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v2

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 440
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 442
    .local v0, "h":I
    if-lt v0, v5, :cond_2

    div-int v3, v1, v0

    if-ge v3, v4, :cond_3

    :cond_2
    if-lt v1, v5, :cond_0

    div-int v3, v0, v1

    if-lt v3, v4, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 278
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .param p0, "meter"    # F

    .prologue
    .line 143
    const v0, 0x421d7ae1    # 39.37f

    mul-float/2addr v0, p0

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static searchDirForPath(Ljava/io/File;I)Ljava/lang/String;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "bucketId"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 330
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 331
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 332
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 343
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 337
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v5

    .line 338
    if-nez v5, :cond_0

    .line 331
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 165
    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .param p0, "matrix"    # [F
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v3, 0x0

    .line 312
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 313
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 314
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 315
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 316
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v1

    aput v2, p0, v0

    .line 317
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 293
    :try_start_0
    const-string v5, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "uri":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.maps"

    const-string v6, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 296
    .local v2, "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 297
    .end local v2    # "mapsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "GalleryUtils"

    const-string v6, "GMM activity not found!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const-string v5, "geo:%f,%f"

    invoke-static {v5, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 302
    .restart local v2    # "mapsIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lenovo.intent.action.SuperCamera"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public static startGalleryActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public static final toMile(D)D
    .locals 2
    .param p0, "meter"    # D

    .prologue
    .line 209
    const-wide v0, 0x4099240000000000L    # 1609.0

    div-double v0, p0, v0

    return-wide v0
.end method
