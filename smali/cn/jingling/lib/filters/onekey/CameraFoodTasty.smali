.class public Lcn/jingling/lib/filters/onekey/CameraFoodTasty;
.super Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.source "CameraFoodTasty.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;-><init>()V

    .line 9
    const-string v0, "layers/foodtasty"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mLayerName:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_TOP:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 11
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mFraction:D

    .line 13
    const-string v0, "layers/foodtasty2"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mLayerName2:Ljava/lang/String;

    .line 14
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mType2:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 15
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mFraction2:D

    .line 16
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodTasty;->mMarginFractionV2:D

    .line 17
    return-void
.end method
