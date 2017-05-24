.class public Lcn/jingling/lib/filters/partial/Thin;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "Thin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Thin"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 18
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/filters/partial/Thin;->setNeededPointNumber(I)V

    .line 19
    return-void
.end method

.method private applyThinBitmap(Landroid/graphics/Bitmap;IIIII)V
    .locals 23
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "thinSize"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "x2"    # I
    .param p6, "y2"    # I

    .prologue
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 39
    .local v22, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 41
    .local v20, "h":I
    div-int/lit8 v1, p2, 0x2

    sub-int v6, p4, v1

    .line 42
    .local v6, "top":I
    div-int/lit8 v1, p2, 0x2

    add-int v19, p4, v1

    .line 43
    .local v19, "bottom":I
    div-int/lit8 v1, p2, 0x2

    sub-int v5, p3, v1

    .line 44
    .local v5, "left":I
    div-int/lit8 v1, p2, 0x2

    add-int v21, p3, v1

    .line 46
    .local v21, "right":I
    add-int/lit8 v1, v22, -0x1

    move/from16 v0, v21

    if-le v0, v1, :cond_0

    .line 47
    add-int/lit8 v21, v22, -0x1

    .line 49
    :cond_0
    if-gez v5, :cond_1

    .line 50
    const/4 v5, 0x0

    .line 52
    :cond_1
    if-gez v6, :cond_2

    .line 53
    const/4 v6, 0x0

    .line 55
    :cond_2
    add-int/lit8 v1, v20, -0x1

    move/from16 v0, v19

    if-le v0, v1, :cond_3

    .line 56
    add-int/lit8 v19, v20, -0x1

    .line 59
    :cond_3
    sub-int v4, v21, v5

    .line 60
    .local v4, "tw":I
    sub-int v8, v19, v6

    .line 62
    .local v8, "th":I
    rem-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_4

    .line 63
    add-int/lit8 v4, v4, -0x1

    .line 65
    :cond_4
    rem-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_5

    .line 66
    add-int/lit8 v8, v8, -0x1

    .line 69
    :cond_5
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 70
    .local v2, "pixels":[I
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 71
    const-string v1, "Thin"

    const-string v3, "left:%d  top:%d  tw:%d  th:%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "Thin"

    const-string/jumbo v3, "w:%d  h:%d  cx:%d  cy:%d  x2:%d  y2:%d  r:%d  degree:%f"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    div-int/lit8 v10, v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    div-int/lit8 v10, v8, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    div-int/lit8 v10, v4, 0x2

    add-int v10, v10, p5

    .line 73
    sub-int v10, v10, p3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    div-int/lit8 v10, v8, 0x2

    add-int v10, v10, p6

    sub-int v10, v10, p4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x7

    const v10, 0x3e4ccccd    # 0.2f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v9

    .line 72
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v8, 0x2

    div-int/lit8 v1, v4, 0x2

    add-int v1, v1, p5

    .line 75
    sub-int v14, v1, p3

    div-int/lit8 v1, v8, 0x2

    add-int v1, v1, p6

    sub-int v15, v1, p4

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v16, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcn/jingling/lib/filters/partial/Thin;->mRadius:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v17, v1, v3

    const/16 v18, 0x0

    move-object v9, v2

    move v10, v4

    move v11, v8

    .line 74
    invoke-static/range {v9 .. v18}, Lcn/jingling/lib/filters/CMTProcessor;->thinEffect([IIIIIIIIFI)V

    .line 76
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 78
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "Points"    # [Landroid/graphics/Point;

    .prologue
    .line 29
    const/4 v0, 0x0

    aget-object v7, p2, v0

    .line 30
    .local v7, "downPoint":Landroid/graphics/Point;
    const/4 v0, 0x1

    aget-object v8, p2, v0

    .line 31
    .local v8, "upPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 32
    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v6, v8, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move-object v1, p1

    .line 31
    invoke-direct/range {v0 .. v6}, Lcn/jingling/lib/filters/partial/Thin;->applyThinBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 33
    return-object p1
.end method
