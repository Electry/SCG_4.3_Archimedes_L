.class public Lcn/jingling/lib/filters/onekey/Gray;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Gray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/Gray;->statisticEvent()V

    .line 17
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11}, Landroid/graphics/Canvas;-><init>()V

    .line 18
    .local v11, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v11, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 19
    const/16 v0, 0x14

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .line 22
    .local v8, "a":[F
    new-instance v10, Landroid/graphics/ColorMatrix;

    invoke-direct {v10}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 23
    .local v10, "cMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v10, v8}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 24
    new-instance v9, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v9, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 25
    .local v9, "cFilter":Landroid/graphics/ColorMatrixColorFilter;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 28
    invoke-virtual {v11, p2, v4, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 29
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 32
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 33
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    const/16 v0, 0x3c

    invoke-static {v1, v3, v7, v0}, Lcn/jingling/lib/filters/CMTProcessor;->contrastEffect([IIII)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 36
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 37
    const/4 v1, 0x0

    .line 38
    return-object p2

    .line 19
    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3f170a3d    # 0.59f
        0x3de147ae    # 0.11f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
