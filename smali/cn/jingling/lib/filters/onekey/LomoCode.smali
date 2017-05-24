.class public Lcn/jingling/lib/filters/onekey/LomoCode;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "LomoCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/LomoCode;->statisticEvent()V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 15
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 16
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    const/high16 v8, -0x1000000

    const/16 v9, 0x96

    const/16 v10, 0x50

    const/16 v11, 0x32

    move-object v5, v1

    move v6, v3

    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/CMTProcessor;->lomo([IIIIIII)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 20
    const/4 v1, 0x0

    .line 21
    return-object p2
.end method
