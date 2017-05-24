.class public Lcn/jingling/lib/filters/global/TestSkin;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "TestSkin.java"


# instance fields
.field private mPerformedBitmap:Landroid/graphics/Bitmap;


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
    .line 22
    iget-object v1, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 23
    iget-object v2, p0, Lcn/jingling/lib/filters/global/TestSkin;->mOriginalBitmap:Landroid/graphics/Bitmap;

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 22
    invoke-static {v1, v2, v4, v5}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcn/jingling/lib/filters/GlobalFilter;->release()V

    .line 30
    iget-object v0, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 34
    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/GlobalFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 16
    iget-object v0, p0, Lcn/jingling/lib/filters/global/TestSkin;->mPerformedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcn/jingling/lib/filters/global/SmoothSkin;->setup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 17
    return-void
.end method
