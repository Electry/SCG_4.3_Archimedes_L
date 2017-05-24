.class public Lcn/jingling/lib/filters/realsize/RSCameraXuancai;
.super Lcn/jingling/lib/filters/realsize/RSCurveFilter;
.source "RSCameraXuancai.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcn/jingling/lib/filters/realsize/RSCurveFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurvePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string v0, "curves/camera_xuancai.dat"

    return-object v0
.end method
