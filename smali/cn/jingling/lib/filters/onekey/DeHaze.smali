.class public Lcn/jingling/lib/filters/onekey/DeHaze;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "DeHaze.java"


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
    .locals 12
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/DeHaze;->statisticEvent()V

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

    .line 18
    const/high16 v9, 0x3f800000    # 1.0f

    .line 19
    .local v9, "Rat":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 20
    .local v10, "RatE":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 21
    .local v11, "RatL":F
    const/4 v8, -0x1

    .local v8, "level":I
    move-object v5, v1

    move v6, v3

    .line 23
    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->deHaze([IIIIFFF)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 26
    return-object p2
.end method
