.class public Lcn/jingling/lib/filters/onekey/CameraFoodFresh;
.super Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.source "CameraFoodFresh.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;-><init>()V

    .line 9
    const-string v0, "layers/foodfresh"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFresh;->mLayerName:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFresh;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 11
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFresh;->mFraction:D

    .line 12
    const-wide v0, 0x3fc0a3d70a3d70a4L    # 0.13

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFresh;->mMarginFractionV:D

    .line 13
    return-void
.end method
