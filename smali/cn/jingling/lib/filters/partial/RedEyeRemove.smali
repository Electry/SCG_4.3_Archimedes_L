.class public Lcn/jingling/lib/filters/partial/RedEyeRemove;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "RedEyeRemove.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 15
    .local v17, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 16
    .local v16, "h":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/RedEyeRemove;->mRadius:I

    sub-int v6, v2, v4

    .line 17
    .local v6, "x0":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/RedEyeRemove;->mRadius:I

    sub-int v7, v2, v4

    .line 18
    .local v7, "y0":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/RedEyeRemove;->mRadius:I

    add-int v18, v2, v4

    .line 19
    .local v18, "x1":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/RedEyeRemove;->mRadius:I

    add-int v19, v2, v4

    .line 21
    .local v19, "y1":I
    if-gez v6, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object p1

    .line 23
    :cond_1
    if-ltz v7, :cond_0

    .line 25
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 27
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 30
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v13, v2, v6

    .line 31
    .local v13, "xr0":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int v14, v2, v7

    .line 32
    .local v14, "yr0":I
    sub-int v9, v19, v7

    .line 33
    .local v9, "h0":I
    sub-int v5, v18, v6

    .line 35
    .local v5, "w0":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 36
    .local v3, "pixels":[I
    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 37
    move-object/from16 v0, p0

    iget v15, v0, Lcn/jingling/lib/filters/partial/RedEyeRemove;->mRadius:I

    move-object v10, v3

    move v11, v5

    move v12, v9

    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->redeyeEffect([IIIIII)V

    .line 38
    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method
