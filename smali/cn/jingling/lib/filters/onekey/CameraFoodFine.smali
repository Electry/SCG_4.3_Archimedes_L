.class public Lcn/jingling/lib/filters/onekey/CameraFoodFine;
.super Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.source "CameraFoodFine.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;-><init>()V

    .line 9
    const-string v0, "layers/foodfine"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFine;->mLayerName:Ljava/lang/String;

    .line 10
    sget-object v0, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->LEFT_BOTTOM:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFine;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    .line 11
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFine;->mFraction:D

    .line 12
    const-wide v0, 0x3fb1eb851eb851ecL    # 0.07

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFine;->mMarginFractionV:D

    .line 13
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFine;->mMarginFractionH:D

    .line 14
    return-void
.end method
