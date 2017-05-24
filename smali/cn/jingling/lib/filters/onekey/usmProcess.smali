.class public Lcn/jingling/lib/filters/onekey/usmProcess;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "usmProcess.java"


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
    const/16 v8, 0x32

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/usmProcess;->statisticEvent()V

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

    move-object v5, v1

    move v6, v3

    move v9, v2

    move v10, v8

    .line 20
    invoke-static/range {v5 .. v10}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->usmProcess([IIIIII)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 22
    return-object p2
.end method
