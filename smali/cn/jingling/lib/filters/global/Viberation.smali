.class public Lcn/jingling/lib/filters/global/Viberation;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "Viberation.java"


# instance fields
.field private mPerformedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/jingling/lib/filters/GlobalFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v4, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 31
    .local v3, "w":I
    iget-object v4, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 32
    .local v7, "h":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 33
    .local v1, "pixels":[I
    iget-object v4, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, "bmm":Landroid/graphics/Bitmap;
    int-to-double v4, p2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v10

    double-to-float v8, v4

    .local v8, "scale":F
    move v4, v2

    move v5, v2

    move v6, v3

    .line 35
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    invoke-static {v1, v3, v7, v8}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->ViberationControl([IIIF)V

    move v4, v2

    move v5, v2

    move v6, v3

    .line 37
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 38
    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 44
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->ViberationRelease()V

    .line 45
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 19
    .local v3, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 20
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 21
    .local v1, "pixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/global/Viberation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    invoke-static {v1, v3, v7}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->ViberationInitial([III)V

    .line 24
    return-void
.end method
