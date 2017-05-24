.class public Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;
.super Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.source "CameraFoodHealthy.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;-><init>()V

    .line 9
    const-string v0, "layers/foodhealthy"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mLayerName:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 11
    const-wide v0, 0x3fd999999999999aL    # 0.4

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mFraction:D

    .line 12
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mMarginFractionV:D

    .line 14
    const-string v0, "layers/foodhealthy2"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mLayerName2:Ljava/lang/String;

    .line 15
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mType2:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 16
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mFraction2:D

    .line 17
    const-wide v0, 0x3fb1eb851eb851ecL    # 0.07

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodHealthy;->mMarginFractionV2:D

    .line 19
    return-void
.end method
