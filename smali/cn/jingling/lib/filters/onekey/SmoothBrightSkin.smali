.class public Lcn/jingling/lib/filters/onekey/SmoothBrightSkin;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "SmoothBrightSkin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/SmoothBrightSkin;->statisticEvent()V

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 17
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 18
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    const/16 v0, 0xa

    invoke-static {v1, v3, v7, v0, v2}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 21
    new-instance v12, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/skin_smooth.dat"

    invoke-direct {v12, p1, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .local v12, "curve":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v8

    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v9

    .line 24
    invoke-virtual {v12}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v10

    const/16 v11, 0x32

    move-object v5, v1

    move v6, v3

    .line 22
    invoke-static/range {v5 .. v11}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffingWeight([III[I[I[II)V

    .line 25
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 30
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 32
    return-object p2
.end method
