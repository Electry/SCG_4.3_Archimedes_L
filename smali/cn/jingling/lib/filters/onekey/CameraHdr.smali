.class public Lcn/jingling/lib/filters/onekey/CameraHdr;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraHdr.java"


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
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/CameraHdr;->statisticEvent()V

    .line 16
    const/16 v2, 0x28

    const/16 v4, 0x28

    const/16 v6, 0x28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2, v4, v6}, Lcn/jingling/lib/filters/IntelligentBeautify;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 17
    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs(Landroid/graphics/Bitmap;I)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 19
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 20
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 21
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    new-instance v16, Lcn/jingling/lib/filters/Curve;

    const-string v2, "curves/chdr.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .local v16, "c":Lcn/jingling/lib/filters/Curve;
    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v12

    invoke-virtual/range {v16 .. v16}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v13

    move-object v10, v3

    move v14, v5

    move v15, v9

    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 24
    const/16 v2, 0x35

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 25
    const/16 v2, 0x3c

    invoke-static {v3, v5, v9, v2}, Lcn/jingling/lib/filters/CMTProcessor;->contrastEffect([IIII)V

    .line 26
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 28
    .local v17, "sharpenBitmap":Landroid/graphics/Bitmap;
    const-wide v6, 0x3fc3333333333333L    # 0.15

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6, v7}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)V

    .line 29
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    const/16 v17, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    return-object p2
.end method
