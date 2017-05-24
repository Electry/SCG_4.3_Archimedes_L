.class public Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
.super Ljava/lang/Object;
.source "ArcsoftFaceDetectJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v0, "scg_face_detect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Bitmap2YUV(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "mResult":[B
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    .line 95
    .local v0, "mColorConvert":Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v0, p1, v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertBitmapToYUV(Landroid/graphics/Bitmap;Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[B

    move-result-object v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 99
    return-object v1
.end method

.method private native detectFace(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)I
.end method

.method private detectFaceByYUV420sp([BII)Lcom/lenovo/scg/common/utils/FaceInfo;
    .locals 1
    .param p1, "yuv"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFromYUV([BII)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v0

    return-object v0
.end method

.method private native detectFromBitmap(Landroid/graphics/Bitmap;)Lcom/lenovo/scg/common/utils/FaceInfo;
.end method

.method private native detectFromJpeg([BII)Lcom/lenovo/scg/common/utils/FaceInfo;
.end method

.method private native detectFromYUV([BII)Lcom/lenovo/scg/common/utils/FaceInfo;
.end method

.method private native init()I
.end method

.method private native initFace(I)I
.end method

.method private initFaceDectect()I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->init()I

    move-result v0

    return v0
.end method

.method private native uninit()V
.end method

.method private native uninitFace()V
.end method

.method private uninitFaceDected()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninit()V

    .line 52
    return-void
.end method


# virtual methods
.method public detectFaceRectsByBitmap(Lcom/lenovo/scg/common/utils/FaceInfo;Landroid/graphics/Bitmap;)[B
    .locals 10
    .param p1, "mFaceInfo"    # Lcom/lenovo/scg/common/utils/FaceInfo;
    .param p2, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v7

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 123
    .local v1, "image_w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 125
    .local v0, "image_h":I
    rem-int/lit8 v6, v1, 0x4

    .line 126
    .local v6, "offsetW":I
    if-eqz v6, :cond_2

    .line 127
    sub-int/2addr v1, v6

    .line 130
    :cond_2
    rem-int/lit8 v5, v0, 0x2

    .line 132
    .local v5, "offsetH":I
    if-eqz v5, :cond_3

    .line 133
    sub-int/2addr v0, v5

    .line 135
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 136
    .local v3, "mOffsetBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 138
    .local v4, "mPaint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    invoke-virtual {v2, p2, v9, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-direct {p0, v3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->Bitmap2YUV(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    .line 142
    .local v7, "src":[B
    invoke-direct {p0, p1, v7, v1, v0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFace(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)I

    .line 144
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public detectFaceToFaceInfo(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)V
    .locals 0
    .param p1, "mFaceInfo"    # Lcom/lenovo/scg/common/utils/FaceInfo;
    .param p2, "yuv"    # [B
    .param p3, "image_w"    # I
    .param p4, "image_h"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFace(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)I

    .line 79
    return-void
.end method

.method public initFaceDetect(I)I
    .locals 1
    .param p1, "nScale"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->initFace(I)I

    move-result v0

    return v0
.end method

.method public uninitFaceDetect()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninitFace()V

    .line 76
    return-void
.end method
