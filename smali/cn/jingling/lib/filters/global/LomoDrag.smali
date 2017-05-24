.class public Lcn/jingling/lib/filters/global/LomoDrag;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "LomoDrag.java"


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
.method public apply(Landroid/content/Context;[I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degrees"    # [I

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 27
    .local v3, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 28
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 29
    .local v1, "pixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mOriginalBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 30
    const/high16 v8, -0x1000000

    const/16 v9, 0x96

    const/4 v0, 0x1

    aget v10, p2, v0

    aget v11, p2, v2

    move-object v5, v1

    move v6, v3

    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/CMTProcessor;->lomo([IIIIIII)V

    .line 31
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 32
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 44
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 17
    .local v1, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 18
    .local v0, "h":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/jingling/lib/filters/global/LomoDrag;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 19
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcn/jingling/lib/filters/global/LomoDrag;->setSeekBarNumber(I)V

    .line 20
    return-void
.end method
