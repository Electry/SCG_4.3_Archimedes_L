.class public Lcn/jingling/lib/filters/onekey/WaterColor;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "WaterColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 15
    .local v4, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 16
    .local v8, "h":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 17
    .local v2, "pixels":[I
    mul-int v1, v4, v8

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .line 18
    .local v17, "model":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    const-string v6, "layers/canvas_brush_stroke"

    sget-object v9, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object/from16 v5, p1

    move v7, v4

    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 21
    .local v9, "tmpBm":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, v17

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    move-object/from16 v0, v17

    invoke-static {v2, v0, v4, v8}, Lcn/jingling/lib/filters/CMTProcessor;->WaterColor([I[III)V

    .line 27
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 28
    return-object p2
.end method
