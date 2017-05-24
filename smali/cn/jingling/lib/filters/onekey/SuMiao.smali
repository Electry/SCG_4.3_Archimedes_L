.class public Lcn/jingling/lib/filters/onekey/SuMiao;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "SuMiao.java"


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
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/SuMiao;->statisticEvent()V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 14
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

    .line 18
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    invoke-static {v1, v3, v7}, Lcn/jingling/lib/filters/CMTProcessor;->sketchEffect([III)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 23
    const/4 v1, 0x0

    .line 24
    return-object p2
.end method
