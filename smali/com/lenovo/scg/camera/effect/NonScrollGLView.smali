.class public Lcom/lenovo/scg/camera/effect/NonScrollGLView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "NonScrollGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/NonScrollGLView$1;,
        Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;
    }
.end annotation


# instance fields
.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field protected mOffsetLeft:I

.field protected mRect:Landroid/graphics/Rect;

.field private mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 16
    iput v3, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mOffsetLeft:I

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/camera/effect/NonScrollGLView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/NonScrollGLView;Lcom/lenovo/scg/camera/effect/NonScrollGLView$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v4, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 26
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->setVisibility(I)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mRect:Landroid/graphics/Rect;

    .line 28
    return-void
.end method

.method private dispatchEventToChilden(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 89
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 90
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_2

    .line 91
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v4

    .line 92
    .local v4, "component":Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 93
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/lenovo/scg/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    .end local v4    # "component":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_2
    return-void
.end method

.method private updateComponent()V
    .locals 6

    .prologue
    .line 45
    iget v1, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mOffsetLeft:I

    .line 46
    .local v1, "offsetLeft":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v2

    .line 48
    .local v2, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    const/4 v3, 0x0

    add-int/lit16 v4, v1, 0xc8

    const/16 v5, 0xc8

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 49
    add-int/lit16 v1, v1, 0xc8

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 32
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 33
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p3, v2, Landroid/graphics/Rect;->top:I

    .line 34
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p4, v2, Landroid/graphics/Rect;->right:I

    .line 35
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mRect:Landroid/graphics/Rect;

    iput p5, v2, Landroid/graphics/Rect;->bottom:I

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    .line 38
    .local v1, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-virtual {v1, v3, v3, v4, v4}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 74
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->dispatchEventToChilden(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    .line 59
    .local v1, "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "view":Lcom/lenovo/scg/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method
