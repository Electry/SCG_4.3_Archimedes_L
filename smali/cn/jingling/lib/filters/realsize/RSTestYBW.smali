.class public Lcn/jingling/lib/filters/realsize/RSTestYBW;
.super Lcn/jingling/lib/filters/RealsizeFilter;
.source "RSTestYBW.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/filters/realsize/RSTestYBW;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/RealsizeFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 22
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 16
    :try_start_0
    invoke-super/range {p0 .. p4}, Lcn/jingling/lib/filters/RealsizeFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    .line 18
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 19
    const/16 v18, 0x0

    .line 78
    :goto_0
    return v18

    .line 21
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcn/jingling/lib/filters/realsize/RSTestYBW;->checkJpg(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 22
    const/16 v18, 0x0

    goto :goto_0

    .line 25
    :cond_1
    invoke-static/range {p2 .. p2}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegReader(Ljava/lang/String;)I

    move-result v8

    .line 27
    .local v8, "initReader":I
    if-eqz v8, :cond_2

    .line 28
    const/16 v18, 0x0

    goto :goto_0

    .line 31
    :cond_2
    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x5a

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcn/jingling/lib/jpegsupport/JpegSupport;->initJpegWriter(Ljava/lang/String;III)I

    move-result v9

    .line 33
    .local v9, "initWriter":I
    if-eqz v9, :cond_3

    .line 34
    const/16 v18, 0x0

    goto :goto_0

    .line 37
    :cond_3
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageHeight()I

    move-result v6

    .line 38
    .local v6, "h":I
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->getReaderSrcImageWidth()I

    move-result v17

    .line 42
    .local v17, "w":I
    const/4 v12, 0x5

    .line 43
    .local v12, "r":I
    const/16 v16, 0x3

    .line 44
    .local v16, "times":I
    const/4 v4, 0x3

    .line 46
    .local v4, "channel":I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v12, v0, v6, v1, v4}, Lcn/jingling/lib/filters/CMTProcessor;->progressiveLineInitialize(IIIII)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 50
    .local v14, "time":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v6, :cond_4

    .line 59
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    const/16 v18, 0xf

    move/from16 v0, v18

    if-lt v10, v0, :cond_6

    .line 66
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishWritingAndRelease()V

    .line 67
    invoke-static {}, Lcn/jingling/lib/jpegsupport/JpegSupport;->finishReadingAndRelease()V

    .line 69
    sget-object v18, Lcn/jingling/lib/filters/realsize/RSTestYBW;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "time consume: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/16 v18, 0x1

    goto :goto_0

    .line 51
    .end local v10    # "j":I
    :cond_4
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcn/jingling/lib/jpegsupport/JpegSupport;->readJpegLines(I)[I

    move-result-object v13

    .line 53
    .local v13, "srcPixels":[I
    move/from16 v0, v17

    invoke-static {v13, v0}, Lcn/jingling/lib/filters/CMTProcessor;->progressiveLineProcess([II)[I

    move-result-object v11

    .line 54
    .local v11, "outPixels":[I
    if-eqz v11, :cond_5

    .line 55
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I

    .line 50
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 60
    .end local v11    # "outPixels":[I
    .end local v13    # "srcPixels":[I
    .restart local v10    # "j":I
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcn/jingling/lib/filters/CMTProcessor;->progressiveLineProcess([II)[I

    move-result-object v11

    .line 61
    .restart local v11    # "outPixels":[I
    if-eqz v11, :cond_7

    .line 62
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v11, v0}, Lcn/jingling/lib/jpegsupport/JpegSupport;->writeJpegLines([II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 75
    .end local v4    # "channel":I
    .end local v6    # "h":I
    .end local v7    # "i":I
    .end local v8    # "initReader":I
    .end local v9    # "initWriter":I
    .end local v10    # "j":I
    .end local v11    # "outPixels":[I
    .end local v12    # "r":I
    .end local v14    # "time":J
    .end local v16    # "times":I
    .end local v17    # "w":I
    :catch_0
    move-exception v5

    .line 77
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/16 v18, 0x0

    goto/16 :goto_0
.end method
