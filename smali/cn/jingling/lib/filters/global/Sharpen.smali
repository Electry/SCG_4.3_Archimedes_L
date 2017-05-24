.class public Lcn/jingling/lib/filters/global/Sharpen;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "Sharpen.java"


# instance fields
.field private mPerformedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 27
    iget-object v1, p0, Lcn/jingling/lib/filters/global/Sharpen;->mPerformedBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/jingling/lib/filters/global/Sharpen;->mOriginalBitmap:Landroid/graphics/Bitmap;

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Sharpen;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/Sharpen;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 17
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 18
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    const/4 v0, 0x6

    invoke-static {v1, v3, v7, v0}, Lcn/jingling/lib/filters/CMTProcessor;->sharpenEffect([IIII)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/Sharpen;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method
