.class public Lcn/jingling/lib/filters/realsize/RSCameraFugu;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraFugu.java"


# instance fields
.field private mCurve:Lcn/jingling/lib/filters/Curve;

.field private mLayerLb:Landroid/graphics/Bitmap;


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
    .line 18
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/camera_fugu.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mCurve:Lcn/jingling/lib/filters/Curve;

    .line 20
    const-string v0, "layers/camera_fugu"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v2, 0x64

    .line 19
    invoke-static {p1, v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mLayerLb:Landroid/graphics/Bitmap;

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 9
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    .line 28
    array-length v4, p2

    .line 31
    .local v4, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mLayerLb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v3

    .line 34
    .local v3, "layerPixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mLayerLb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/16 v8, 0x64

    move-object v2, p2

    move v7, v5

    invoke-static/range {v2 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->rsLinearBurn([I[IIIIII)V

    .line 35
    return-void
.end method

.method protected releaseLayers()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraFugu;->mLayerLb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    return-void
.end method
