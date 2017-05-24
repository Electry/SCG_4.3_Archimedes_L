.class public abstract Lcn/jingling/lib/filters/detection/AbstractDetector;
.super Ljava/lang/Object;
.source "AbstractDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract detect(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .local v2, "p":Landroid/graphics/Paint;
    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    array-length v3, p2

    .line 22
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 25
    return-void

    .line 23
    :cond_0
    aget-object v4, p2, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, p2, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract release()V
.end method
