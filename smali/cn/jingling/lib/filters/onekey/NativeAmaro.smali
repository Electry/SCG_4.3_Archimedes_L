.class public Lcn/jingling/lib/filters/onekey/NativeAmaro;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "NativeAmaro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/NativeAmaro;->statisticEvent()V

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 20
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 21
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 22
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 23
    const/16 v2, -0xf

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    move-result-object v3

    .line 25
    new-instance v16, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/amaro.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .local v16, "c":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    .line 27
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    .line 26
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 29
    const-string v7, "layers/amaro1"

    sget-object v10, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v11, 0x99

    move-object/from16 v6, p1

    move v8, v5

    .line 28
    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I

    move-result-object v2

    invoke-static {v3, v2, v5, v9}, Lcn/jingling/lib/filters/CMTProcessor;->colorBurn([I[III)V

    .line 30
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 32
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .local v17, "canvas":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .local v18, "p":Landroid/graphics/Paint;
    const-string v7, "layers/amaro2"

    sget-object v10, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v11, 0x33

    move-object/from16 v6, p1

    move v8, v5

    invoke-static/range {v6 .. v11}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 37
    const/4 v3, 0x0

    .line 38
    return-object p2
.end method
