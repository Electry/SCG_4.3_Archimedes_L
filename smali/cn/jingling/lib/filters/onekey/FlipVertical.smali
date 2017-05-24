.class public Lcn/jingling/lib/filters/onekey/FlipVertical;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "FlipVertical.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0}, Lcn/jingling/lib/filters/onekey/FlipVertical;->statisticEvent()V

    .line 17
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v9, 0x3f800000    # 1.0f

    .local v9, "sw":F
    const/high16 v8, -0x40800000    # -1.0f

    .line 20
    .local v8, "sh":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 21
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 22
    .local v4, "h":I
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 23
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 25
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method
