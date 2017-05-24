.class public Lcom/lenovo/scg/camera/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# static fields
.field private static final FRAME_COUNT_INDEX:I = 0x9

.field private static final HR_TO_LR_DOWNSAMPLE_FACTOR:I = 0x4

.field private static final MAX_NUMBER_OF_FRAMES:I = 0x64

.field private static final MOSAIC_RET_CODE_INDEX:I = 0xa

.field private static final NUM_FRAMES_IN_BUFFER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MosaicFrameProcessor"

.field private static final WINDOW_SIZE:I = 0x3

.field private static final X_COORD_INDEX:I = 0x2

.field private static final Y_COORD_INDEX:I = 0x5

.field private static sMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private mFirstRun:Z

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 52
    iput v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFillIn:I

    .line 54
    iput v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 56
    iput v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 58
    iput v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 68
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaX:[F

    .line 70
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaY:[F

    .line 72
    iput v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 74
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 76
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 101
    new-instance v0, Lcom/lenovo/scg/camera/Mosaic;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    .line 102
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    .line 97
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->sMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setupMosaicer(III)V
    .locals 4
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "bufSize"    # I

    .prologue
    const/16 v3, 0x2c

    .line 141
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MosaicFrameProcessor in use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/Mosaic;->allocateMosaicMemory(II)V

    .line 146
    return-void
.end method


# virtual methods
.method public calculateTranslationRate()V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    .line 218
    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 219
    .local v0, "frameData":[F
    const/16 v5, 0xa

    aget v5, v0, v5

    float-to-int v2, v5

    .line 220
    .local v2, "ret_code":I
    const/16 v5, 0x9

    aget v5, v0, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 221
    const/4 v5, 0x2

    aget v3, v0, v5

    .line 222
    .local v3, "translationCurrX":F
    const/4 v5, 0x5

    aget v4, v0, v5

    .line 224
    .local v4, "translationCurrY":F
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFirstRun:Z

    if-eqz v5, :cond_0

    .line 226
    iput v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 227
    iput v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 228
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFirstRun:Z

    .line 255
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mOldestIdx:I

    .line 235
    .local v1, "idx":I
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 236
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 237
    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaX:[F

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 238
    iget-object v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaY:[F

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 239
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 240
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 249
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 250
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 252
    iput v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 253
    iput v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 254
    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mOldestIdx:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/Mosaic;->freeMosaicMemory()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 127
    :cond_0
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createMosaic(Z)I
    .locals 1
    .param p1, "highRes"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize(III)V
    .locals 3
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "bufSize"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewWidth:I

    .line 114
    iput p2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewHeight:I

    .line 115
    iput p3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 116
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->setStripType(I)V

    .line 120
    return-void
.end method

.method public isMosaicMemoryAllocated()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    return v0
.end method

.method public processFrame()V
    .locals 7

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    .line 181
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 189
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFillIn:I

    .line 193
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 194
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 198
    iget v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->calculateTranslationRate()V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .param p1, "hires"    # Z
    .param p2, "cancel"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFirstRun:Z

    .line 152
    iput v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 153
    iput v4, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mFillIn:I

    .line 154
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 155
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastX:F

    .line 156
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 157
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mTranslationLastY:F

    .line 158
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateX:F

    .line 159
    iput v2, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mPanningRateY:F

    .line 160
    iput v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 161
    iput v3, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaX:[F

    aput v2, v1, v0

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mDeltaY:[F

    aput v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/Mosaic;->reset()V

    .line 167
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mProgressListener:Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;

    .line 106
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->mMosaicer:Lcom/lenovo/scg/camera/Mosaic;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/Mosaic;->setStripType(I)V

    .line 138
    return-void
.end method
