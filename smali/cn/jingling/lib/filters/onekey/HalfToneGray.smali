.class public Lcn/jingling/lib/filters/onekey/HalfToneGray;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "HalfToneGray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 16
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 17
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 18
    .local v2, "pixels":[I
    const/16 v1, 0x190

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 19
    .local v17, "model":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    const-string v10, "layers/dot10"

    const/16 v11, 0x14

    const/16 v12, 0x14

    sget-object v13, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v14, 0x64

    const/4 v15, 0x1

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 23
    .local v9, "tmpBm":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x14

    const/16 v16, 0x14

    move-object/from16 v10, v17

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 25
    const/16 v14, 0x14

    const/16 v15, 0x14

    const/16 v16, 0x0

    move-object v10, v2

    move v11, v4

    move v12, v8

    move-object/from16 v13, v17

    invoke-static/range {v10 .. v16}, Lcn/jingling/lib/filters/CMTProcessor;->HalfTone([III[IIII)V

    .line 27
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 29
    return-object p2
.end method
