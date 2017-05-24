.class public Lcom/lenovo/scg/camera/effect/ImageGLView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "ImageGLView.java"


# instance fields
.field protected mClipRect:Landroid/graphics/Rect;

.field protected mContext:Landroid/content/Context;

.field private mDownOnButton:Z

.field private mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

.field protected mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field protected mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mClipRect:Landroid/graphics/Rect;

    .line 32
    return-void
.end method

.method private inUndoButton(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 63
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 64
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ImageGLView;->getWidth()I

    move-result v1

    .line 65
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ImageGLView;->getHeight()I

    move-result v0

    .line 66
    .local v0, "h":I
    cmpl-float v4, v2, v5

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    cmpl-float v4, v3, v5

    if-ltz v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 39
    const-string/jumbo v0, "tyl111"

    const-string/jumbo v1, "onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 73
    :pswitch_1
    const-string/jumbo v0, "wwf"

    const-string v1, "image down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ImageGLView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mDownOnButton:Z

    goto :goto_0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "wwf"

    const-string v1, "image up"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mDownOnButton:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ImageGLView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;->onClick(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 83
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mDownOnButton:Z

    goto :goto_0

    .line 87
    :pswitch_3
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mDownOnButton:Z

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 46
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mClipRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method public setEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 54
    return-void
.end method

.method public setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mOnClickListener:Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;

    .line 50
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 103
    return-void
.end method
