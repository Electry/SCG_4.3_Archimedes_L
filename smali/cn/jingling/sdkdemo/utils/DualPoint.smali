.class public Lcn/jingling/sdkdemo/utils/DualPoint;
.super Ljava/lang/Object;
.source "DualPoint.java"


# instance fields
.field public bmx:F

.field public bmy:F

.field public viewx:F

.field public viewy:F


# direct methods
.method public constructor <init>(FFLandroid/graphics/Matrix;)V
    .locals 6
    .param p1, "viewx"    # F
    .param p2, "viewy"    # F
    .param p3, "imageViewMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p3, :cond_0

    .line 23
    new-instance p3, Landroid/graphics/Matrix;

    .end local p3    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 24
    .restart local p3    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 26
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .local v1, "inverseViewMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 29
    iput p1, p0, Lcn/jingling/sdkdemo/utils/DualPoint;->viewx:F

    .line 30
    iput p2, p0, Lcn/jingling/sdkdemo/utils/DualPoint;->viewy:F

    .line 31
    new-array v2, v5, [F

    aput p1, v2, v3

    aput p2, v2, v4

    .line 32
    .local v2, "src":[F
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    .line 33
    .local v0, "dst":[F
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 34
    aget v3, v0, v3

    iput v3, p0, Lcn/jingling/sdkdemo/utils/DualPoint;->bmx:F

    .line 35
    aget v3, v0, v4

    iput v3, p0, Lcn/jingling/sdkdemo/utils/DualPoint;->bmy:F

    .line 37
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static mapPointBmToView([F[FLandroid/graphics/Matrix;)V
    .locals 0
    .param p0, "src"    # [F
    .param p1, "dst"    # [F
    .param p2, "imageViewMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    new-instance p2, Landroid/graphics/Matrix;

    .end local p2    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    .restart local p2    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 67
    :cond_0
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 69
    return-void
.end method

.method public static mapPointViewToBm([F[FLandroid/graphics/Matrix;)V
    .locals 1
    .param p0, "src"    # [F
    .param p1, "dst"    # [F
    .param p2, "imageViewMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance p2, Landroid/graphics/Matrix;

    .end local p2    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .restart local p2    # "imageViewMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 49
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .local v0, "inverseViewMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 52
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 54
    return-void
.end method
