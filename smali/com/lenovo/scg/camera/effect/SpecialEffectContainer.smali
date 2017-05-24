.class public Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
.super Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
.source "SpecialEffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;
    }
.end annotation


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field protected mCurrentX:F

.field private mFlingOrientation:I

.field private mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

.field private mIsFling:Z

.field private mListener:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;

.field private mOrientation:I

.field private mScrollRect:Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/OverScroller;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/effect/BasicTextureGLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mCurrentX:F

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mIsFling:Z

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    .line 59
    iput p2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mOrientation:I

    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    .line 63
    return-void
.end method

.method private flingMove(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 222
    cmpl-float v2, p1, v3

    if-nez v2, :cond_1

    cmpl-float v2, p2, v3

    if-nez v2, :cond_1

    .line 229
    :cond_0
    return-void

    .line 225
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .line 227
    .local v1, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->onMoveInScreen(FF)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDimensOfResource(I)F
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public clickInContainer(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 212
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScrollmScrollRect.left= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mScrollRect.right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mScrollRect.top ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mScrollRect.bottom ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickInRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v6, 0x0

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v1

    .line 136
    :goto_0
    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mFlingOrientation:I

    if-ne v1, v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    const-string/jumbo v3, "tyl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScrollOffset  mScroller.getStartX() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getStartX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mScroller.getCurrX()= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    .line 140
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mCurrentX:F

    .line 145
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mCurrentX:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->flingMove(FF)V

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->invalidate()V

    .line 156
    :cond_0
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 157
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .line 158
    .local v2, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setEnableClip(Z)V

    .line 160
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 161
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "SpecialEffectContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 156
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 132
    .end local v0    # "i":I
    .end local v2    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_2
    const-string/jumbo v3, "tyl"

    const-string v4, "layoutContentPane root == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mFlingOrientation:I

    goto/16 :goto_0

    .line 142
    :cond_3
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mCurrentX:F

    goto/16 :goto_1

    .line 148
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mIsFling:Z

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mListener:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mIsFling:Z

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;->onFlingFinished(Z)V

    .line 150
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mIsFling:Z

    goto/16 :goto_2

    .line 167
    .restart local v0    # "i":I
    :cond_5
    return-void
.end method

.method public fling(IIIIIIIII)V
    .locals 12
    .param p1, "currX"    # I
    .param p2, "currY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "orientation"    # I

    .prologue
    .line 266
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fling currX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fling velocityX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "velocityY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fling minX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "maxX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move/from16 v0, p6

    if-ge p1, v0, :cond_0

    move/from16 v0, p5

    if-gt p1, v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mIsFling:Z

    .line 274
    move/from16 v0, p9

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mFlingOrientation:I

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScroller:Landroid/widget/OverScroller;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 280
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->invalidate()V

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    goto :goto_0
.end method

.method public getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .line 181
    .local v1, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 185
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :goto_1
    return-object v1

    .line 179
    .restart local v1    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/effect/BasicTextureGLView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public layout(IIIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 189
    int-to-float v0, p1

    const v1, 0x7f0902c0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getDimensOfResource(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mCurrentX:F

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 194
    iput p5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mOrientation:I

    .line 196
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenWidth:F

    float-to-int v1, v1

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenWidth:F

    float-to-int v1, v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    add-int/lit8 v1, p1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    add-int/lit8 v1, p3, 0x2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public onMove(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 241
    cmpl-float v4, p1, v5

    if-nez v4, :cond_1

    cmpl-float v4, p2, v5

    if-nez v4, :cond_1

    .line 263
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v1, v4, p1

    .line 245
    .local v1, "mFirstX":F
    sget v4, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float v2, v4, p1

    .line 247
    .local v2, "mLastX":F
    cmpg-float v4, p1, v5

    if-gez v4, :cond_2

    .line 248
    float-to-int v4, v2

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_0

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .line 251
    .local v3, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v3, p1, p2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->onMoveInScreen(FF)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "i":I
    .end local v3    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_2
    float-to-int v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mScrollRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_0

    .line 256
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .line 258
    .restart local v3    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v3, p1, p2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->onMoveInScreen(FF)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetAlpha()V
    .locals 3

    .prologue
    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 301
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->resetAlpha()V

    .line 299
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 291
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setAlpha(F)V

    .line 289
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_1
    return-void
.end method

.method public setGLRoot(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p1, "root"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .line 122
    return-void
.end method

.method public setOnFlingFinishedListener(Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->mListener:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;

    .line 53
    return-void
.end method
