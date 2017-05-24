.class public Lcn/jingling/lib/filters/global/Saturation;
.super Lcn/jingling/lib/filters/GlobalFilter;
.source "Saturation.java"


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
    .locals 4
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "degree"    # I

    .prologue
    .line 13
    iget-object v1, p0, Lcn/jingling/lib/filters/global/Saturation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/jingling/lib/filters/global/Saturation;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturation(Landroid/graphics/Bitmap;I)V

    .line 15
    return-object v0
.end method
