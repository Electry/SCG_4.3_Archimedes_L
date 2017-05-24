.class public Lcn/jingling/lib/filters/onekey/SkinBEEPS;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "SkinBEEPS.java"


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
    .locals 30
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/SkinBEEPS;->statisticEvent()V

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 24
    .local v5, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 26
    .local v9, "height":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 27
    .local v3, "pixels":[I
    mul-int v2, v5, v9

    new-array v11, v2, [I

    .line 28
    .local v11, "srcPixels":[I
    mul-int v2, v5, v9

    new-array v0, v2, [I

    move-object/from16 v28, v0

    .line 30
    .local v28, "skinPixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 31
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 32
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, v28

    move v15, v5

    move/from16 v18, v5

    move/from16 v19, v9

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 34
    invoke-static {v3, v5, v9}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsSetupAll([III)V

    .line 36
    mul-int v2, v5, v9

    new-array v0, v2, [D

    move-object/from16 v23, v0

    .line 39
    .local v23, "data":[D
    const/16 v22, 0x0

    .local v22, "channel":I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_0

    .line 92
    invoke-static {v11, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsOverlay([I[I)V

    .line 95
    invoke-static {v11, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsDetailRecover([I[I)V

    .line 96
    move-object/from16 v0, v28

    invoke-static {v0, v3, v5, v9}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->skinOverLay([I[III)V

    .line 97
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 98
    return-object p2

    .line 41
    :cond_0
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    mul-int v2, v5, v9

    move/from16 v0, v26

    if-ne v0, v2, :cond_1

    .line 48
    move-object/from16 v0, v23

    array-length v2, v0

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v24

    .line 49
    .local v24, "duplicate":[D
    new-instance v25, Ljava/lang/Thread;

    new-instance v2, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;

    .line 50
    move-object/from16 v0, v24

    invoke-direct {v2, v0, v5, v9}, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;-><init>([DII)V

    .line 49
    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    .local v25, "h":Ljava/lang/Thread;
    new-instance v29, Ljava/lang/Thread;

    new-instance v2, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;

    .line 52
    move-object/from16 v0, v23

    invoke-direct {v2, v0, v5, v9}, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;-><init>([DII)V

    .line 51
    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    .local v29, "v":Ljava/lang/Thread;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->start()V

    .line 54
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->start()V

    .line 56
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Thread;->join()V

    .line 57
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_2
    const/16 v27, 0x0

    .local v27, "k":I
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "K":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 70
    const/16 v26, 0x0

    :goto_4
    mul-int v2, v5, v9

    move/from16 v0, v26

    if-ne v0, v2, :cond_3

    .line 39
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 43
    .end local v20    # "K":I
    .end local v24    # "duplicate":[D
    .end local v25    # "h":Ljava/lang/Thread;
    .end local v27    # "k":I
    .end local v29    # "v":Ljava/lang/Thread;
    :cond_1
    aget v2, v3, v26

    mul-int/lit8 v4, v22, 0x8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-double v6, v2

    aput-wide v6, v23, v26

    .line 41
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 66
    .restart local v20    # "K":I
    .restart local v24    # "duplicate":[D
    .restart local v25    # "h":Ljava/lang/Thread;
    .restart local v27    # "k":I
    .restart local v29    # "v":Ljava/lang/Thread;
    :cond_2
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v12, v23, v27

    aget-wide v14, v24, v27

    add-double/2addr v12, v14

    mul-double/2addr v6, v12

    aput-wide v6, v23, v27

    .line 64
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 71
    :cond_3
    aget-wide v6, v23, v26

    double-to-int v0, v6

    move/from16 v21, v0

    .line 72
    .local v21, "ccc":I
    if-nez v22, :cond_4

    .line 74
    aget v2, v3, v26

    and-int/lit16 v2, v2, -0x100

    aput v2, v3, v26

    .line 75
    aget v2, v3, v26

    or-int v2, v2, v21

    aput v2, v3, v26

    .line 77
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 79
    aget v2, v3, v26

    const v4, -0xff01

    and-int/2addr v2, v4

    aput v2, v3, v26

    .line 80
    aget v2, v3, v26

    shl-int/lit8 v4, v21, 0x8

    or-int/2addr v2, v4

    aput v2, v3, v26

    .line 82
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    .line 84
    aget v2, v3, v26

    const v4, -0xff0001

    and-int/2addr v2, v4

    aput v2, v3, v26

    .line 85
    aget v2, v3, v26

    shl-int/lit8 v4, v21, 0x10

    or-int/2addr v2, v4

    aput v2, v3, v26

    .line 70
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 58
    .end local v20    # "K":I
    .end local v21    # "ccc":I
    .end local v27    # "k":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
