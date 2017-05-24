.class public Lcn/jingling/lib/textbubble/MyPoint;
.super Ljava/lang/Object;
.source "MyPoint.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 19
    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 20
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "x1"    # D
    .param p3, "y1"    # D

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    double-to-float v0, p1

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 29
    double-to-float v0, p3

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 30
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 24
    iput p2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 25
    return-void
.end method

.method public constructor <init>(Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 1
    .param p1, "src"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 34
    iget v0, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 35
    return-void
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 4
    .param p0, "p1"    # Landroid/graphics/Point;
    .param p1, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 164
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 165
    .local v0, "dx":F
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 167
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F
    .locals 4
    .param p0, "p1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "p2"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 158
    iget v2, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float v0, v2, v3

    .line 159
    .local v0, "dx":F
    iget v2, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float v1, v2, v3

    .line 161
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static getSinCos(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 9
    .param p0, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 203
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 204
    .local v3, "values":[F
    invoke-virtual {p0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 206
    aget v4, v3, v7

    aget v5, v3, v7

    mul-float/2addr v4, v5

    aget v5, v3, v8

    .line 207
    aget v6, v3, v8

    mul-float/2addr v5, v6

    .line 206
    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 209
    .local v1, "scale":F
    aget v4, v3, v8

    neg-float v4, v4

    div-float v2, v4, v1

    .line 210
    .local v2, "sin":F
    aget v4, v3, v7

    div-float v0, v4, v1

    .line 212
    .local v0, "cos":F
    new-instance v4, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v4, v2, v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    return-object v4
.end method

.method public static getSinCos(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 12
    .param p0, "point1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "point2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "point0"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 180
    iget v9, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v10, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float v5, v9, v10

    .line 181
    .local v5, "x1":F
    iget v9, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v10, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float v7, v9, v10

    .line 182
    .local v7, "y1":F
    iget v9, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v10, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float v6, v9, v10

    .line 183
    .local v6, "x2":F
    iget v9, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v10, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float v8, v9, v10

    .line 185
    .local v8, "y2":F
    mul-float v9, v5, v5

    mul-float v10, v7, v7

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 186
    .local v1, "d1":F
    mul-float v9, v6, v6

    mul-float v10, v8, v8

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 188
    .local v2, "d2":F
    mul-float v3, v1, v2

    .line 190
    .local v3, "dd":F
    mul-float v9, v5, v8

    mul-float v10, v6, v7

    sub-float/2addr v9, v10

    div-float v4, v9, v3

    .line 191
    .local v4, "sin":F
    mul-float v9, v5, v6

    mul-float v10, v7, v8

    add-float/2addr v9, v10

    div-float v0, v9, v3

    .line 193
    .local v0, "cos":F
    new-instance v9, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v9, v4, v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    return-object v9
.end method

.method public static getVector(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 3
    .param p0, "firstPoint"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "secondPoint"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 216
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 217
    .local v0, "vectorPointer":Lcn/jingling/lib/textbubble/MyPoint;
    iget v1, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 218
    iget v1, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 219
    return-object v0
.end method

.method public static givePointAfterTransform(Landroid/graphics/Point;Landroid/graphics/Matrix;)Landroid/graphics/Point;
    .locals 6
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 54
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 56
    .local v0, "values":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 57
    const/4 v3, 0x0

    aget v3, v0, v3

    iget v4, p0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, p0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v0, v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 58
    .local v1, "x1":I
    const/4 v3, 0x3

    aget v3, v0, v3

    iget v4, p0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v0, v4

    iget v5, p0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 60
    .local v2, "y1":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public static givePointBeforeTransform(Landroid/graphics/Point;Landroid/graphics/Matrix;)Landroid/graphics/Point;
    .locals 2
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v0, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 68
    invoke-static {p0, v0}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Point;Landroid/graphics/Matrix;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public static intersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "u1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "u2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "v1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "v2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p4, "res"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/4 v6, 0x1

    .line 136
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/MyPoint;->parallel(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance p4, Lcn/jingling/lib/textbubble/MyPoint;

    .end local p4    # "res":Lcn/jingling/lib/textbubble/MyPoint;
    invoke-direct {p4, p3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 138
    .restart local p4    # "res":Lcn/jingling/lib/textbubble/MyPoint;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    .line 141
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/MyPoint;->isIntersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p4, p0}, Lcn/jingling/lib/textbubble/MyPoint;->set(Lcn/jingling/lib/textbubble/MyPoint;)V

    .line 147
    iget v1, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v2, v3

    .line 148
    iget v3, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v4, p3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 147
    sub-float/2addr v1, v2

    .line 149
    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v4, p3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v4, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v3, v4

    .line 150
    iget v4, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v5, p3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 149
    sub-float/2addr v2, v3

    .line 147
    div-float v0, v1, v2

    .line 151
    .local v0, "t":F
    iget v1, p4, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p4, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 152
    iget v1, p4, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v2, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p4, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 154
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static isIntersection(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "u1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "u2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "v1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "v2"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 130
    invoke-static {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/MyPoint;->oppositeSide(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p0, p1}, Lcn/jingling/lib/textbubble/MyPoint;->oppositeSide(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static midPoint(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 6
    .param p0, "point1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "point2"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 171
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 172
    .local v0, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v4, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float v1, v3, v4

    .line 173
    .local v1, "x":F
    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v4, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float v2, v3, v4

    .line 174
    .local v2, "y":F
    div-float v3, v1, v5

    div-float v4, v2, v5

    invoke-virtual {v0, v3, v4}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 175
    return-object v0
.end method

.method public static oppositeSide(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "u1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "u2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "v1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "v2"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 119
    invoke-static {p2, p0, p3}, Lcn/jingling/lib/textbubble/MyPoint;->xmul(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v0

    invoke-static {p2, p1, p3}, Lcn/jingling/lib/textbubble/MyPoint;->xmul(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static parallel(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "u1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "u2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "v1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "v2"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 124
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v1, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v2, p3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static xmul(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F
    .locals 4
    .param p0, "p1"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p1, "p2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "p0"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 114
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v1, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v2, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 4
    .param p1, "rhs"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 108
    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float v0, v2, v3

    .line 109
    .local v0, "x1":F
    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v3, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float v1, v2, v3

    .line 110
    .local v1, "y1":F
    new-instance v2, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v2, v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    return-object v2
.end method

.method public add(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 223
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 224
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 225
    return-void
.end method

.method public givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 73
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 75
    .local v0, "values":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 76
    const/4 v3, 0x0

    aget v3, v0, v3

    iget v4, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    iget v5, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v0, v4

    add-float v1, v3, v4

    .line 77
    .local v1, "x1":F
    const/4 v3, 0x3

    aget v3, v0, v3

    iget v4, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    mul-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v0, v4

    iget v5, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    add-float v2, v3, v4

    .line 79
    .local v2, "y1":F
    new-instance v3, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v3, v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    return-object v3
.end method

.method public givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    .local v0, "inverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 87
    invoke-virtual {p0, v0}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v1

    return-object v1
.end method

.method public rotate(F)Lcn/jingling/lib/textbubble/MyPoint;
    .locals 6
    .param p1, "angle"    # F

    .prologue
    .line 102
    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 103
    .local v0, "x1":F
    iget v2, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 104
    .local v1, "y1":F
    new-instance v2, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v2, v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    return-object v2
.end method

.method public set(DD)V
    .locals 1
    .param p1, "x1"    # D
    .param p3, "y1"    # D

    .prologue
    .line 43
    double-to-float v0, p1

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 44
    double-to-float v0, p3

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 45
    return-void
.end method

.method public set(FF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F

    .prologue
    .line 38
    iput p1, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 39
    iput p2, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 40
    return-void
.end method

.method public set(Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 1
    .param p1, "src"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 48
    iget v0, p1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 49
    iget v0, p1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 50
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 97
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 98
    iget v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 99
    return-void
.end method

.method public toPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 12
    .local v0, "p":Landroid/graphics/Point;
    iget v1, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget v1, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
