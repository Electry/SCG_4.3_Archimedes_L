.class public Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraHefeLive.java"


# instance fields
.field private mCurve:Lcn/jingling/lib/filters/Curve;

.field private mLayer_m:Landroid/graphics/Bitmap;

.field private mLayer_o:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 17
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live_hefe.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    .line 18
    const-string v0, "layers/live_hefe_o"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    invoke-static {p1, v0, v1}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_o:Landroid/graphics/Bitmap;

    .line 19
    const-string v0, "layers/live_hefe_m"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v2, 0xcc

    invoke-static {p1, v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_m:Landroid/graphics/Bitmap;

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    .line 26
    array-length v2, p2

    .line 30
    .local v2, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_m:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v1

    .line 31
    .local v1, "layerPixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object v0, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->rsMultiplyEffect([I[IIIII)V

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v1

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/16 v6, 0x14

    move-object v0, p2

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcn/jingling/lib/filters/CMTProcessor;->rsOverlayAlphaEffect([I[IIIIII)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v5

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v6

    .line 37
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v7

    move-object v4, p2

    move v8, v2

    move v9, v3

    .line 36
    invoke-static/range {v4 .. v9}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 38
    return-void
.end method

.method protected releaseLayers()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraHefeLive;->mLayer_o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    return-void
.end method
