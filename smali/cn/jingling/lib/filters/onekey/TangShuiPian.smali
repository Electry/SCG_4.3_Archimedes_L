.class public Lcn/jingling/lib/filters/onekey/TangShuiPian;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "TangShuiPian.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method

.method private Lab2RGB([III)V
    .locals 12
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 44
    const/4 v9, 0x3

    new-array v2, v9, [I

    .line 45
    .local v2, "RGB":[I
    const/4 v9, 0x3

    new-array v1, v9, [I

    .line 46
    .local v1, "Lab":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, p3, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 79
    const/4 v1, 0x0

    .line 80
    return-void

    .line 47
    :cond_0
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, p2, :cond_1

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_1
    mul-int v9, v7, p2

    add-int/2addr v9, v8

    aget v6, p1, v9

    .line 49
    .local v6, "color":I
    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v4, v9, 0xff

    .line 50
    .local v4, "alpha":I
    const/4 v9, 0x0

    shr-int/lit8 v10, v6, 0x10

    and-int/lit16 v10, v10, 0xff

    aput v10, v1, v9

    .line 51
    const/4 v9, 0x1

    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    aput v10, v1, v9

    .line 52
    const/4 v9, 0x2

    and-int/lit16 v10, v6, 0xff

    aput v10, v1, v9

    .line 54
    const/4 v9, 0x0

    aget v0, v1, v9

    .line 55
    .local v0, "L1":I
    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/lit8 v9, v9, -0x80

    mul-int/lit16 v3, v9, 0xae

    .line 56
    .local v3, "a1":I
    const/4 v9, 0x2

    aget v9, v1, v9

    add-int/lit8 v9, v9, -0x80

    mul-int/lit16 v5, v9, 0x19a

    .line 58
    .local v5, "b1":I
    const/4 v9, 0x0

    const v10, 0x18a3a

    mul-int/2addr v10, v3

    mul-int/lit16 v11, v5, 0x457e

    add-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x17

    add-int/2addr v10, v0

    aput v10, v2, v9

    .line 59
    const/4 v9, 0x1

    mul-int/lit16 v10, v3, 0x75e0

    mul-int/lit16 v11, v5, 0x5c9

    add-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x17

    sub-int v10, v0, v10

    aput v10, v2, v9

    .line 60
    const/4 v9, 0x2

    mul-int/lit16 v10, v3, 0x6cc

    const v11, 0x9357

    mul-int/2addr v11, v5

    sub-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x17

    add-int/2addr v10, v0

    aput v10, v2, v9

    .line 62
    const/4 v9, 0x0

    aget v9, v2, v9

    if-gez v9, :cond_5

    .line 63
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 66
    :cond_2
    :goto_2
    const/4 v9, 0x1

    aget v9, v2, v9

    if-gez v9, :cond_6

    .line 67
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 70
    :cond_3
    :goto_3
    const/4 v9, 0x2

    aget v9, v2, v9

    if-gez v9, :cond_7

    .line 71
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 75
    :cond_4
    :goto_4
    mul-int v9, v7, p2

    add-int/2addr v9, v8

    shl-int/lit8 v10, v4, 0x18

    const/4 v11, 0x0

    aget v11, v2, v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    .line 76
    const/4 v11, 0x1

    aget v11, v2, v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v2, v11

    or-int/2addr v10, v11

    .line 75
    aput v10, p1, v9

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 64
    :cond_5
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0xff

    if-le v9, v10, :cond_2

    .line 65
    const/4 v9, 0x0

    const/16 v10, 0xff

    aput v10, v2, v9

    goto :goto_2

    .line 68
    :cond_6
    const/4 v9, 0x1

    aget v9, v2, v9

    const/16 v10, 0xff

    if-le v9, v10, :cond_3

    .line 69
    const/4 v9, 0x1

    const/16 v10, 0xff

    aput v10, v2, v9

    goto :goto_3

    .line 72
    :cond_7
    const/4 v9, 0x2

    aget v9, v2, v9

    const/16 v10, 0xff

    if-le v9, v10, :cond_4

    .line 73
    const/4 v9, 0x2

    const/16 v10, 0xff

    aput v10, v2, v9

    goto :goto_4
.end method

.method private RGB2Lab([III)V
    .locals 12
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 14
    new-array v1, v6, [I

    .line 15
    .local v1, "RGB":[I
    new-array v0, v6, [I

    .line 16
    .local v0, "Lab":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, p3, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    .line 36
    return-void

    .line 17
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-lt v5, p2, :cond_1

    .line 16
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_1
    mul-int v6, v4, p2

    add-int/2addr v6, v5

    aget v3, p1, v6

    .line 19
    .local v3, "color":I
    shr-int/lit8 v6, v3, 0x18

    and-int/lit16 v2, v6, 0xff

    .line 20
    .local v2, "alpha":I
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v9

    .line 21
    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v10

    .line 22
    and-int/lit16 v6, v3, 0xff

    aput v6, v1, v11

    .line 24
    aget v6, v1, v9

    mul-int/lit16 v6, v6, 0x366d

    const v7, 0xb717

    aget v8, v1, v10

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    aget v7, v1, v11

    mul-int/lit16 v7, v7, 0x127c

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    aput v6, v0, v9

    .line 25
    aget v6, v1, v9

    mul-int/lit16 v6, v6, 0x38a7

    aget v7, v1, v10

    mul-int/lit16 v7, v7, 0x56ca

    sub-int/2addr v6, v7

    aget v7, v1, v11

    mul-int/lit16 v7, v7, 0x1e22

    add-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x179

    shr-int/lit8 v6, v6, 0x18

    add-int/lit16 v6, v6, 0x80

    aput v6, v0, v10

    .line 26
    aget v6, v1, v9

    mul-int/lit16 v6, v6, 0x31e5

    const v7, 0x9b0f

    aget v8, v1, v10

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const v7, 0xccf4

    aget v8, v1, v11

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0xa0

    shr-int/lit8 v6, v6, 0x18

    add-int/lit16 v6, v6, 0x80

    aput v6, v0, v11

    .line 31
    mul-int v6, v4, p2

    add-int/2addr v6, v5

    shl-int/lit8 v7, v2, 0x18

    aget v8, v0, v9

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    .line 32
    aget v8, v0, v10

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget v8, v0, v11

    or-int/2addr v7, v8

    .line 31
    aput v7, p1, v6

    .line 17
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/TangShuiPian;->statisticEvent()V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 86
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 87
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 88
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 89
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Lcn/jingling/lib/filters/onekey/TangShuiPian;->RGB2Lab([III)V

    .line 90
    new-instance v15, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/tang_shui_pian.dat"

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .local v15, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v10

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v11

    invoke-virtual {v15}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v12

    move-object v9, v2

    move v13, v4

    move v14, v8

    invoke-static/range {v9 .. v14}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 92
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Lcn/jingling/lib/filters/onekey/TangShuiPian;->Lab2RGB([III)V

    .line 93
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 94
    const/4 v2, 0x0

    .line 95
    return-object p2
.end method
