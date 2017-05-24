.class public Lcn/jingling/lib/filters/onekey/CameraFoodFilter;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "CameraFoodFilter.java"


# instance fields
.field protected mFraction:D

.field protected mFraction2:D

.field protected mLayerName:Ljava/lang/String;

.field protected mLayerName2:Ljava/lang/String;

.field protected mMarginFractionH:D

.field protected mMarginFractionH2:D

.field protected mMarginFractionV:D

.field protected mMarginFractionV2:D

.field protected mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

.field protected mType2:Lcn/jingling/lib/filters/ImageProcessUtils$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    .line 16
    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionH:D

    .line 17
    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionV:D

    .line 22
    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionH2:D

    .line 23
    iput-wide v0, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionV2:D

    .line 11
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v3, 0x0

    .line 27
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->statisticEvent()V

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 29
    .local v11, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 30
    .local v0, "h":I
    const-string v1, "layers/foodmask"

    sget-object v5, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    invoke-static {p1, v1, v5}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;Lcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    .local v2, "layer":Landroid/graphics/Bitmap;
    sget-object v1, Lcn/jingling/lib/filters/ImageProcessUtils$Type;->STRENCH:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    invoke-static {p2, v2, v3, v4, v1}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;)V

    .line 32
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 34
    .local v10, "m":I
    iget-object v1, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mLayerName:Ljava/lang/String;

    int-to-double v6, v10

    iget-wide v8, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mFraction:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sget-object v6, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    invoke-static {p1, v1, v5, v6}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;ILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 35
    iget-object v5, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mType:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iget-wide v6, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionH:D

    iget-wide v8, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionV:D

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;DD)V

    .line 36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    iget-object v1, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mLayerName2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mLayerName2:Ljava/lang/String;

    int-to-double v6, v10

    iget-wide v8, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mFraction2:D

    mul-double/2addr v6, v8

    double-to-int v5, v6

    sget-object v6, Lcn/jingling/lib/filters/Layer$Type;->NORMAL:Lcn/jingling/lib/filters/Layer$Type;

    invoke-static {p1, v1, v5, v6}, Lcn/jingling/lib/filters/Layer;->getLayerImage(Landroid/content/Context;Ljava/lang/String;ILcn/jingling/lib/filters/Layer$Type;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    iget-object v5, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mType2:Lcn/jingling/lib/filters/ImageProcessUtils$Type;

    iget-wide v6, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionH2:D

    iget-wide v8, p0, Lcn/jingling/lib/filters/onekey/CameraFoodFilter;->mMarginFractionV2:D

    move-object v1, p2

    invoke-static/range {v1 .. v9}, Lcn/jingling/lib/filters/ImageProcessUtils;->mergeBitmapInPlace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;DLcn/jingling/lib/filters/ImageProcessUtils$Type;DD)V

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_0
    return-object p2
.end method
