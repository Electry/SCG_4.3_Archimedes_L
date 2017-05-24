.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ImageBlurHelper;
.super Ljava/lang/Object;
.source "ImageBlurHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fastblur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_0

    .line 43
    const/4 v2, 0x0

    .line 239
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 46
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 47
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 49
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 50
    .local v3, "pix":[I
    const-string/jumbo v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 53
    add-int/lit8 v36, v5, -0x1

    .line 54
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 55
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 56
    .local v35, "wh":I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 58
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 59
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 60
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 62
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 64
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 65
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 66
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 67
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 68
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 67
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 71
    :cond_1
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 73
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 78
    .local v31, "stack":[[I
    add-int/lit8 v25, p2, 0x1

    .line 82
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 83
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 84
    .local v27, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    .line 85
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 86
    .local v23, "p":I
    add-int v4, v22, p2

    aget-object v30, v31, v4

    .line 87
    .local v30, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 88
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 89
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 90
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 91
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 92
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 93
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 94
    if-lez v22, :cond_2

    .line 95
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 96
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 97
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 84
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 99
    :cond_2
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 100
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 101
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 104
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_3
    move/from16 v32, p2

    .line 106
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 108
    aget v4, v16, v29

    aput v4, v24, v39

    .line 109
    aget v4, v16, v20

    aput v4, v17, v39

    .line 110
    aget v4, v16, v13

    aput v4, v10, v39

    .line 112
    sub-int v29, v29, v28

    .line 113
    sub-int v20, v20, v19

    .line 114
    sub-int/2addr v13, v12

    .line 116
    sub-int v4, v32, p2

    add-int v33, v4, v14

    .line 117
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 119
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 120
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 121
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 123
    if-nez v38, :cond_4

    .line 124
    add-int v4, v37, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 126
    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 128
    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 129
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 130
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 132
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 133
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 134
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 136
    add-int v29, v29, v27

    .line 137
    add-int v20, v20, v18

    .line 138
    add-int/2addr v13, v11

    .line 140
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 141
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 143
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 144
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 145
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 147
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 148
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 149
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 151
    add-int/lit8 v39, v39, 0x1

    .line 106
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 153
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_5
    add-int v41, v41, v5

    .line 82
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 155
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_6
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 156
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 157
    .restart local v27    # "rinsum":I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 158
    .local v40, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_9

    .line 159
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 161
    add-int v4, v22, p2

    aget-object v30, v31, v4

    .line 163
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 164
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 165
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 167
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 169
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 170
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 171
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 173
    if-lez v22, :cond_8

    .line 174
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 175
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 176
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 183
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 184
    add-int v40, v40, v5

    .line 158
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 178
    :cond_8
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 179
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 180
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 187
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_9
    move/from16 v39, v37

    .line 188
    move/from16 v32, p2

    .line 189
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 191
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 193
    sub-int v29, v29, v28

    .line 194
    sub-int v20, v20, v19

    .line 195
    sub-int/2addr v13, v12

    .line 197
    sub-int v4, v32, p2

    add-int v33, v4, v14

    .line 198
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 200
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 201
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 202
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 204
    if-nez v37, :cond_a

    .line 205
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 207
    :cond_a
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 209
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 210
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 211
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 213
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 214
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 215
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 217
    add-int v29, v29, v27

    .line 218
    add-int v20, v20, v18

    .line 219
    add-int/2addr v13, v11

    .line 221
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 222
    aget-object v30, v31, v32

    .line 224
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 225
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 226
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 228
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 229
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 230
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 232
    add-int v39, v39, v5

    .line 189
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 155
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 236
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_c
    const-string/jumbo v4, "pix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
