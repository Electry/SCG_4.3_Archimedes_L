.class public Lcn/jingling/lib/filters/onekey/FuGu;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "FuGu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/FuGu;->statisticEvent()V

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 18
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 19
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 20
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v8, v1}, Lcn/jingling/lib/filters/ImageProcessUtils;->skinSmooth(Landroid/content/Context;[IIII)V

    .line 23
    new-instance v15, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/fu_gu.dat"

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .local v15, "c":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    .line 25
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    move-object v9, v2

    move v13, v4

    move v14, v8

    .line 24
    invoke-static/range {v9 .. v14}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 27
    const-string v6, "layers/fu_gu"

    sget-object v9, Lcn/jingling/lib/filters/Layer$Type;->ROTATABLE:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v10, 0x99

    move-object/from16 v5, p1

    move v7, v4

    .line 26
    invoke-static/range {v5 .. v10}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;I)[I

    move-result-object v1

    invoke-static {v2, v1, v4, v8}, Lcn/jingling/lib/filters/CMTProcessor;->multiplyEffect([I[III)V

    .line 28
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 30
    const/4 v2, 0x0

    .line 31
    return-object p2
.end method
