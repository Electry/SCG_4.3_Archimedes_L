.class public Lcn/jingling/lib/advanceedit/brush/IconDrawState;
.super Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;
.source "IconDrawState.java"


# static fields
.field private static final DEFAULT_DRAW_WIDTH:I = 0x50


# instance fields
.field private mIconHeight:I

.field private mIconList:[Landroid/graphics/Bitmap;

.field private mIconWidth:I

.field private mIndex:I

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "iconList"    # [Landroid/graphics/Bitmap;
    .param p2, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p2}, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    .line 24
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mRect:Landroid/graphics/RectF;

    .line 38
    iput-object p1, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    .line 40
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    .line 45
    :cond_0
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->penWidth:I

    invoke-virtual {p0, v0}, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->setPenWidth(I)V

    .line 46
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "iconList"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x50

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p2}, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    .line 24
    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    .line 28
    const/4 v2, -0x1

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    .line 30
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mRect:Landroid/graphics/RectF;

    .line 54
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 55
    array-length v1, p1

    .line 56
    .local v1, "length":I
    new-array v2, v1, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 61
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    .line 62
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    .line 65
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->penWidth:I

    invoke-virtual {p0, v2}, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->setPenWidth(I)V

    .line 66
    return-void

    .line 58
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    iget-object v3, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    aget-object v2, p1, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getBitmapToDraw()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    .line 90
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconList:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mRect:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    invoke-direct {p0}, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->getBitmapToDraw()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPenWidth(I)V
    .locals 4
    .param p1, "pWidth"    # I

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->setPenWidth(I)V

    .line 80
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    iget v3, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81
    .local v0, "iconSize":I
    int-to-float v2, p1

    int-to-float v3, v0

    div-float v1, v2, v3

    .line 82
    .local v1, "ratio":F
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconWidth:I

    .line 83
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mIconHeight:I

    .line 84
    iput p1, p0, Lcn/jingling/lib/advanceedit/brush/IconDrawState;->mDrawSpace:I

    .line 86
    return-void
.end method
