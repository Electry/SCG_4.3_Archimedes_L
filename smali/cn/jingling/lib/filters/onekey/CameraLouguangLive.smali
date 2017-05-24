.class public Lcn/jingling/lib/filters/onekey/CameraLouguangLive;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraLouguangLive.java"


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
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/jingling/lib/filters/onekey/CameraLouguangLive;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "args"    # [I

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/CameraLouguangLive;->statisticEvent()V

    .line 20
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 21
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 22
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    const-string v0, "layers/live_louguang_1"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 25
    invoke-static {p1, v0, v3, v7, v4}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I

    move-result-object v0

    .line 26
    const/16 v4, 0x32

    .line 25
    invoke-static {v1, v0, v3, v7, v4}, Lcn/jingling/lib/filters/CMTProcessor;->overlayAlphaEffect([I[IIII)V

    .line 28
    const-string v0, "layers/live_louguang_2"

    sget-object v4, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    .line 27
    invoke-static {p1, v0, v3, v7, v4}, Lcn/jingling/lib/filters/Layer;->getLayerPixels(Landroid/content/Context;Ljava/lang/String;IILcn/jingling/lib/filters/Layer$Type;)[I

    move-result-object v0

    invoke-static {v1, v0, v3, v7}, Lcn/jingling/lib/filters/CMTProcessor;->screenEffect([I[III)V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 29
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 30
    const/4 v1, 0x0

    .line 31
    return-object p2
.end method
