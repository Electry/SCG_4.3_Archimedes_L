.class public Lcn/jingling/lib/filters/onekey/BEEPS;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "BEEPS.java"


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
    .locals 27
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Lcn/jingling/lib/filters/onekey/BEEPS;->statisticEvent()V

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

    .line 29
    .local v11, "srcPixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 30
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 33
    invoke-static {v3, v5, v9}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsSetupAll([III)V

    .line 35
    mul-int v2, v5, v9

    new-array v0, v2, [D

    move-object/from16 v21, v0

    .line 38
    .local v21, "data":[D
    const/16 v20, 0x0

    .local v20, "channel":I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_0

    .line 91
    invoke-static {v11, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsOverlay([I[I)V

    .line 94
    invoke-static {v11, v3}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->beepsDetailRecover([I[I)V

    .line 96
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 97
    return-object p2

    .line 40
    :cond_0
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    mul-int v2, v5, v9

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    .line 47
    move-object/from16 v0, v21

    array-length v2, v0

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v22

    .line 48
    .local v22, "duplicate":[D
    new-instance v23, Ljava/lang/Thread;

    new-instance v2, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;

    .line 49
    move-object/from16 v0, v22

    invoke-direct {v2, v0, v5, v9}, Lcn/jingling/lib/filters/onekey/BEEPSHorizontalVertical;-><init>([DII)V

    .line 48
    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .local v23, "h":Ljava/lang/Thread;
    new-instance v26, Ljava/lang/Thread;

    new-instance v2, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;

    .line 51
    move-object/from16 v0, v21

    invoke-direct {v2, v0, v5, v9}, Lcn/jingling/lib/filters/onekey/BEEPSVerticalHorizontal;-><init>([DII)V

    .line 50
    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    .local v26, "v":Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 53
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->start()V

    .line 55
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->join()V

    .line 56
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_2
    const/16 v25, 0x0

    .local v25, "k":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "K":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 69
    const/16 v24, 0x0

    :goto_4
    mul-int v2, v5, v9

    move/from16 v0, v24

    if-ne v0, v2, :cond_3

    .line 38
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 42
    .end local v18    # "K":I
    .end local v22    # "duplicate":[D
    .end local v23    # "h":Ljava/lang/Thread;
    .end local v25    # "k":I
    .end local v26    # "v":Ljava/lang/Thread;
    :cond_1
    aget v2, v3, v24

    mul-int/lit8 v4, v20, 0x8

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    int-to-double v6, v2

    aput-wide v6, v21, v24

    .line 40
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 65
    .restart local v18    # "K":I
    .restart local v22    # "duplicate":[D
    .restart local v23    # "h":Ljava/lang/Thread;
    .restart local v25    # "k":I
    .restart local v26    # "v":Ljava/lang/Thread;
    :cond_2
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v12, v21, v25

    aget-wide v14, v22, v25

    add-double/2addr v12, v14

    mul-double/2addr v6, v12

    aput-wide v6, v21, v25

    .line 63
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 70
    :cond_3
    aget-wide v6, v21, v24

    double-to-int v0, v6

    move/from16 v19, v0

    .line 71
    .local v19, "ccc":I
    if-nez v20, :cond_4

    .line 73
    aget v2, v3, v24

    and-int/lit16 v2, v2, -0x100

    aput v2, v3, v24

    .line 74
    aget v2, v3, v24

    or-int v2, v2, v19

    aput v2, v3, v24

    .line 76
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 78
    aget v2, v3, v24

    const v4, -0xff01

    and-int/2addr v2, v4

    aput v2, v3, v24

    .line 79
    aget v2, v3, v24

    shl-int/lit8 v4, v19, 0x8

    or-int/2addr v2, v4

    aput v2, v3, v24

    .line 81
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    .line 83
    aget v2, v3, v24

    const v4, -0xff0001

    and-int/2addr v2, v4

    aput v2, v3, v24

    .line 84
    aget v2, v3, v24

    shl-int/lit8 v4, v19, 0x10

    or-int/2addr v2, v4

    aput v2, v3, v24

    .line 69
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 57
    .end local v18    # "K":I
    .end local v19    # "ccc":I
    .end local v25    # "k":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
