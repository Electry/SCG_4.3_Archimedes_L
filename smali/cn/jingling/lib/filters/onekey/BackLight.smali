.class public Lcn/jingling/lib/filters/onekey/BackLight;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "BackLight.java"


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
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/BackLight;->statisticEvent()V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 15
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 17
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
    new-instance v8, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/Untitled1.amp"

    invoke-direct {v8, p1, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .local v8, "darkerCurve":Lcn/jingling/lib/filters/Curve;
    new-instance v9, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/Untitled2.amp"

    invoke-direct {v9, p1, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v9, "lighterCurve":Lcn/jingling/lib/filters/Curve;
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 26
    return-object p2
.end method
