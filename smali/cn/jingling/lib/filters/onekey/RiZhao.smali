.class public Lcn/jingling/lib/filters/onekey/RiZhao;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "RiZhao.java"


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
    .locals 19
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/RiZhao;->statisticEvent()V

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

    .line 20
    mul-int v2, v5, v9

    new-array v11, v2, [I

    .line 23
    .local v11, "layerPixels":[I
    const/16 v2, 0xc8

    if-ge v5, v2, :cond_0

    .line 25
    const-string v2, "layers/ri_zhao_small"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v9, v4}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 31
    .local v10, "layer":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 32
    invoke-static {v3, v11, v5, v9}, Lcn/jingling/lib/filters/CMTProcessor;->screenEffect([I[III)V

    .line 34
    new-instance v18, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/ri_zhao.dat"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .local v18, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v13

    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v14

    .line 37
    invoke-virtual/range {v18 .. v18}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v15

    move-object v12, v3

    move/from16 v16, v5

    move/from16 v17, v9

    .line 35
    invoke-static/range {v12 .. v17}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 39
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v11, 0x0

    .line 42
    return-object p2

    .line 29
    .end local v10    # "layer":Landroid/graphics/Bitmap;
    .end local v18    # "curve":Lcn/jingling/lib/filters/Curve;
    :cond_0
    const-string v2, "layers/ri_zhao"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5, v9, v4}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v10

    .restart local v10    # "layer":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
