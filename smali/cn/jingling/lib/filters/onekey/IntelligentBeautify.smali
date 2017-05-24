.class public Lcn/jingling/lib/filters/onekey/IntelligentBeautify;
.super Ljava/lang/Object;
.source "IntelligentBeautify.java"


# static fields
.field private static final FACE_INNER_WIDTH_COEF:D = 18.0

.field private static final FACE_WIDTH_COEF:D = 2.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enlarge([IIIIIII)V
    .locals 14
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "r"    # I
    .param p6, "degree"    # I

    .prologue
    .line 30
    mul-int/lit8 v6, p5, 0x2

    .line 31
    .local v6, "d":I
    sub-int p3, p3, p5

    .line 32
    sub-int p4, p4, p5

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 33
    invoke-static/range {v1 .. v6}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->getFullPixels([IIIIII)[I

    move-result-object v5

    .line 34
    .local v5, "pixels":[I
    move/from16 v0, p6

    int-to-float v1, v0

    const/high16 v2, 0x438c0000    # 280.0f

    div-float v11, v1, v2

    move v7, v6

    move/from16 v8, p5

    move/from16 v9, p5

    move/from16 v10, p5

    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/CMTProcessor;->eyeEnlarge([IIIIIIF)V

    move-object v7, p0

    move v8, p1

    move/from16 v9, p2

    move-object v10, v5

    move/from16 v11, p3

    move/from16 v12, p4

    move v13, v6

    .line 35
    invoke-static/range {v7 .. v13}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->setFullPixels([III[IIII)V

    .line 36
    const/4 v5, 0x0

    .line 37
    return-void
.end method

.method public static getFullPixels([IIIIII)[I
    .locals 7
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x0"    # I
    .param p4, "y0"    # I
    .param p5, "d"    # I

    .prologue
    .line 40
    mul-int v5, p5, p5

    new-array v2, v5, [I

    .line 41
    .local v2, "pixels":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p5, :cond_0

    .line 52
    return-object v2

    .line 42
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p5, :cond_1

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    add-int v3, p3, v1

    .line 44
    .local v3, "px":I
    add-int v4, p4, v0

    .line 45
    .local v4, "py":I
    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    if-ge v3, p1, :cond_2

    if-lt v4, p2, :cond_3

    .line 46
    :cond_2
    mul-int v5, v0, p5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    aput v6, v2, v5

    .line 42
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    mul-int v5, v0, p5

    add-int/2addr v5, v1

    mul-int v6, v4, p1

    add-int/2addr v6, v3

    aget v6, p0, v6

    aput v6, v2, v5

    goto :goto_2
.end method

.method public static partialFaceProcess([IIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 16
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "left"    # Landroid/graphics/Point;
    .param p4, "right"    # Landroid/graphics/Point;
    .param p5, "mouth"    # Landroid/graphics/Point;
    .param p6, "eyeRatio"    # I
    .param p7, "thinRatio"    # I

    .prologue
    .line 15
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 16
    .local v15, "eyeDist":I
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v6, v15, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->enlarge([IIIIIII)V

    .line 17
    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v6, v15, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->enlarge([IIIIIII)V

    .line 18
    if-gez p7, :cond_0

    .line 19
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 20
    .local v7, "negMouth":Landroid/graphics/Point;
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 21
    move-object/from16 v0, p3

    iget v1, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iput v1, v7, Landroid/graphics/Point;->x:I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 22
    invoke-static/range {v1 .. v7}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->updateThin([IIIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 26
    .end local v7    # "negMouth":Landroid/graphics/Point;
    :goto_0
    return-void

    :cond_0
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p7

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 24
    invoke-static/range {v8 .. v14}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->updateThin([IIIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static setFullPixels([III[IIII)V
    .locals 6
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "pixels"    # [I
    .param p4, "x0"    # I
    .param p5, "y0"    # I
    .param p6, "d"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p6, :cond_0

    .line 69
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, p6, :cond_1

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    add-int v2, p4, v1

    .line 60
    .local v2, "px":I
    add-int v3, p5, v0

    .line 61
    .local v3, "py":I
    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-ge v2, p1, :cond_2

    if-ge v3, p2, :cond_2

    .line 62
    mul-int v4, v0, p6

    add-int/2addr v4, v1

    aget v4, p3, v4

    if-eqz v4, :cond_2

    .line 65
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    mul-int v5, v0, p6

    add-int/2addr v5, v1

    aget v5, p3, v5

    aput v5, p0, v4

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static thin([IIIIIIII)V
    .locals 21
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "cx"    # I
    .param p4, "cy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "degree"    # I

    .prologue
    .line 73
    sub-int v1, p5, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p6, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 74
    .local v10, "r":I
    mul-int/lit8 v6, v10, 0x2

    .line 77
    .local v6, "d":I
    sub-int v4, p3, v10

    .line 78
    .local v4, "x0":I
    sub-int v5, p4, v10

    .line 81
    .local v5, "y0":I
    sub-int v1, p5, p3

    div-int/lit8 v1, v1, 0x7

    add-int v12, v1, v10

    .line 82
    .local v12, "vx":I
    sub-int v1, p6, p4

    div-int/lit8 v1, v1, 0x7

    add-int v13, v1, v10

    .local v13, "vy":I
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 83
    invoke-static/range {v1 .. v6}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->getFullPixels([IIIIII)[I

    move-result-object v7

    .line 85
    .local v7, "pixels":[I
    move/from16 v0, p7

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v15, v1, v2

    const/16 v16, 0x1

    move v8, v6

    move v9, v6

    move v11, v10

    move v14, v10

    .line 84
    invoke-static/range {v7 .. v16}, Lcn/jingling/lib/filters/CMTProcessor;->thinEffect([IIIIIIIIFI)V

    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v7

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .line 86
    invoke-static/range {v14 .. v20}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->setFullPixels([III[IIII)V

    .line 87
    const/4 v7, 0x0

    .line 88
    return-void
.end method

.method private static updateThin([IIIILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 66
    .param p0, "bm"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "progressThin"    # I
    .param p4, "left"    # Landroid/graphics/Point;
    .param p5, "right"    # Landroid/graphics/Point;
    .param p6, "mouth"    # Landroid/graphics/Point;

    .prologue
    .line 93
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v58, v0

    .line 94
    .local v58, "x1":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v62, v0

    .line 95
    .local v62, "y1":I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v59, v0

    .line 96
    .local v59, "x2":I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v63, v0

    .line 101
    .local v63, "y2":I
    add-int v2, v58, v59

    div-int/lit8 v42, v2, 0x2

    .line 102
    .local v42, "ecx":I
    add-int v2, v62, v63

    div-int/lit8 v43, v2, 0x2

    .line 103
    .local v43, "ecy":I
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v2, v42

    div-int/lit8 v60, v2, 0x3

    .line 104
    .local v60, "x3":I
    move-object/from16 v0, p6

    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v2, v43

    div-int/lit8 v64, v2, 0x3

    .line 105
    .local v64, "y3":I
    move/from16 v38, v60

    .line 106
    .local v38, "cx":I
    move/from16 v39, v64

    .line 115
    .local v39, "cy":I
    move/from16 v0, v58

    int-to-double v2, v0

    sub-int v4, v59, v58

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v44, v0

    .line 116
    .local v44, "ex":I
    move/from16 v0, v62

    int-to-double v2, v0

    sub-int v4, v62, v63

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    add-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v45, v0

    .line 118
    .local v45, "ey":I
    move/from16 v0, v59

    int-to-double v2, v0

    sub-int v4, v59, v58

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    add-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v46, v0

    .line 119
    .local v46, "fx":I
    move/from16 v0, v63

    int-to-double v2, v0

    sub-int v4, v62, v63

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v47, v0

    .line 121
    .local v47, "fy":I
    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_0

    .line 122
    move/from16 v5, v60

    .line 123
    .local v5, "ax":I
    move v10, v5

    .line 124
    .local v10, "bx":I
    move/from16 v0, v62

    int-to-double v2, v0

    sub-int v4, v62, v63

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    add-double/2addr v2, v12

    double-to-int v6, v2

    .line 125
    .local v6, "ay":I
    move/from16 v0, v63

    int-to-double v2, v0

    sub-int v4, v62, v63

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v11, v2

    .line 166
    .local v11, "by":I
    :goto_0
    move/from16 v0, v38

    int-to-double v2, v0

    sub-int v4, v38, v5

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v7, v2

    .line 167
    .local v7, "cax":I
    move/from16 v0, v39

    int-to-double v2, v0

    sub-int v4, v39, v6

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v8, v2

    .line 168
    .local v8, "cay":I
    move/from16 v0, v38

    int-to-double v2, v0

    sub-int v4, v38, v10

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v27, v0

    .line 169
    .local v27, "cbx":I
    move/from16 v0, v39

    int-to-double v2, v0

    sub-int v4, v39, v11

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v28, v0

    .line 171
    .local v28, "cby":I
    add-int v2, v58, v59

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v60

    div-int/lit8 v40, v2, 0x5

    .line 172
    .local v40, "dx":I
    add-int v2, v62, v63

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v64

    div-int/lit8 v41, v2, 0x5

    .line 174
    .local v41, "dy":I
    mul-int/lit8 v2, v44, 0x3

    add-int/2addr v2, v5

    div-int/lit8 v15, v2, 0x4

    .line 175
    .local v15, "gx":I
    mul-int/lit8 v2, v45, 0x3

    add-int/2addr v2, v6

    div-int/lit8 v16, v2, 0x4

    .line 177
    .local v16, "gy":I
    int-to-double v2, v15

    sub-int v4, v40, v15

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v15, v2

    .line 178
    move/from16 v0, v16

    int-to-double v2, v0

    sub-int v4, v41, v16

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v16, v0

    .line 180
    mul-int/lit8 v2, v46, 0x3

    add-int/2addr v2, v10

    div-int/lit8 v20, v2, 0x4

    .line 181
    .local v20, "hx":I
    mul-int/lit8 v2, v47, 0x3

    add-int/2addr v2, v11

    div-int/lit8 v21, v2, 0x4

    .line 183
    .local v21, "hy":I
    move/from16 v0, v20

    int-to-double v2, v0

    sub-int v4, v40, v20

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v20, v0

    .line 184
    move/from16 v0, v21

    int-to-double v2, v0

    sub-int v4, v41, v21

    int-to-double v12, v4

    const-wide/high16 v18, 0x4032000000000000L    # 18.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v21, v0

    .line 187
    if-gez p3, :cond_3

    .line 188
    mul-int/lit8 v2, v5, 0x2

    sub-int v7, v2, v7

    mul-int/lit8 v2, v6, 0x2

    sub-int v8, v2, v8

    move/from16 v0, p3

    neg-int v9, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    .line 189
    .end local v7    # "cax":I
    .end local v8    # "cay":I
    mul-int/lit8 v2, v10, 0x2

    sub-int v12, v2, v27

    mul-int/lit8 v2, v11, 0x2

    sub-int v13, v2, v28

    move/from16 v0, p3

    neg-int v14, v0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v7 .. v14}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    .line 196
    :goto_1
    return-void

    .line 126
    .end local v5    # "ax":I
    .end local v6    # "ay":I
    .end local v10    # "bx":I
    .end local v11    # "by":I
    .end local v15    # "gx":I
    .end local v16    # "gy":I
    .end local v20    # "hx":I
    .end local v21    # "hy":I
    .end local v27    # "cbx":I
    .end local v28    # "cby":I
    .end local v40    # "dx":I
    .end local v41    # "dy":I
    :cond_0
    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_1

    .line 127
    move/from16 v0, v58

    int-to-double v2, v0

    sub-int v4, v59, v58

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    sub-double/2addr v2, v12

    double-to-int v5, v2

    .line 128
    .restart local v5    # "ax":I
    move/from16 v0, v59

    int-to-double v2, v0

    sub-int v4, v59, v58

    int-to-double v12, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v12, v12, v18

    add-double/2addr v2, v12

    double-to-int v10, v2

    .line 129
    .restart local v10    # "bx":I
    move/from16 v6, v64

    .line 130
    .restart local v6    # "ay":I
    move v11, v6

    .line 131
    .restart local v11    # "by":I
    goto/16 :goto_0

    .line 141
    .end local v5    # "ax":I
    .end local v6    # "ay":I
    .end local v10    # "bx":I
    .end local v11    # "by":I
    :cond_1
    sub-int v2, v62, v63

    int-to-double v2, v2

    sub-int v4, v58, v59

    int-to-double v12, v4

    div-double v48, v2, v12

    .line 142
    .local v48, "k1":D
    add-int v2, v58, v59

    div-int/lit8 v61, v2, 0x2

    .line 143
    .local v61, "xec":I
    add-int v2, v62, v63

    div-int/lit8 v65, v2, 0x2

    .line 145
    .local v65, "yec":I
    move/from16 v0, v61

    move/from16 v1, v60

    if-ne v0, v1, :cond_2

    .line 146
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double v50, v2, v48

    .line 150
    .local v50, "k2":D
    :goto_2
    move-wide/from16 v52, v50

    .line 151
    .local v52, "k3":D
    move/from16 v0, v45

    int-to-double v2, v0

    move/from16 v0, v44

    int-to-double v12, v0

    mul-double v12, v12, v50

    sub-double v30, v2, v12

    .line 152
    .local v30, "b2":D
    move/from16 v0, v47

    int-to-double v2, v0

    move/from16 v0, v46

    int-to-double v12, v0

    mul-double v12, v12, v50

    sub-double v32, v2, v12

    .line 154
    .local v32, "b3":D
    move-wide/from16 v54, v48

    .line 155
    .local v54, "k4":D
    move-wide/from16 v56, v48

    .line 156
    .local v56, "k5":D
    move/from16 v0, v64

    int-to-double v2, v0

    move/from16 v0, v60

    int-to-double v12, v0

    mul-double v12, v12, v54

    sub-double v34, v2, v12

    .line 157
    .local v34, "b4":D
    move/from16 v0, v64

    int-to-double v2, v0

    move/from16 v0, v60

    int-to-double v12, v0

    mul-double v12, v12, v56

    sub-double v36, v2, v12

    .line 160
    .local v36, "b5":D
    sub-double v2, v34, v30

    neg-double v2, v2

    sub-double v12, v54, v50

    div-double/2addr v2, v12

    double-to-int v5, v2

    .line 161
    .restart local v5    # "ax":I
    int-to-double v2, v5

    mul-double v2, v2, v54

    add-double v2, v2, v34

    double-to-int v6, v2

    .line 163
    .restart local v6    # "ay":I
    sub-double v2, v36, v32

    neg-double v2, v2

    sub-double v12, v56, v52

    div-double/2addr v2, v12

    double-to-int v10, v2

    .line 164
    .restart local v10    # "bx":I
    int-to-double v2, v10

    mul-double v2, v2, v56

    add-double v2, v2, v36

    double-to-int v11, v2

    .restart local v11    # "by":I
    goto/16 :goto_0

    .line 148
    .end local v5    # "ax":I
    .end local v6    # "ay":I
    .end local v10    # "bx":I
    .end local v11    # "by":I
    .end local v30    # "b2":D
    .end local v32    # "b3":D
    .end local v34    # "b4":D
    .end local v36    # "b5":D
    .end local v50    # "k2":D
    .end local v52    # "k3":D
    .end local v54    # "k4":D
    .end local v56    # "k5":D
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-int v3, v65, v64

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-int v3, v61, v60

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v0, v2

    move-wide/from16 v50, v0

    .restart local v50    # "k2":D
    goto :goto_2

    .line 191
    .end local v48    # "k1":D
    .end local v50    # "k2":D
    .end local v61    # "xec":I
    .end local v65    # "yec":I
    .restart local v5    # "ax":I
    .restart local v6    # "ay":I
    .restart local v7    # "cax":I
    .restart local v8    # "cay":I
    .restart local v10    # "bx":I
    .restart local v11    # "by":I
    .restart local v15    # "gx":I
    .restart local v16    # "gy":I
    .restart local v20    # "hx":I
    .restart local v21    # "hy":I
    .restart local v27    # "cbx":I
    .restart local v28    # "cby":I
    .restart local v40    # "dx":I
    .restart local v41    # "dy":I
    :cond_3
    mul-int/lit8 v2, v40, 0x2

    add-int/2addr v2, v15

    div-int/lit8 v17, v2, 0x3

    mul-int/lit8 v2, v41, 0x2

    add-int v2, v2, v16

    div-int/lit8 v18, v2, 0x3

    div-int/lit8 v19, p3, 0x2

    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-static/range {v12 .. v19}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    .line 192
    mul-int/lit8 v2, v40, 0x2

    add-int v2, v2, v20

    div-int/lit8 v22, v2, 0x3

    mul-int/lit8 v2, v41, 0x2

    add-int v2, v2, v21

    div-int/lit8 v23, v2, 0x3

    div-int/lit8 v24, p3, 0x2

    move-object/from16 v17, p0

    move/from16 v18, p1

    move/from16 v19, p2

    invoke-static/range {v17 .. v24}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v9, p3

    .line 193
    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    move-object/from16 v22, p0

    move/from16 v23, p1

    move/from16 v24, p2

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v29, p3

    .line 194
    invoke-static/range {v22 .. v29}, Lcn/jingling/lib/filters/onekey/IntelligentBeautify;->thin([IIIIIIII)V

    goto/16 :goto_1
.end method
