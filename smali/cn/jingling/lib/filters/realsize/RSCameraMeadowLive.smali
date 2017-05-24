.class public Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraMeadowLive.java"


# instance fields
.field private mCurve1:Lcn/jingling/lib/filters/Curve;

.field private mCurve2:Lcn/jingling/lib/filters/Curve;


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
    .line 15
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live-meadow-1.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    .line 16
    new-instance v0, Lcn/jingling/lib/filters/Curve;

    const-string v1, "curves/live-meadow-2.dat"

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    .line 17
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

    .line 23
    array-length v4, p2

    .line 25
    .local v4, "w":I
    const/16 v0, -0x28

    invoke-static {p2, v4, v5, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs([IIII)[I

    .line 27
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    .line 28
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve1:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    move-object v0, p2

    .line 27
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 30
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    .line 31
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCameraMeadowLive;->mCurve2:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    move-object v0, p2

    .line 30
    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 33
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
