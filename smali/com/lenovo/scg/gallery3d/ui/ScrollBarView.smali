.class public Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "ScrollBarView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollBarView"


# instance fields
.field private mBarHeight:I

.field private mContentPosition:I

.field private mContentTotal:I

.field private mGivenGripWidth:I

.field private mGripHeight:I

.field private mGripPosition:I

.field private mGripWidth:I

.field private mScrollBarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gripHeight"    # I
    .param p3, "gripWidth"    # I

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 48
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 49
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010064

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    .line 51
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripPosition:I

    .line 52
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    .line 53
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    .line 54
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripHeight:I

    .line 55
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    sub-int v0, p5, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mBarHeight:I

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 94
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->bounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 96
    .local v6, "b":Landroid/graphics/Rect;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mBarHeight:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 97
    .local v3, "y":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public setContentPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentPosition:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-ne p2, v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->invalidate()V

    .line 72
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentPosition:I

    .line 73
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentTotal:I

    .line 76
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-gtz v1, :cond_1

    .line 77
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripPosition:I

    .line 78
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    goto :goto_0

    .line 86
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentTotal:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 88
    .local v0, "r":F
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mContentPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/ScrollBarView;->mGripPosition:I

    goto :goto_0
.end method
