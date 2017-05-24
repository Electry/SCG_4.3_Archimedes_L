.class public Lcn/jingling/lib/filters/onekey/RotateAntiClockwise;
.super Lcn/jingling/lib/filters/OneKeyFilter;
.source "RotateAntiClockwise.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/jingling/lib/filters/OneKeyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 14
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 17
    .local v7, "angle":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 18
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 19
    .local v4, "h":I
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 20
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 21
    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 22
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    return-object v8
.end method
