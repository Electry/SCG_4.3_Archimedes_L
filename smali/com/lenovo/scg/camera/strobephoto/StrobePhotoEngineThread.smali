.class public Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;
.super Landroid/os/HandlerThread;
.source "StrobePhotoEngineThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ADD_IMG:I = 0x2

.field public static final AREA_NUMBER_RETURN:I = 0x8

.field public static final DETECT_IMG:I = 0x3

.field public static final FINAL_IMAGE_RETURN:I = 0xa

.field public static final GET_OBJECT_BITMAP:I = 0x12

.field public static final GET_OBJECT_RECT:I = 0x11

.field public static final GET_OUTPUT_IMG:I = 0x5

.field public static final GET_SELECT_IMG:I = 0x13

.field public static final IMAGE_INDEX_RETURN:I = 0xd

.field public static final INIT_ENG:I = 0x1

.field public static final PREIVEW_BP_RETURN:I = 0x9

.field public static final RELEASE_ENG:I = 0x7

.field public static final SET_AREA_ALPHA:I = 0x4

.field public static final SET_AREA_ALPHA_LIST:I = 0xe

.field public static final SET_OUTPUT_IMG:I = 0x6

.field public static final START_DETECT:I = 0xb

.field public static final STOP_PREVIEW:I = 0xc

.field private static final TAG:Ljava/lang/String; = "StrobePhotoEngineThread"

.field public static final TARGET_BITMAP_RETURN:I = 0x10

.field public static final TARGET_RECT_RETURN:I = 0xf

.field private static final THREAD_NAME:Ljava/lang/String; = "StrobePhotoEngineThread"


# instance fields
.field private count:I

.field private isLocked:Z

.field private mFormat:Ljava/lang/String;

.field private mHeight:I

.field private mIsLandScapeShooting:Z

.field private mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

.field private mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

.field private mLock:Ljava/lang/Object;

.field private mLock_AddImage:Ljava/lang/Object;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMaxNumOfImages:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

.field private mThreadCount:I

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mWaitRelease:Z

.field private mWidth:I

.field private out_image:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    const-string v0, "StrobePhotoEngineThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    .line 43
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    .line 88
    iput v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mIsLandScapeShooting:Z

    .line 102
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLock_AddImage:Ljava/lang/Object;

    .line 110
    iput v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mThreadCount:I

    .line 236
    iput v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->count:I

    .line 571
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    .line 86
    return-void
.end method

.method private RleaseStrobePhotoEng()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "RleaseStrobePhotoEng"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    .line 162
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLock_AddImage:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0}, Lcom/morpho/core/StrobePhotoJNI;->finish()V

    .line 166
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 171
    const-string v0, "StrobePhotoEngineThread"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 173
    iput-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    .line 175
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    .line 176
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private addImage([B)V
    .locals 8
    .param p1, "jpegData"    # [B

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v6

    .line 243
    .local v6, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    if-nez v6, :cond_1

    .line 244
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "addImage head is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v6    # "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v6    # "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    :cond_1
    const-string v0, "StrobePhotoEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage Head-width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    if-ne v0, v1, :cond_2

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    if-ne v0, v1, :cond_2

    .line 248
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "jpeg rotation is not as expection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    sget-object v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    invoke-static {p1, v0, v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->rotate([BIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    .line 251
    :cond_2
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 252
    .local v7, "inimgBuff":Ljava/nio/ByteBuffer;
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 253
    .local v5, "byte_select_image":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    iget v3, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v4, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 255
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0, v7}, Lcom/morpho/core/StrobePhotoJNI;->addImage(Ljava/nio/ByteBuffer;)I

    .line 259
    :cond_3
    invoke-static {v7}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method

.method private addImageYUV(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 8
    .param p1, "tools"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 180
    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v6

    .line 182
    .local v6, "YUVData":[B
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 183
    .local v7, "inimgBuff":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0, v7}, Lcom/morpho/core/StrobePhotoJNI;->addImage(Ljava/nio/ByteBuffer;)I

    .line 187
    :cond_0
    invoke-static {v7}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 188
    return-void
.end method

.method private addImageYUV([B)V
    .locals 8
    .param p1, "jpeg"    # [B

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v6

    .line 227
    .local v6, "YUVData":[B
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 228
    .local v7, "inimgBuff":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0, v7}, Lcom/morpho/core/StrobePhotoJNI;->addImage(Ljava/nio/ByteBuffer;)I

    .line 232
    :cond_0
    invoke-static {v7}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 234
    return-void
.end method

.method private detect(I)V
    .locals 2
    .param p1, "baseNumber"    # I

    .prologue
    .line 303
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "detect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0, p1}, Lcom/morpho/core/StrobePhotoJNI;->detect(I)I

    .line 306
    :cond_0
    return-void
.end method

.method private getObjectBitmapData(III)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 428
    const-string v2, "StrobePhotoEngineThread"

    const-string v3, "getObjectBitmapData"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v2, :cond_0

    .line 430
    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 431
    .local v10, "select_image":Ljava/nio/ByteBuffer;
    mul-int v2, p2, p3

    new-array v8, v2, [I

    .line 432
    .local v8, "ibmp":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v2, p1, v10, p2, p3}, Lcom/morpho/core/StrobePhotoJNI;->getObjectImage(ILjava/nio/ByteBuffer;II)I

    .line 434
    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    .line 435
    .local v7, "byte_select_image":[B
    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v10, v7, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 437
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 438
    .local v0, "bp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 439
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    sget-object v3, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v2, v7, v3, v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageConvertToBitmap([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V

    .line 440
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 444
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 445
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 446
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 447
    const/4 v6, 0x1

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 451
    .local v9, "result":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v9, Landroid/os/Message;->what:I

    .line 452
    iput p1, v9, Landroid/os/Message;->arg1:I

    .line 453
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    invoke-static {v10}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 458
    .end local v0    # "bp":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "byte_select_image":[B
    .end local v8    # "ibmp":[I
    .end local v9    # "result":Landroid/os/Message;
    .end local v10    # "select_image":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private getObjectRect(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 415
    const-string v2, "StrobePhotoEngineThread"

    const-string v3, "getObjectRect"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v2, :cond_0

    .line 417
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 418
    .local v0, "rect":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/morpho/core/StrobePhotoJNI;->getObjectRect(I[III)I

    .line 419
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "result":Landroid/os/Message;
    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    .line 421
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 422
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 425
    .end local v0    # "rect":[I
    .end local v1    # "result":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private getOutput()V
    .locals 6

    .prologue
    .line 393
    const-string v2, "StrobePhotoEngineThread"

    const-string v3, "getOutput"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    rem-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    rem-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    .line 398
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 399
    .local v0, "byte_output_image":[B
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 404
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 405
    .local v1, "result":Landroid/os/Message;
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    .line 406
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 407
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 408
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    return-void

    .line 402
    .end local v1    # "result":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    const-string v3, "StrobePhotoEngineThread"

    invoke-static {v2, v3}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private getProcessImageList()V
    .locals 7

    .prologue
    .line 327
    const-string v4, "StrobePhotoEngineThread"

    const-string v5, "getProcessImageList"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMaxNumOfImages:I

    new-array v1, v4, [I

    .line 329
    .local v1, "imageIndexs":[I
    const/4 v2, 0x0

    .line 330
    .local v2, "imageNumber":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v4, v1}, Lcom/morpho/core/StrobePhotoJNI;->getProcessImageList([I)I

    move-result v2

    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 334
    .local v3, "result":Landroid/os/Message;
    const/16 v4, 0xd

    iput v4, v3, Landroid/os/Message;->what:I

    .line 335
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 336
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMaxNumOfImages:I

    if-ge v0, v4, :cond_1

    .line 338
    const-string v4, "StrobePhotoEngineThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageNumber"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method private getSelectImage()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 344
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 345
    .local v10, "select_image":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v2, v3

    new-array v8, v2, [I

    .line 346
    .local v8, "ibmp":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v2, v10}, Lcom/morpho/core/StrobePhotoJNI;->getSelectImage(Ljava/nio/ByteBuffer;)I

    .line 352
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    .line 353
    .local v7, "byte_select_image":[B
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v10, v7, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 356
    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, "bp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    sget-object v3, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual {v2, v7, v3, v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageConvertToBitmap([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 362
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 363
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 364
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 365
    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 369
    .local v9, "result":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v9, Landroid/os/Message;->what:I

    .line 370
    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    invoke-static {v10}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 374
    .end local v0    # "bp":Landroid/graphics/Bitmap;
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "byte_select_image":[B
    .end local v9    # "result":Landroid/os/Message;
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string v1, "StrobePhotoEngineThread"

    const-string v2, "mStrobePhotoEng is NULL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTotalAreaNumber()V
    .locals 7

    .prologue
    .line 309
    const-string v4, "StrobePhotoEngineThread"

    const-string v5, "getTotalAreaNumber"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMaxNumOfImages:I

    new-array v0, v4, [I

    .line 311
    .local v0, "areaNumber":[I
    const/4 v1, 0x0

    .line 312
    .local v1, "featureNumber":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v4, v0}, Lcom/morpho/core/StrobePhotoJNI;->getTotalAreaNumber([I)I

    move-result v1

    .line 315
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 316
    .local v3, "result":Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 317
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 318
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 320
    const-string v4, "StrobePhotoEngineThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "areaNumber"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getObjectRect(I)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method private initStrobePhotoEng(IIIILjava/lang/String;I)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "max_num_of_images"    # I

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "initStrobePhotoEng"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    rem-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    rem-int/lit8 v0, p2, 0x10

    sub-int/2addr p2, v0

    .line 141
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    new-instance v0, Lcom/morpho/core/StrobePhotoJNI;

    invoke-direct {v0}, Lcom/morpho/core/StrobePhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/morpho/core/StrobePhotoJNI;->initialize(IIIILjava/lang/String;I)I

    .line 145
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 146
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->isLocked:Z

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static saveFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "bfile"    # [B
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 536
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 538
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 540
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 542
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 544
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 545
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 549
    if-eqz v1, :cond_1

    .line 551
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 556
    :cond_1
    :goto_0
    if-eqz v8, :cond_6

    .line 558
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 564
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 552
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 553
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 560
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 561
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 546
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 549
    if-eqz v0, :cond_3

    .line 551
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 556
    :cond_3
    :goto_3
    if-eqz v7, :cond_2

    .line 558
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 559
    :catch_3
    move-exception v4

    .line 560
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 552
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 553
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 549
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_4

    .line 551
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 556
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 558
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 561
    :cond_5
    :goto_6
    throw v9

    .line 552
    :catch_5
    move-exception v4

    .line 553
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 559
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 560
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 549
    .end local v4    # "e1":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_4

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 546
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private setAreaAlpha(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 377
    const-string v0, "StrobePhotoEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAreaAlpha index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " alpha "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0, p1, p2}, Lcom/morpho/core/StrobePhotoJNI;->setAreaAlpha(II)I

    .line 381
    :cond_0
    return-void
.end method

.method private setAreaAlphaList([I)V
    .locals 3
    .param p1, "alphaList"    # [I

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    aget v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lcom/morpho/core/StrobePhotoJNI;->setAreaAlpha(II)I

    .line 385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method private setOutput(II[B)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "decoded"    # I
    .param p3, "jpegData"    # [B

    .prologue
    .line 267
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 268
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "get from cache"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 270
    .local v7, "inimgBuff":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v7, v1}, Lcom/morpho/core/StrobePhotoJNI;->setOutputImage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 274
    :cond_0
    invoke-static {v7}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 300
    .end local v7    # "inimgBuff":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeBufferHead([B)Lcom/lenovo/scg/LeImageJI/CLeImageHead;

    move-result-object v6

    .line 279
    .local v6, "head":Lcom/lenovo/scg/LeImageJI/CLeImageHead;
    if-nez v6, :cond_3

    .line 280
    const-string v0, "StrobePhotoEngineThread"

    const-string/jumbo v1, "setOutput head is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_3
    const-string v0, "StrobePhotoEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOutput Head-width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    if-ne v0, v1, :cond_4

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    if-ne v0, v1, :cond_4

    .line 284
    const-string v0, "StrobePhotoEngineThread"

    const-string v1, "jpeg rotation is not as expection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    sget-object v2, Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;->TRANS_ROT_90:Lcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;

    invoke-static {p3, v0, v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->rotate([BIILcom/lenovo/scg/LeImageJI/CLeImageJPEGTransformer$eTransformType;)[B

    .line 287
    :cond_4
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    .line 288
    :cond_5
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 289
    .restart local v7    # "inimgBuff":Ljava/nio/ByteBuffer;
    iget v0, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v1, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 290
    .local v5, "byte_select_image":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    sget v2, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    iget v3, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->w:I

    iget v4, v6, Lcom/lenovo/scg/LeImageJI/CLeImageHead;->h:I

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 292
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->out_image:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v7, v1}, Lcom/morpho/core/StrobePhotoJNI;->setOutputImage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 296
    :cond_6
    invoke-static {v7}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mStrobePhotoEng:Lcom/morpho/core/StrobePhotoJNI;

    invoke-virtual {v0}, Lcom/morpho/core/StrobePhotoJNI;->stopPreview()I

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 463
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->RleaseStrobePhotoEng()V

    .line 465
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    .line 530
    :goto_0
    return v8

    .line 469
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 471
    :pswitch_1
    iget v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mFormat:Ljava/lang/String;

    iget v6, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMaxNumOfImages:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->initStrobePhotoEng(IIIILjava/lang/String;I)V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->addImageYUV([B)V

    goto :goto_0

    .line 478
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :goto_1
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mThreadCount:I

    if-lez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 483
    :catch_0
    move-exception v7

    .line 484
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 486
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->detect(I)V

    .line 488
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    if-eqz v0, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->RleaseStrobePhotoEng()V

    .line 490
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 493
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getTotalAreaNumber()V

    .line 494
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getProcessImageList()V

    goto :goto_0

    .line 497
    :pswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getSelectImage()V

    goto :goto_0

    .line 500
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setAreaAlpha(II)V

    .line 501
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getSelectImage()V

    .line 502
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getProcessImageList()V

    goto :goto_0

    .line 505
    :pswitch_6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getOutput()V

    goto :goto_0

    .line 508
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v1, v2, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setOutput(II[B)V

    goto :goto_0

    .line 511
    :pswitch_8
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->RleaseStrobePhotoEng()V

    goto :goto_0

    .line 514
    :pswitch_9
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->stopPreview()V

    goto :goto_0

    .line 517
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setAreaAlphaList([I)V

    .line 518
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getSelectImage()V

    .line 519
    invoke-direct {p0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getProcessImageList()V

    goto/16 :goto_0

    .line 522
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getObjectRect(I)V

    goto/16 :goto_0

    .line 525
    :pswitch_c
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getObjectBitmapData(III)V

    goto/16 :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public quit()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 576
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 577
    const-string v0, "StrobePhotoEngineThread"

    const-string/jumbo v1, "quit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWaitRelease:Z

    .line 580
    return v2
.end method

.method public setEngineParameters(IIIILjava/lang/String;I)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "preview_width"    # I
    .param p4, "preview_height"    # I
    .param p5, "format"    # Ljava/lang/String;
    .param p6, "max_num_of_images"    # I

    .prologue
    .line 113
    const-string v0, "StrobePhotoEngineThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPreviewWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mPreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-ge p1, p2, :cond_0

    .line 115
    iput p2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    .line 116
    iput p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    .line 117
    iput p4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    .line 118
    iput p3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    .line 125
    :goto_0
    iput-object p5, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mFormat:Ljava/lang/String;

    .line 126
    iput p6, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMaxNumOfImages:I

    .line 127
    return-void

    .line 120
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mWidth:I

    .line 121
    iput p2, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mHeight:I

    .line 122
    iput p3, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewWidth:I

    .line 123
    iput p4, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mPreviewHeight:I

    goto :goto_0
.end method

.method public setImageOriention(Z)V
    .locals 0
    .param p1, "isLandScapeShooting"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mIsLandScapeShooting:Z

    .line 569
    return-void
.end method

.method public setMainThreadHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mMainThreadHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method public setTools(Lcom/lenovo/scg/camera/ContinuousShotTool;)V
    .locals 0
    .param p1, "tool"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 135
    return-void
.end method
