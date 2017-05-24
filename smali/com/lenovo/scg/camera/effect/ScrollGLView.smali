.class public Lcom/lenovo/scg/camera/effect/ScrollGLView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "ScrollGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/ScrollGLView$1;,
        Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;
    }
.end annotation


# instance fields
.field protected mClipRect:Landroid/graphics/Rect;

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field protected mOffsetLeft:I

.field protected mRect:Landroid/graphics/Rect;

.field protected mScreenHeight:F

.field protected mScreenWidth:F

.field private mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 18
    iput v3, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mOffsetLeft:I

    .line 33
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/camera/effect/ScrollGLView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/ScrollGLView;Lcom/lenovo/scg/camera/effect/ScrollGLView$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 34
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->setVisibility(I)V

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mRect:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/effect/ScrollGLView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/ScrollGLView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/effect/ScrollGLView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/ScrollGLView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method private dispatchEventToChilden(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 153
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 154
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 155
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v4

    .line 156
    .local v4, "component":Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 157
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/lenovo/scg/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 159
    .end local v4    # "component":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenWidth:F

    float-to-int v1, v1

    sub-int/2addr v1, p5

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenWidth:F

    float-to-int v1, v1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x20

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x20

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->updateComponent()V

    .line 63
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    add-int/lit8 v1, p4, 0x2

    add-int/lit8 v1, v1, -0x20

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p5

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenHeight:F

    float-to-int v1, v1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    :pswitch_0
    return v1

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mDownInScrolling:Z

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 138
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 107
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 108
    .local v0, "animTime":J
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v5, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v3

    .line 111
    .local v3, "more":Z
    const-string/jumbo v5, "tyl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scroll Position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 114
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v4

    .local v4, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    move-object v5, v4

    .line 115
    check-cast v5, Lcom/lenovo/scg/camera/effect/ImageGLView;

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/ImageGLView;->setClipRect(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {p0, p1, v4}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mOffsetLeft:I

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->updateComponent()V

    .line 120
    if-eqz v3, :cond_1

    .line 121
    const-string/jumbo v5, "tyl"

    const-string/jumbo v6, "render more invalidate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->invalidate()V

    .line 124
    :cond_1
    return-void
.end method

.method public setScreenHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenHeight:F

    .line 72
    return-void
.end method

.method public setScreenWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mScreenWidth:F

    .line 68
    return-void
.end method

.method public updateComponent()V
    .locals 10

    .prologue
    .line 75
    iget v1, p0, Lcom/lenovo/scg/camera/effect/ScrollGLView;->mOffsetLeft:I

    .line 76
    .local v1, "offsetLeft":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v2

    .line 78
    .local v2, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    const/16 v6, 0x9

    if-ge v0, v6, :cond_0

    .line 82
    add-int/lit8 v6, v0, 0x9

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v4

    .line 83
    .local v4, "viewSed":Lcom/lenovo/scg/gallery3d/ui/GLView;
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x20

    add-int/2addr v6, v1

    const/16 v7, 0x16

    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0x20

    add-int/2addr v8, v1

    add-int/lit16 v8, v8, 0xfa

    const/16 v9, 0x110

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 85
    add-int/lit8 v6, v0, 0x1b

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v3

    .line 86
    .local v3, "viewFour":Lcom/lenovo/scg/gallery3d/ui/GLView;
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x20

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x7d

    add-int/lit8 v6, v6, -0x2d

    const/16 v7, 0x120

    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0x20

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x7d

    add-int/lit8 v8, v8, -0x2d

    const/16 v9, 0x13e

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 88
    add-int/lit16 v1, v1, 0xfa

    .line 90
    add-int/lit8 v6, v0, 0x12

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v5

    .line 91
    .local v5, "viewThr":Lcom/lenovo/scg/gallery3d/ui/GLView;
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v6, v6, 0x20

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0xf

    const/16 v7, 0x22

    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0x20

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0xf

    add-int/lit8 v8, v8, 0x2

    const/16 v9, 0x104

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    .end local v3    # "viewFour":Lcom/lenovo/scg/gallery3d/ui/GLView;
    .end local v4    # "viewSed":Lcom/lenovo/scg/gallery3d/ui/GLView;
    .end local v5    # "viewThr":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method
