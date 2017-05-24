.class public Lcn/jingling/lib/filters/onekey/ColorPencil;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "ColorPencil.java"


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
    .locals 22
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 15
    .local v5, "w":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 16
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 17
    .local v3, "pixels":[I
    mul-int v2, v5, v9

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 18
    .local v18, "model":[I
    mul-int v2, v5, v9

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 19
    .local v19, "model1":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    const-string v7, "layers/newpencilstroke"

    sget-object v10, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v11, 0x64

    const/4 v12, 0x1

    move-object/from16 v6, p1

    move v8, v5

    invoke-static/range {v6 .. v12}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 22
    .local v20, "tmpBm":Landroid/graphics/Bitmap;
    const-string v7, "layers/canvas_paper7"

    sget-object v10, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v11, 0x64

    const/4 v12, 0x1

    move-object/from16 v6, p1

    move v8, v5

    invoke-static/range {v6 .. v12}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;IZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 26
    .local v21, "tmpBm1":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v20

    move-object/from16 v11, v18

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v21

    move-object/from16 v11, v19

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 32
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1, v5, v9}, Lcn/jingling/lib/filters/CMTProcessor;->ColorPencil([I[I[III)V

    .line 33
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 34
    return-object p2
.end method
