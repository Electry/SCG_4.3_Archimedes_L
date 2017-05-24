.class public Lcn/jingling/lib/filters/onekey/CameraDushiLive;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraDushiLive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/CameraDushiLive;->statisticEvent()V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 16
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 17
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 18
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    new-instance v16, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/live_dushi1.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .local v16, "c1":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    .line 23
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    .line 22
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 26
    const-string v2, "layers/live_dushi"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 25
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v9, v4}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I

    move-result-object v2

    .line 26
    const/16 v4, 0x64

    .line 25
    invoke-static {v3, v2, v5, v9, v4}, Lcn/jingling/lib/filters/CMTProcessor;->overlayAlphaEffect([I[IIII)V

    .line 28
    new-instance v17, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/live_dushi2.dat"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .local v17, "c2":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    .line 30
    invoke-virtual/range {v17 .. v17}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    .line 29
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 32
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 33
    const/4 v3, 0x0

    .line 34
    return-object p2
.end method
