.class public Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GoldBoxGLSurfaceView.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    }
.end annotation


# static fields
.field static final FLING_MIN_VELOCITY:F = 300.0f

.field private static final MSG_EXIT:I = 0x65


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntryAnimation:Landroid/view/animation/Animation;

.field private mExitAnimation:Landroid/view/animation/Animation;

.field private mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLe3dControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

.field private mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

.field private mRequestDelayExit:Z

.field private mWindowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/4 v8, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setZOrderOnTop(Z)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 73
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 74
    if-ne p2, v8, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 80
    :goto_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 82
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 83
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setLongClickable(Z)V

    .line 84
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I

    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->initHandler()V

    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->initDefaultAnimation()V

    .line 91
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setRenderMode(I)V

    .line 93
    return-void

    .line 77
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 78
    const/high16 v0, -0x21000000

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mLe3dControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    return-object v0
.end method

.method private initDefaultAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 212
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 215
    :cond_1
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$3;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method private requestExit()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method


# virtual methods
.method public QueueFuncToRenderer(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runable"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 234
    return-void
.end method

.method public entry()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$5;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$6;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_0
    return-void
.end method

.method public hideSurfaceView()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->requestExit()V

    .line 225
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$4;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 248
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$7;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 277
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 105
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    .line 107
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$1;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 288
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 293
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$8;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    .line 121
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$2;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 310
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$9;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$9;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 338
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$10;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$10;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 328
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$11;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->QueueFuncToRenderer(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public queueFucToRenderer(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runable"    # Ljava/lang/Runnable;

    .prologue
    .line 456
    return-void
.end method

.method public requestDelayHide()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mRequestDelayExit:Z

    .line 231
    return-void
.end method

.method public setEntryAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mEntryAnimation:Landroid/view/animation/Animation;

    .line 200
    return-void
.end method

.method public setExitAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mExitAnimation:Landroid/view/animation/Animation;

    .line 204
    return-void
.end method
