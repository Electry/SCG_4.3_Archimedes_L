.class public Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraDushiLive.java"


# instance fields
.field private mCurve1:Lcn/jingling/lib/filters/Curve;

.field private mCurve2:Lcn/jingling/lib/filters/Curve;

.field private mLayer:Landroid/graphics/Bitmap;


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
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "outPath"    # Ljava/lang/String;
    .param p4, "args"    # [I

    .prologue
    .line 16
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live_dushi1.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    .line 17
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live_dushi2.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    .line 18
    const-string v0, "layers/live_dushi"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    invoke-static {p1, v0, v1}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mLayer:Landroid/graphics/Bitmap;

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 11
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    .line 25
    array-length v4, p2

    .line 28
    .local v4, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    .line 29
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p2

    .line 28
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 31
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mLayer:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v3

    .line 32
    .local v3, "layerPixels":[I
    const/4 v5, 0x1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mLayer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x64

    move-object v2, p2

    invoke-static/range {v2 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->rsOverlayAlphaEffect([I[IIIIII)V

    .line 34
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v6

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v7

    .line 35
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v8

    const/4 v10, 0x1

    move-object v5, p2

    move v9, v4

    .line 34
    invoke-static/range {v5 .. v10}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 36
    return-void
.end method

.method protected releaseLayers()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraDushiLive;->mLayer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    return-void
.end method
