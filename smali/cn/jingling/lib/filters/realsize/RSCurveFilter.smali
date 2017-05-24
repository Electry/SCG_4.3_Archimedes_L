.class public abstract Lcn/jingling/lib/filters/realsize/RSCurveFilter;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCurveFilter.java"


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

    invoke-virtual {p0}, Lcn/jingling/lib/filters/realsize/RSCurveFilter;->getCurvePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCurveFilter;->mCurve:Lcn/jingling/lib/filters/Curve;

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
    .line 21
    array-length v4, p2

    .line 22
    .local v4, "w":I
    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCurveFilter;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v1

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCurveFilter;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveGreen()[I

    move-result-object v2

    iget-object v0, p0, Lcn/jingling/lib/filters/realsize/RSCurveFilter;->mCurve:Lcn/jingling/lib/filters/Curve;

    invoke-virtual {v0}, Lcn/jingling/lib/filters/Curve;->getCurveBlue()[I

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/CMTProcessor;->curveEffect([I[I[I[III)V

    .line 23
    return-void
.end method

.method protected abstract getCurvePath()Ljava/lang/String;
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
