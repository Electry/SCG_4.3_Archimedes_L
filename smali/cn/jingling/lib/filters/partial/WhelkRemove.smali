.class public Lcn/jingling/lib/filters/partial/WhelkRemove;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "WhelkRemove.java"


# instance fields
.field private FIX_BOUND:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcn/jingling/lib/filters/partial/WhelkRemove;->FIX_BOUND:I

    .line 9
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 37
    move-object/from16 v2, p1

    .line 42
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 43
    .local v18, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 45
    .local v17, "h":I
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->FIX_BOUND:I

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iput v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    .line 46
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    sub-int v6, v4, v8

    .line 47
    .local v6, "x0":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    sub-int v7, v4, v8

    .line 48
    .local v7, "y0":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    add-int v19, v4, v8

    .line 49
    .local v19, "x1":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    add-int v20, v4, v8

    .line 51
    .local v20, "y1":I
    if-gez v6, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 53
    :cond_1
    if-ltz v7, :cond_0

    .line 55
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 57
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 60
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int v13, v4, v6

    .line 61
    .local v13, "xr0":I
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int v14, v4, v7

    .line 62
    .local v14, "yr0":I
    sub-int v9, v20, v7

    .line 63
    .local v9, "h0":I
    sub-int v5, v19, v6

    .line 66
    .local v5, "w0":I
    mul-int v4, v5, v9

    :try_start_0
    new-array v3, v4, [I

    .line 67
    .local v3, "pixels":[I
    const/4 v4, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 69
    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->mRadius:I

    .line 70
    move-object/from16 v0, p0

    iget v8, v0, Lcn/jingling/lib/filters/partial/WhelkRemove;->FIX_BOUND:I

    sub-int v15, v4, v8

    move-object v10, v3

    move v11, v5

    move v12, v9

    .line 69
    invoke-static/range {v10 .. v15}, Lcn/jingling/lib/filters/CMTProcessor;->skinSmoothPointEffect([IIIIII)V

    .line 71
    const/4 v4, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v3    # "pixels":[I
    :catch_0
    move-exception v16

    .line 75
    .local v16, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
