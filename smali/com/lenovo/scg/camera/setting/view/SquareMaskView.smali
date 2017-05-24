.class public Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
.super Landroid/view/View;
.source "SquareMaskView.java"


# instance fields
.field private mBottomRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTopRect:Landroid/graphics/Rect;

.field private offSetBottom:I

.field private offset:I

.field private offsetTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    .line 21
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    .line 22
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    .line 23
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    .line 24
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offSetBottom:I

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 29
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    .line 21
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    .line 22
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    .line 23
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    .line 24
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offSetBottom:I

    .line 25
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 26
    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 29
    iput v8, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    .line 39
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 40
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    const v4, -0xe5e5e6

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 53
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 54
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 56
    .local v1, "mPoint":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 58
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    .line 59
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    .line 60
    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    .line 61
    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offSetBottom:I

    .line 63
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    .line 65
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    invoke-virtual {v3, v8, v8, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    neg-int v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 67
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offSetBottom:I

    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    iget v6, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 70
    const-string v3, "SquareMaskView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "left : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " top : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "right : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    .line 21
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenHeight:I

    .line 22
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mScreenWidth:I

    .line 23
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offsetTop:I

    .line 24
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offSetBottom:I

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    .line 29
    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->offset:I

    .line 34
    return-void
.end method

.method private isInRect(IILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-le p1, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-le p2, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInRect(IILandroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "r"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    if-nez p3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v1, p1, p4

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_0

    sub-int v1, p1, p4

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    add-int v1, p2, p4

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_0

    sub-int v1, p2, p4

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isInMaskArea(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInRect(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "isInMaskArea"

    const-string v2, "isInRect(x, y, mTopRect) && return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInRect(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "isInMaskArea"

    const-string v2, "isInRect(x, y, mBottomRect) && return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMaskArea(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInRect(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "isInMaskArea"

    const-string v2, "isInRect(x, y, mTopRect) && return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInRect(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "isInMaskArea"

    const-string v2, "isInRect(x, y, mBottomRect) && return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mTopRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mBottomRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method public resetMaskColor()V
    .locals 1

    .prologue
    .line 107
    const v0, -0xe5e5e6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->setMaskColor(I)V

    .line 108
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->postInvalidate()V

    .line 98
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mRect"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->mPreviewRect:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->invalidate()V

    .line 84
    return-void
.end method
