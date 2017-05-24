.class public Lcn/jingling/lib/filters/onekey/CameraFoodYum;
.super Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.source "CameraFoodYum.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;-><init>()V

    .line 9
    const-string v0, "layers/foodyum"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodYum;->mLayerName:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodYum;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 11
    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodYum;->mFraction:D

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodYum;->mLayerName2:Ljava/lang/String;

    .line 13
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodYum;->mMarginFractionV:D

    .line 14
    return-void
.end method
