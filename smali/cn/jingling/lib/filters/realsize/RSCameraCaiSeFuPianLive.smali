.class public Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraCaiSeFuPianLive.java"


# instance fields
.field private mCurve:Lcn/jingling/lib/filters/Curve;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
    .line 14
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live_caisefupian.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jingling/lib/filters/realsize/RSLineFilter;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method protected applyLine(Landroid/content/Context;[III)V
    .locals 6
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v5, 0x1

    .line 21
    array-length v4, p2

    .line 23
    .local v4, "w":I
    const/16 v0, -0xf

    invoke-static {p2, v4, v5, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 25
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    .line 26
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraCaiSeFuPianLive;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    move-object v0, p2

    .line 25
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 28
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
