.class public Lcn/jingling/lib/filters/onekey/CameraGuangyinLive;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraGuangyinLive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/CameraGuangyinLive;->statisticEvent()V

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 17
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 18
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 19
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    new-instance v16, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/live_guangyin1.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .local v16, "c1":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    .line 24
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    .line 23
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 27
    const-string v2, "layers/live_guangyin"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 26
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v9, v4}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I

    move-result-object v2

    .line 27
    const/16 v4, 0x1e

    .line 26
    invoke-static {v3, v2, v5, v9, v4}, Lcn/jingling/lib/filters/CMTProcessor;->overlayAlphaEffect([I[IIII)V

    .line 28
    const/16 v2, -0x37

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 29
    new-instance v17, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/live_guangyin2.dat"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .local v17, "c2":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    .line 31
    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    .line 30
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 33
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 34
    const/4 v3, 0x0

    .line 35
    return-object p2
.end method
