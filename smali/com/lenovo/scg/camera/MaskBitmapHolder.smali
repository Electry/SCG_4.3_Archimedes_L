.class public Lcom/lenovo/scg/camera/MaskBitmapHolder;
.super Ljava/lang/Object;
.source "MaskBitmapHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MaskBitmapHolder"

.field private static holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

.field private static mRes:Landroid/content/res/Resources;


# instance fields
.field private mKuangBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    .line 36
    sput-object p1, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mRes:Landroid/content/res/Resources;

    .line 37
    const v0, 0x7f020636

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 38
    const v0, 0x7f0206e0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->destroyMask()V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .line 92
    :cond_0
    const-string v0, "MaskBitmapHolder.destroy end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private destroyMask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iput-object v1, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    iput-object v1, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 60
    const-class v1, Lcom/lenovo/scg/camera/MaskBitmapHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/MaskBitmapHolder;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .line 63
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    sput-object p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mRes:Landroid/content/res/Resources;

    .line 67
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->holder:Lcom/lenovo/scg/camera/MaskBitmapHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initMaskBitmap()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020636

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0206e0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public makeBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 33
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    const-string v4, "MaskBitmapHolder"

    const-string/jumbo v6, "makeBitmapWithMask"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    move-object/from16 v12, p1

    .line 107
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 110
    .local v14, "destBitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->initMaskBitmap()V

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    .line 114
    :cond_0
    const-string/jumbo v4, "makeBitmapWithMask error!"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_1

    .line 184
    .end local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 p1, v14

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 125
    .local v7, "maskW":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 126
    .local v11, "maskH":I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 127
    .local v29, "srcW":I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 129
    .local v28, "srcH":I
    move/from16 v0, v29

    if-ne v7, v0, :cond_3

    move/from16 v0, v28

    if-eq v11, v0, :cond_5

    .line 130
    :cond_3
    move-object/from16 v27, v12

    .line 131
    .local v27, "recBitmap":Landroid/graphics/Bitmap;
    const/16 v31, 0x0

    .local v31, "x":I
    const/16 v32, 0x0

    .line 132
    .local v32, "y":I
    const/16 v30, 0x0

    .local v30, "width":I
    const/16 v24, 0x0

    .line 133
    .local v24, "height":I
    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 134
    const/16 v31, 0x0

    .line 135
    sub-int v4, v28, v29

    div-int/lit8 v32, v4, 0x2

    .line 136
    move/from16 v30, v29

    .line 137
    move/from16 v24, v29

    .line 139
    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v24

    invoke-static {v12, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 149
    :cond_4
    :goto_1
    const-string v4, "MaskBitmapHolder"

    const-string/jumbo v6, "maskW =%d,maskH =%d, srcW=%d, srcH=%d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v7, v11, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 152
    move-object/from16 v0, v27

    if-eq v0, v12, :cond_5

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 153
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    .end local v24    # "height":I
    .end local v27    # "recBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "width":I
    .end local v31    # "x":I
    .end local v32    # "y":I
    :cond_5
    mul-int v4, v7, v11

    new-array v5, v4, [I

    .line 158
    .local v5, "maskPixels":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 160
    mul-int v4, v7, v11

    new-array v13, v4, [I

    .line 161
    .local v13, "argb":[I
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v15, v7

    move/from16 v18, v7

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 162
    .end local v14    # "destBitmap":Landroid/graphics/Bitmap;
    const/16 v22, 0x0

    .line 164
    .local v22, "alpha":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    array-length v4, v5

    move/from16 v0, v25

    if-ge v0, v4, :cond_9

    .line 165
    aget v4, v5, v25

    const/high16 v6, -0x1000000

    and-int v26, v4, v6

    .line 166
    .local v26, "maskAlpha":I
    const/high16 v4, -0x1000000

    move/from16 v0, v26

    if-ne v0, v4, :cond_8

    .line 167
    const/4 v4, 0x0

    aput v4, v13, v25

    .line 164
    :cond_6
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 140
    .end local v5    # "maskPixels":[I
    .end local v13    # "argb":[I
    .end local v22    # "alpha":I
    .end local v25    # "i":I
    .end local v26    # "maskAlpha":I
    .restart local v14    # "destBitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "height":I
    .restart local v27    # "recBitmap":Landroid/graphics/Bitmap;
    .restart local v30    # "width":I
    .restart local v31    # "x":I
    .restart local v32    # "y":I
    :cond_7
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 141
    sub-int v4, v29, v28

    div-int/lit8 v31, v4, 0x2

    .line 142
    const/16 v32, 0x0

    .line 143
    move/from16 v30, v28

    .line 144
    move/from16 v24, v28

    .line 146
    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v24

    invoke-static {v12, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v27

    goto/16 :goto_1

    .line 168
    .end local v14    # "destBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "height":I
    .end local v27    # "recBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "width":I
    .end local v31    # "x":I
    .end local v32    # "y":I
    .restart local v5    # "maskPixels":[I
    .restart local v13    # "argb":[I
    .restart local v22    # "alpha":I
    .restart local v25    # "i":I
    .restart local v26    # "maskAlpha":I
    :cond_8
    if-eqz v26, :cond_6

    .line 171
    const/high16 v4, -0x1000000

    sub-int v22, v4, v26

    .line 172
    aget v4, v13, v25

    const v6, 0xffffff

    and-int/2addr v4, v6

    aput v4, v13, v25

    .line 173
    aget v4, v13, v25

    or-int v4, v4, v22

    aput v4, v13, v25

    goto :goto_3

    .line 176
    .end local v26    # "maskAlpha":I
    :cond_9
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 177
    .restart local v14    # "destBitmap":Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v13

    move/from16 v17, v7

    move/from16 v20, v7

    move/from16 v21, v11

    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 178
    move-object/from16 v0, p1

    if-eq v12, v0, :cond_a

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 179
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    :cond_a
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v23, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/MaskBitmapHolder;->mKuangBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 p1, v14

    .line 184
    goto/16 :goto_0
.end method
