.class public Lcom/lenovo/scg/camera/effect/LiveEffectView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LiveEffectView.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

.field private mHeight:F

.field private mID:I

.field private mLeftDownX:I

.field private mLeftDownY:I

.field private mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field protected mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mViewRect:Landroid/graphics/Rect;

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    .line 49
    return-void
.end method


# virtual methods
.method public clickInRect(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 226
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewRect.left x= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickInRect(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectView;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;[FI)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "transformMatrix"    # [F
    .param p3, "orientation"    # I

    .prologue
    const/16 v5, 0x64

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectView;->getID()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 149
    rem-int/lit16 v0, p3, 0xb4

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 151
    const/16 v7, 0x3c0

    .line 152
    .local v7, "cx":I
    const/16 v8, 0x21c

    .line 153
    .local v8, "cy":I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 154
    invoke-interface {p1, v2, v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 155
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mScreenWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    sub-float/2addr v0, v2

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mWidth:F

    float-to-int v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    float-to-int v6, v0

    move-object v0, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 159
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 183
    .end local v7    # "cx":I
    .end local v8    # "cy":I
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 162
    const/16 v7, 0x21c

    .line 163
    .restart local v7    # "cx":I
    const/16 v8, 0x3c0

    .line 164
    .restart local v8    # "cy":I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 165
    invoke-interface {p1, v2, v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 166
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mScreenHeight:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    sub-float/2addr v0, v2

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mWidth:F

    float-to-int v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    float-to-int v6, v0

    move-object v0, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 168
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 171
    .end local v7    # "cx":I
    .end local v8    # "cy":I
    :cond_1
    rem-int/lit16 v0, p3, 0xb4

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    const/16 v1, 0x21c

    invoke-virtual {v0, p1, v5, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    const/16 v1, 0x3c0

    invoke-virtual {v0, p1, v5, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_0
.end method

.method public getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mID:I

    return v0
.end method

.method public getOnClickListener()Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onMoveInScreen(FF)V
    .locals 2
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 235
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterX:F

    .line 236
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterY:F

    .line 237
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterX:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterY:F

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectView;->setCenterPointInScreen(FF)V

    .line 239
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "view press down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public setCenterPointInScreen(FF)V
    .locals 3
    .param p1, "centerx"    # F
    .param p2, "centery"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 85
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterX:F

    .line 86
    iput p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mCenterY:F

    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    .line 88
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mLeftDownY:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 93
    return-void
.end method

.method public setEffectType()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/effect/EventListener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

    .line 199
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mID:I

    .line 61
    return-void
.end method

.method public setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .line 203
    return-void
.end method

.method public setScreenSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mScreenWidth:F

    .line 124
    iput p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mScreenHeight:F

    .line 125
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 137
    return-void
.end method

.method public setViewSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 109
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mWidth:F

    .line 110
    iput p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectView;->mHeight:F

    .line 111
    return-void
.end method
