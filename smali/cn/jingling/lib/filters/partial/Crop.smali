.class public Lcn/jingling/lib/filters/partial/Crop;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "Crop.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 16
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/filters/partial/Crop;->setNeededPointNumber(I)V

    .line 17
    return-void
.end method

.method private apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "leftup"    # Landroid/graphics/Point;
    .param p3, "rightdown"    # Landroid/graphics/Point;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 37
    .local v6, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 38
    .local v2, "h":I
    iget v7, p2, Landroid/graphics/Point;->x:I

    if-ltz v7, :cond_0

    iget v7, p2, Landroid/graphics/Point;->y:I

    if-ltz v7, :cond_0

    iget v7, p3, Landroid/graphics/Point;->x:I

    if-gt v7, v6, :cond_0

    iget v7, p3, Landroid/graphics/Point;->y:I

    if-gt v7, v2, :cond_0

    .line 39
    iget v7, p2, Landroid/graphics/Point;->x:I

    iget v8, p3, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 40
    .local v3, "left":I
    iget v7, p2, Landroid/graphics/Point;->x:I

    iget v8, p3, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 41
    .local v4, "right":I
    iget v7, p2, Landroid/graphics/Point;->y:I

    iget v8, p3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 42
    .local v5, "top":I
    iget v7, p2, Landroid/graphics/Point;->y:I

    iget v8, p3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 44
    .local v1, "bottom":I
    sub-int v7, v4, v3

    sub-int v8, v1, v5

    invoke-static {p1, v3, v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # [Landroid/graphics/Point;

    .prologue
    .line 27
    const/4 v2, 0x0

    aget-object v0, p2, v2

    .line 28
    .local v0, "leftup":Landroid/graphics/Point;
    const/4 v2, 0x1

    aget-object v1, p2, v2

    .line 30
    .local v1, "rightdown":Landroid/graphics/Point;
    invoke-direct {p0, p1, v0, v1}, Lcn/jingling/lib/filters/partial/Crop;->apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
