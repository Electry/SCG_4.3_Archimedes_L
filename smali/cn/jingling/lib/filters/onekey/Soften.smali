.class public Lcn/jingling/lib/filters/onekey/Soften;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "Soften.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/Soften;->statisticEvent()V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 14
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 15
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 16
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 17
    const/16 v0, 0x46

    invoke-static {v1, v3, v7, v0}, Lcn/jingling/lib/filters/CMTProcessor;->contrastEffect([IIII)V

    .line 19
    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v7, 0x2

    const/16 v10, 0xff

    move-object v5, v1

    move v6, v3

    invoke-static/range {v5 .. v10}, Lcn/jingling/lib/filters/CMTProcessor;->llomo([IIIIII)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 22
    const/4 v1, 0x0

    .line 23
    return-object p2
.end method
