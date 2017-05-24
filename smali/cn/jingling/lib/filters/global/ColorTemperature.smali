.class public Lcn/jingling/lib/filters/global/ColorTemperature;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "ColorTemperature.java"


# instance fields
.field mDefaultSeekBarValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    .line 9
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 43
    .local v2, "originBm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 45
    .local v10, "performedBm":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 46
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 47
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 51
    .local v3, "pixels_src":[I
    mul-int v18, v5, v9

    .line 53
    .local v18, "size":I
    div-int/lit8 v4, p2, 0x2

    const/16 v6, 0x22

    if-ge v4, v6, :cond_0

    div-int/lit8 v4, p2, 0x2

    add-int/lit8 v19, v4, 0x17

    .line 63
    .local v19, "temperature":I
    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 64
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v3, v0, v1}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->ColorTemperature([I[III)I

    .line 65
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 68
    return-object v10

    .line 56
    .end local v19    # "temperature":I
    :cond_0
    div-int/lit8 v4, p2, 0x2

    add-int/lit8 v4, v4, -0x22

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v19, v4, 0x39

    .restart local v19    # "temperature":I
    goto :goto_0
.end method

.method public getDefaultSeekBarValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    return v0
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 17
    iget-object v0, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 18
    .local v0, "originBm":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 20
    .local v8, "performedBm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 21
    .local v3, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 22
    .local v7, "h":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 24
    .local v1, "pixels_src":[I
    mul-int v9, v3, v7

    .local v9, "size":I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 27
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 28
    const/4 v2, -0x1

    invoke-static {v1, v1, v9, v2}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->ColorTemperature([I[III)I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    .line 29
    iget v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    iget v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    add-int/lit8 v2, v2, -0x17

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    add-int/lit8 v2, v2, -0x39

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x22

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/jingling/lib/filters/global/ColorTemperature;->mDefaultSeekBarValue:I

    goto :goto_0
.end method
