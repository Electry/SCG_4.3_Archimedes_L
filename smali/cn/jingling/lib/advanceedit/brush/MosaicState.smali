.class public Lcn/jingling/lib/advanceedit/brush/MosaicState;
.super Lcn/jingling/lib/advanceedit/brush/DrawState;
.source "MosaicState.java"


# static fields
.field private static final MOSAIC_RANGE:I = 0xc


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "groundBitamp"    # Landroid/graphics/Bitmap;
    .param p2, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p2}, Lcn/jingling/lib/advanceedit/brush/DrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "mMosaicBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 30
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 31
    .local v7, "h":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, "pixels":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 32
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 33
    const/16 v4, 0xc

    invoke-direct {p0, v1, v3, v7, v4}, Lcn/jingling/lib/advanceedit/brush/MosaicState;->mosaic([IIII)[I

    move-result-object v1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 36
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v0, v2, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 37
    .local v8, "bitmapShader":Landroid/graphics/BitmapShader;
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/MosaicState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v2, v8}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    return-void
.end method

.method private mosaic([IIII)[I
    .locals 18
    .param p1, "pixels"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "range"    # I

    .prologue
    .line 50
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    div-int v16, v16, p2

    add-int/lit8 v15, v16, -0x1

    .line 51
    .local v15, "totalLine":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    div-int v16, v16, p3

    add-int/lit8 v14, v16, -0x1

    .line 53
    .local v14, "totalColume":I
    const/4 v8, 0x0

    .line 54
    .local v8, "lineNumber":I
    const/4 v3, 0x0

    .line 59
    .local v3, "columeNumber":I
    :goto_0
    if-lt v8, v15, :cond_0

    .line 120
    return-object p1

    .line 61
    :cond_0
    add-int v16, v8, p4

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-gt v0, v15, :cond_1

    .line 63
    add-int/lit8 v12, p4, -0x1

    .line 70
    .local v12, "realRangeLine":I
    :goto_1
    if-lt v3, v14, :cond_2

    .line 115
    add-int v16, v8, v12

    add-int/lit8 v8, v16, 0x1

    .line 117
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .end local v12    # "realRangeLine":I
    :cond_1
    sub-int v12, v15, v8

    .line 70
    .restart local v12    # "realRangeLine":I
    goto :goto_1

    .line 72
    :cond_2
    add-int v16, v3, p4

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-gt v0, v14, :cond_3

    .line 74
    add-int/lit8 v11, p4, -0x1

    .line 81
    .local v11, "realRangeColume":I
    :goto_2
    const/4 v1, 0x0

    .line 82
    .local v1, "a":I
    const/4 v10, 0x0

    .line 83
    .local v10, "r":I
    const/4 v4, 0x0

    .line 84
    .local v4, "g":I
    const/4 v2, 0x0

    .line 85
    .local v2, "b":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-le v5, v12, :cond_4

    .line 96
    add-int/lit8 v16, v12, 0x1

    add-int/lit8 v17, v11, 0x1

    mul-int v13, v16, v17

    .line 97
    .local v13, "total":I
    div-int/2addr v1, v13

    .line 98
    div-int/2addr v10, v13

    .line 99
    div-int/2addr v4, v13

    .line 100
    div-int/2addr v2, v13

    .line 101
    const/4 v5, 0x0

    :goto_4
    if-le v5, v12, :cond_6

    .line 110
    add-int v16, v3, v11

    add-int/lit8 v3, v16, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v4    # "g":I
    .end local v5    # "i":I
    .end local v10    # "r":I
    .end local v11    # "realRangeColume":I
    .end local v13    # "total":I
    :cond_3
    sub-int v11, v14, v3

    .restart local v11    # "realRangeColume":I
    goto :goto_2

    .line 87
    .restart local v1    # "a":I
    .restart local v2    # "b":I
    .restart local v4    # "g":I
    .restart local v5    # "i":I
    .restart local v10    # "r":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    if-le v7, v11, :cond_5

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 89
    :cond_5
    add-int v16, v8, v5

    mul-int v16, v16, p2

    add-int v16, v16, v3

    add-int v6, v16, v7

    .line 90
    .local v6, "index":I
    aget v16, p1, v6

    shr-int/lit8 v16, v16, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v1, v1, v16

    .line 91
    aget v16, p1, v6

    shr-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v10, v10, v16

    .line 92
    aget v16, p1, v6

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v4, v4, v16

    .line 93
    aget v16, p1, v6

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v2, v2, v16

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 103
    .end local v6    # "index":I
    .end local v7    # "j":I
    .restart local v13    # "total":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_6
    if-le v7, v11, :cond_7

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 105
    :cond_7
    shl-int/lit8 v16, v1, 0x18

    shl-int/lit8 v17, v10, 0x10

    or-int v16, v16, v17

    shl-int/lit8 v17, v4, 0x8

    or-int v16, v16, v17

    or-int v9, v16, v2

    .line 106
    .local v9, "newColor":I
    add-int v16, v8, v5

    mul-int v16, v16, p2

    add-int v16, v16, v3

    add-int v16, v16, v7

    aput v9, p1, v16

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method
