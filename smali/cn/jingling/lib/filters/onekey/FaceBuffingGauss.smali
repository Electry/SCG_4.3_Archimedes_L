.class public Lcn/jingling/lib/filters/onekey/FaceBuffingGauss;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "FaceBuffingGauss.java"


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
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/FaceBuffingGauss;->statisticEvent()V

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
    const/16 v0, 0xa

    const/4 v4, 0x1

    invoke-static {v1, v3, v7, v0, v4}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->buffingTemplate([IIIII)V

    .line 19
    new-instance v11, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/mopitest4.dat"

    invoke-direct {v11, p1, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .local v11, "c":Lcn/jingling/lib/filters/Curve;
    invoke-virtual {v11}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v8

    .line 21
    invoke-virtual {v11}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v9

    invoke-virtual {v11}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v10

    move-object v5, v1

    move v6, v3

    .line 20
    invoke-static/range {v5 .. v10}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->faceBuffing([III[I[I[I)V

    .line 22
    invoke-static {}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->releaseSource()V

    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 24
    return-object p2
.end method
