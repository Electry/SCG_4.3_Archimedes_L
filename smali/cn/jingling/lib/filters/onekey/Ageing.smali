.class public Lcn/jingling/lib/filters/onekey/Ageing;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Ageing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method private AddNoise([III)V
    .locals 12
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 15
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 18
    .local v6, "random":Ljava/util/Random;
    mul-int v4, p2, p3

    .line 20
    .local v4, "n":I
    const/4 v7, 0x3

    new-array v0, v7, [I

    .line 21
    .local v0, "color":[I
    const/16 v7, 0x3c

    new-array v1, v7, [I

    .line 24
    .local v1, "gauss":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x3c

    if-lt v2, v7, :cond_0

    .line 29
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 50
    return-void

    .line 25
    :cond_0
    invoke-virtual {v6}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v8

    .line 26
    .local v8, "t":D
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v8

    double-to-int v7, v10

    aput v7, v1, v2

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v8    # "t":D
    :cond_1
    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget v5, v1, v7

    .line 33
    .local v5, "ran":I
    const/4 v7, 0x0

    aget v10, p1, v2

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x10

    aput v10, v0, v7

    .line 34
    const/4 v7, 0x1

    aget v10, p1, v2

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x8

    aput v10, v0, v7

    .line 35
    const/4 v7, 0x2

    aget v10, p1, v2

    and-int/lit16 v10, v10, 0xff

    aput v10, v0, v7

    .line 37
    aget v7, p1, v2

    const/high16 v10, -0x1000000

    and-int/2addr v7, v10

    aput v7, p1, v2

    .line 39
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/4 v7, 0x3

    if-lt v3, v7, :cond_2

    .line 47
    aget v7, p1, v2

    const/4 v10, 0x0

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x1

    aget v11, v0, v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    or-int/2addr v10, v11

    or-int/2addr v7, v10

    aput v7, p1, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 40
    :cond_2
    aget v7, v0, v3

    add-int/2addr v7, v5

    aput v7, v0, v3

    .line 41
    aget v7, v0, v3

    if-gez v7, :cond_4

    .line 42
    const/4 v7, 0x0

    aput v7, v0, v3

    .line 39
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 43
    :cond_4
    aget v7, v0, v3

    const/16 v10, 0xff

    if-le v7, v10, :cond_3

    .line 44
    const/16 v7, 0xff

    aput v7, v0, v3

    goto :goto_3
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/Ageing;->statisticEvent()V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 56
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 57
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 58
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 61
    new-instance v15, Lcn/jingling/lib/filters/Curve;

    invoke-direct {v15}, Lcn/jingling/lib/filters/Curve;-><init>()V

    .line 62
    .local v15, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    .line 63
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    move-object v9, v2

    move v13, v4

    move v14, v8

    .line 62
    invoke-static/range {v9 .. v14}, Lcn/jingling/lib/filters/CMTProcessor;->blueEffect([I[I[I[III)V

    .line 66
    const/16 v1, 0x39

    invoke-static {v2, v4, v8, v1}, Lcn/jingling/lib/filters/CMTProcessor;->contrastEffect([IIII)V

    .line 67
    const/16 v1, 0x39

    invoke-static {v2, v4, v8, v1}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 70
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Lcn/jingling/lib/filters/onekey/Ageing;->AddNoise([III)V

    .line 71
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 74
    const/16 v1, 0x28

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcn/jingling/lib/filters/ImageProcessUtils;->hue(Landroid/graphics/Bitmap;I)V

    .line 76
    return-object p2
.end method
