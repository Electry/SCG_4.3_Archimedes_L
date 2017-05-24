.class public Lcn/jingling/lib/filters/realsize/RSCameraFuguSceneryLive;
.super Lcn/jingling/lib/filters/realsize/RSCurveFilter;
.source "RSCameraFuguSceneryLive.java"


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
    const-string v0, "curves/live_fugu_scenery.dat"

    return-object v0
.end method
