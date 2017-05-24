.class public Lcn/jingling/lib/filters/global/Brightness;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "Brightness.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    const/4 v2, 0x0

    .line 13
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Brightness;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 14
    .local v3, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Brightness;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 15
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 16
    .local v1, "pixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Brightness;->mOriginalBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 17
    invoke-static {v1, v3, v7, p2}, Lcn/jingling/lib/filters/CMTProcessor;->brightEffect([IIII)V

    .line 18
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Brightness;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
