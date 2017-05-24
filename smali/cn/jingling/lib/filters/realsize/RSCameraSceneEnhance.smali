.class public Lcn/jingling/lib/filters/realsize/RSCameraSceneEnhance;
.super Lcn/jingling/lib/filters/realsize/RSLineFilter;
.source "RSCameraSceneEnhance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyLine(Landroid/content/Context;[III)V
    .locals 7
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "pixels"    # [I
    .param p3, "line"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v3, 0x64

    .line 12
    array-length v1, p2

    .line 14
    .local v1, "w":I
    new-instance v6, Lcn/jingling/lib/filters/Curve;

    const-string v0, "curves/color_enhance.dat"

    invoke-direct {v6, p1, v0}, Lcn/jingling/lib/filters/Curve;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .local v6, "c":Lcn/jingling/lib/filters/Curve;
    const/4 v2, 0x1

    invoke-virtual {v6}, Lcn/jingling/lib/filters/Curve;->getCurveRed()[I

    move-result-object v5

    move-object v0, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->sceneEnhance([IIIII[I)V

    .line 16
    return-void
.end method

.method protected releaseLayers()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
