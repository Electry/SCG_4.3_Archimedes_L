.class public Lcn/jingling/lib/filters/onekey/FaceDetailTest;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "FaceDetailTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/FaceDetailTest;->statisticEvent()V

    .line 15
    new-instance v0, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;

    invoke-direct {v0}, Lcn/jingling/lib/filters/detection/FaceDetailDetector2;-><init>()V

    .line 16
    .local v0, "fdd":Lcn/jingling/lib/filters/detection/AbstractDetector;
    invoke-virtual {v0, p1}, Lcn/jingling/lib/filters/detection/AbstractDetector;->init(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v0, p2}, Lcn/jingling/lib/filters/detection/AbstractDetector;->detect(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;

    move-result-object v1

    .line 18
    .local v1, "points":[Landroid/graphics/Point;
    if-nez v1, :cond_0

    .line 23
    :goto_0
    return-object p2

    .line 21
    :cond_0
    invoke-virtual {v0, p2, v1}, Lcn/jingling/lib/filters/detection/AbstractDetector;->drawBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)V

    goto :goto_0
.end method
