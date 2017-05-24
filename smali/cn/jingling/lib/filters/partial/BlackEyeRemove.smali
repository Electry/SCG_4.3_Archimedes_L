.class public Lcn/jingling/lib/filters/partial/BlackEyeRemove;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "BlackEyeRemove.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 12
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/filters/partial/BlackEyeRemove;->setNeededPointNumber(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # [Landroid/graphics/Point;

    .prologue
    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 19
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 20
    .local v8, "h":I
    const/4 v1, 0x0

    aget-object v19, p2, v1

    .line 21
    .local v19, "left":Landroid/graphics/Point;
    const/4 v1, 0x1

    aget-object v20, p2, v1

    .line 22
    .local v20, "right":Landroid/graphics/Point;
    move-object/from16 v0, v20

    iget v1, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v11, v1, 0x3

    .line 24
    .local v11, "radius":I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 25
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 27
    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 28
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/filters/partial/BlackEyeRemove;->mRadius:I

    move/from16 v18, v0

    move v14, v11

    move-object v15, v2

    move/from16 v16, v4

    move/from16 v17, v8

    .line 27
    invoke-static/range {v9 .. v18}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->InitializeCircle(IIIIII[IIII)V

    .line 29
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 31
    return-object p1
.end method
