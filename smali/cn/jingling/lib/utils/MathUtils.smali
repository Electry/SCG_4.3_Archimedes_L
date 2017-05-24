.class public Lcn/jingling/lib/utils/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(DDDD)D
    .locals 4
    .param p0, "ax"    # D
    .param p2, "ay"    # D
    .param p4, "bx"    # D
    .param p6, "by"    # D

    .prologue
    .line 19
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/MathUtils;->sqr(D)D

    move-result-wide v0

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/MathUtils;->sqr(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static dist(IIII)I
    .locals 2
    .param p0, "ax"    # I
    .param p1, "ay"    # I
    .param p2, "bx"    # I
    .param p3, "by"    # I

    .prologue
    .line 15
    sub-int v0, p0, p2

    invoke-static {v0}, Lcn/jingling/lib/utils/MathUtils;->sqr(I)I

    move-result v0

    sub-int v1, p1, p3

    invoke-static {v1}, Lcn/jingling/lib/utils/MathUtils;->sqr(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static dist(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p0, "a"    # Landroid/graphics/Point;
    .param p1, "b"    # Landroid/graphics/Point;

    .prologue
    .line 23
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, v2, v3}, Lcn/jingling/lib/utils/MathUtils;->dist(IIII)I

    move-result v0

    return v0
.end method

.method public static findMax(III)I
    .locals 1
    .param p0, "number1"    # I
    .param p1, "number2"    # I
    .param p2, "number3"    # I

    .prologue
    .line 28
    move v0, p0

    .line 29
    .local v0, "maxNumber":I
    if-le p1, v0, :cond_0

    .line 31
    move v0, p1

    .line 33
    :cond_0
    if-le p2, v0, :cond_1

    .line 35
    move v0, p2

    .line 37
    :cond_1
    return v0
.end method

.method public static findMin(III)I
    .locals 1
    .param p0, "number1"    # I
    .param p1, "number2"    # I
    .param p2, "number3"    # I

    .prologue
    .line 42
    move v0, p0

    .line 43
    .local v0, "minNumber":I
    if-ge p1, v0, :cond_0

    .line 45
    move v0, p1

    .line 47
    :cond_0
    if-ge p2, v0, :cond_1

    .line 49
    move v0, p2

    .line 51
    :cond_1
    return v0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "r":I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 64
    return v0

    .line 62
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static sqr(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 11
    mul-double v0, p0, p0

    return-wide v0
.end method

.method public static sqr(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 7
    mul-int v0, p0, p0

    return v0
.end method

.method public static toInt(Ljava/lang/Byte;)I
    .locals 1
    .param p0, "b"    # Ljava/lang/Byte;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    add-int/lit16 v0, v0, 0x100

    goto :goto_0
.end method
