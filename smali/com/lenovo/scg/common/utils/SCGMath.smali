.class public Lcom/lenovo/scg/common/utils/SCGMath;
.super Ljava/lang/Object;
.source "SCGMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance2Point(IIII)I
    .locals 6
    .param p0, "x1"    # I
    .param p1, "y1"    # I
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .prologue
    .line 23
    sub-int v3, p0, p2

    int-to-float v0, v3

    .line 24
    .local v0, "a":F
    sub-int v3, p1, p3

    int-to-float v1, v3

    .line 26
    .local v1, "b":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 27
    .local v2, "dis":I
    return v2
.end method
