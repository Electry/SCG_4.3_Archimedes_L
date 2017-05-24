.class public Lcn/jingling/lib/filters/realsize/RSCameraLiunian;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraLiunian.java"


# instance fields
.field private mCurve:Lcn/jingling/lib/filters/Curve;

.field private mLayerMul:Landroid/graphics/Bitmap;

.field private mLayerlb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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

    const-string v1, "curves/camera_liunian.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mCurve:Lcn/jingling/lib/filters/Curve;

    .line 20
    const-string v0, "layers/camera_liunian_mul"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v2, 0x28

    .line 19
    invoke-static {p1, v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerMul:Landroid/graphics/Bitmap;

    .line 22
    const-string v0, "layers/camera_liunian_lb"

    sget-object v1, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    const/16 v2, 0x64

    .line 21
    invoke-static {p1, v0, v1, v2}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerlb:Landroid/graphics/Bitmap;

    .line 23
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

    .line 31
    array-length v4, p2

    .line 34
    .local v4, "w":I
    const/16 v0, -0x37

    invoke-static {p2, v4, v5, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 37
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 39
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerMul:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v3

    .line 40
    .local v3, "layerPixels":[I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerMul:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object v2, p2

    move v7, v5

    invoke-static/range {v2 .. v7}, Lcn/jingling/lib/filters/CMTProcessor;->rsMultiplyEffect([I[IIIII)V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerlb:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p3, p4}, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->getLayerPixels(Landroid/graphics/Bitmap;II)[I

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerlb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/16 v8, 0x64

    move-object v2, p2

    move v7, v5

    invoke-static/range {v2 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->rsLinearBurn([I[IIIIII)V

    .line 45
    return-void
.end method

.method protected releaseLayers()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerMul:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraLiunian;->mLayerlb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    return-void
.end method
