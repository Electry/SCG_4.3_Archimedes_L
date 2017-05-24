.class public abstract Lcn/jingling/lib/filters/realsize/RSLineFilter;
.super Lcn/jingling/lib/filters/RealsizeFilter;
.source "RSLineFilter.java"


# static fields
.field public static NEED_FLIP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Realsize"

.field private static mRealSizeSaveMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->NEED_FLIP:I

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mRealSizeSaveMutex:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/jingling/lib/filters/RealsizeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 25
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 33
    sget-object v24, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mRealSizeSaveMutex:Ljava/lang/Object;

    monitor-enter v24

    .line 35
    :try_start_0
    invoke-super/range {p0 .. p4}, Lcn/jingling/lib/filters/RealsizeFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    .line 36
    const-string v3, "Realsize"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Realsize save begin : inPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v3, "Realsize"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Realsize save begin : outPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "Realsize error : inPath and outPath can\'t be the same !"

    const-string v4, "Realsize"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-exit v24

    const/4 v3, 0x0

    .line 123
    :goto_0
    return v3

    .line 44
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->checkJpg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    const-string v3, "Realsize error : inPath file  !"

    const-string v4, "Realsize"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    monitor-exit v24

    const/4 v3, 0x0

    goto :goto_0

    .line 49
    :cond_1
    const/16 v20, 0x0

    .line 50
    .local v20, "needFlip":Z
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    aget v3, p4, v3

    sget v4, Lcn/jingling/lib/filters/realsize/RSLineFilter;->NEED_FLIP:I

    if-ne v3, v4, :cond_2

    .line 51
    const/16 v20, 0x1

    .line 54
    :cond_2
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    move-result v17

    .line 56
    .local v17, "initReader":I
    if-eqz v17, :cond_3

    .line 57
    const-string v3, "Realsize error : initJpegReader failed !"

    const-string v4, "Realsize"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    monitor-exit v24

    const/4 v3, 0x0

    goto :goto_0

    .line 61
    :cond_3
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x64

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4, v5}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegWriter(Ljava/lang/String;III)I

    move-result v18

    .line 63
    .local v18, "initWriter":I
    if-eqz v18, :cond_4

    .line 64
    const-string v3, "Realsize error : initJpegWriter failed !"

    const-string v4, "Realsize"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    monitor-exit v24

    const/4 v3, 0x0

    goto :goto_0

    .line 69
    :cond_4
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeLeft:F

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeRight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeBottom:F

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .local v22, "range":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 71
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcn/jingling/lib/file/ImageFile;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v21

    .line 72
    .local v21, "orientation":I
    const-string/jumbo v3, "zhijiankun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exif orientation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eqz v20, :cond_5

    .line 75
    move/from16 v0, v21

    rsub-int v0, v0, 0x168

    move/from16 v21, v0

    .line 78
    :cond_5
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .local v8, "m":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v3, v0

    neg-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    .line 81
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeLeft:F

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeTop:F

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeRight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPosterRangeBottom:F

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    .local v23, "rangeOriginal":Landroid/graphics/RectF;
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    .local v19, "m2":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v3, v0

    neg-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 88
    const-string/jumbo v3, "zhijiankun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rangeOriginal: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, "zhijiankun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "range: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v19    # "m2":Landroid/graphics/Matrix;
    .end local v21    # "orientation":I
    .end local v23    # "rangeOriginal":Landroid/graphics/RectF;
    :cond_6
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageHeight()I

    move-result v15

    .line 94
    .local v15, "h":I
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageWidth()I

    move-result v11

    .line 95
    .local v11, "w":I
    const-string/jumbo v3, "zhijiankun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "jpeg h: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v3, "zhijiankun"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "jpeg w: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-lt v0, v15, :cond_7

    .line 116
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishWritingAndRelease()V

    .line 117
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishReadingAndRelease()V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->releaseLayers()V

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->setExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v3, "Realsize"

    const-string v4, "Realsize save finished !"

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit v24

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 100
    :cond_7
    const/4 v3, 0x1

    invoke-static {v3}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v9

    .line 101
    .local v9, "pixels":[I
    if-eqz v20, :cond_8

    .line 102
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v9, v1, v15}, Lcn/jingling/lib/filters/realsize/FlipUtil;->flipLine(Landroid/content/Context;[III)V

    .line 104
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2, v15}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->applyLine(Landroid/content/Context;[III)V

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    .line 106
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v15

    div-float/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    .line 107
    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v15

    div-float/2addr v3, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_9

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1, v15}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v10

    .line 110
    .local v10, "posterPixels":[I
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/filters/realsize/RSLineFilter;->mPoster:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x1

    .line 109
    invoke-static/range {v9 .. v14}, Lcn/jingling/lib/filters/CMTProcessor;->rsCoverageEffect([I[IIIII)V

    .line 114
    .end local v10    # "posterPixels":[I
    :cond_9
    const/4 v3, 0x1

    invoke-static {v9, v3}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 99
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 33
    .end local v9    # "pixels":[I
    .end local v11    # "w":I
    .end local v15    # "h":I
    .end local v16    # "i":I
    .end local v17    # "initReader":I
    .end local v18    # "initWriter":I
    .end local v20    # "needFlip":Z
    .end local v22    # "range":Landroid/graphics/RectF;
    :catchall_0
    move-exception v3

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected abstract applyLine(Landroid/content/Context;[III)V
.end method

.method protected getLayerPixels(Landroid/graphics/Bitmap;II)[I
    .locals 8
    .param p1, "layer"    # Landroid/graphics/Bitmap;
    .param p2, "line"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 141
    .local v3, "pw":I
    new-array v1, v3, [I

    .line 142
    .local v1, "layerPixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, p2

    div-int v5, v0, p3

    .line 143
    .local v5, "y":I
    const/4 v7, 0x1

    move-object v0, p1

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 144
    return-object v1
.end method

.method protected abstract releaseLayers()V
.end method
