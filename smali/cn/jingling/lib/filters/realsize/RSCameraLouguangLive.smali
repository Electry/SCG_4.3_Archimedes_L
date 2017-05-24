.class public Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraLouguangLive.java"


# instance fields
.field private mLayer_o:Landroid/graphics/Bitmap;

.field private mLayer_s:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 18
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 21
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcn/jingling/lib/file/ImageFile;->getImageOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v17

    .line 22
    .local v17, "orientation":I
    const-string/jumbo v1, "zhijiankun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exif orientation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "layers/live_louguang_1"

    sget-object v2, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    .line 25
    const-string v1, "layers/live_louguang_2"

    sget-object v2, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    .line 27
    if-eqz v17, :cond_2

    .line 28
    const/4 v15, 0x0

    .line 29
    .local v15, "needFlip":Z
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, p4, v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v15, 0x1

    .line 33
    :cond_0
    if-eqz v15, :cond_1

    .line 34
    move/from16 v0, v17

    rsub-int v0, v0, 0x168

    move/from16 v17, v0

    .line 37
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    .local v6, "m1":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v1, v0

    neg-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    .line 40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    .line 43
    .end local v6    # "m1":Landroid/graphics/Matrix;
    .end local v15    # "needFlip":Z
    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 44
    const/4 v1, 0x1

    aget v16, p4, v1

    .line 45
    .local v16, "needJpegRotate":I
    const/4 v1, 0x2

    aget v14, p4, v1

    .line 46
    .local v14, "jpegOrientation":I
    const-string/jumbo v1, "zhijiankun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "needJpegRotate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v1, "zhijiankun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jpeg Orientation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    .local v12, "m2":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 50
    int-to-float v1, v14

    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 51
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    .line 51
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    .line 53
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    .line 53
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    .line 57
    .end local v12    # "m2":Landroid/graphics/Matrix;
    .end local v14    # "jpegOrientation":I
    .end local v16    # "needJpegRotate":I
    :cond_3
    invoke-super/range {p0 .. p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v1

    return v1
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 63
    array-length v2, p2

    .line 68
    .local v2, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v1

    .line 69
    .local v1, "layerPixels_o":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v6, 0x32

    move-object v0, p2

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/CMTProcessor;->rsOverlayAlphaEffect([I[IIIIII)V

    .line 71
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v5

    .line 72
    .local v5, "layerPixels_s":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v4, p2

    move v6, v2

    move v7, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcn/jingling/lib/filters/CMTProcessor;->rsScreenEffect([I[IIIII)V

    .line 73
    return-void
.end method

.method protected releaseLayers()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLouguangLive;->mLayer_s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    return-void
.end method
