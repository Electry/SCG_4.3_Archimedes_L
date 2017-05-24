.class public Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;
.super Landroid/opengl/GLSurfaceView;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceView;
.implements Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    }
.end annotation


# static fields
.field static final FLING_MIN_VELOCITY:F = 300.0f

.field private static final MSG_EXIT:I = 0x65


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mDestroyType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

.field private mEntryAnimation:Landroid/view/animation/Animation;

.field private mExitAnimation:Landroid/view/animation/Animation;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

.field private mLe3dWindowHeight:I

.field private mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

.field private mRequestDelayExit:Z

.field private mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "Le3dGLSurfaceViewImpl"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLock:Ljava/lang/Object;

    .line 75
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mBackgroundColor:I

    .line 80
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "Le3dGLSurfaceViewImpl"

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLock:Ljava/lang/Object;

    .line 75
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mBackgroundColor:I

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mBackgroundColor:I

    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getWindowByWindowType(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mDestroyType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mOrientation:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "x2"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    .param p3, "x3"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->doCreateLe3dWindowIfHaveRequest(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doCreateLe3dWindowIfHaveRequest(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V
    .locals 1
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "glSurfaceView"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    .param p3, "orientation"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->doCreateLe3dWindowIfHaveRequest(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V

    .line 630
    :cond_0
    return-void
.end method

.method private getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->getVisibleWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWindowByWindowType(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->getWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/4 v8, 0x1

    .line 113
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setZOrderOnTop(Z)V

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setEGLContextClientVersion(I)V

    .line 115
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setEGLConfigChooser(IIIIII)V

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 117
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setBackgroundColor(I)V

    .line 118
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 120
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setFocusableInTouchMode(Z)V

    .line 121
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setLongClickable(Z)V

    .line 122
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 123
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I

    .line 126
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->initHandler()V

    .line 127
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->initDefaultAnimation()V

    .line 129
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setRenderMode(I)V

    .line 131
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-direct {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    .line 132
    return-void
.end method

.method private initDefaultAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 267
    :cond_1
    return-void
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$3;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mHandler:Landroid/os/Handler;

    .line 180
    return-void
.end method

.method private requestExit()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method


# virtual methods
.method public callback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
    .locals 1
    .param p1, "callbackData"    # Lcom/lenovo/scg/common/le3d/Le3dCallbackData;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$8;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 345
    :cond_0
    return-void
.end method

.method public createLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;)Z
    .locals 3
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v2, p1, p2, p0}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->requestCreateLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dController;Landroid/opengl/GLSurfaceView;)Z

    move-result v0

    .line 285
    .local v0, "createNewWindow":Z
    if-nez v0, :cond_1

    .line 292
    .end local v0    # "createNewWindow":Z
    :cond_0
    :goto_0
    return v1

    .line 289
    .restart local v0    # "createNewWindow":Z
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->requestRender()V

    .line 290
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public destoryLe3dWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 8
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mDestroyType:Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .line 298
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 300
    .local v1, "s":Ljava/util/concurrent/Semaphore;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    new-instance v4, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;

    invoke-direct {v4, p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$7;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 321
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 322
    .local v2, "time":J
    const-string v4, "Le3dGLSurfaceViewImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destoryLe3dWindow---wait before---time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 324
    const-string v4, "Le3dGLSurfaceViewImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destoryLe3dWindow---wait after---time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",delta:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v2    # "time":J
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 327
    .restart local v0    # "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 215
    move-object v0, p1

    .line 216
    .local v0, "windowType":Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$5;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$6;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_0
    return-void
.end method

.method public getGLSurfaceView()Landroid/opengl/GLSurfaceView;
    .locals 0

    .prologue
    .line 210
    return-object p0
.end method

.method public hide(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->hideWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    .line 651
    :cond_0
    return-void
.end method

.method public hideSurfaceView()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->requestExit()V

    .line 351
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$4;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
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
    .line 371
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$9;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyCodeVolumeClick()V
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v1, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 666
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    instance-of v1, v0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    if-eqz v1, :cond_0

    .line 667
    check-cast v0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .end local v0    # "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V

    .line 670
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mOrientation:I

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRenderer:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->onOrientationChanged(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 138
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    .line 140
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$1;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 149
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
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 415
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 420
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$10;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    .line 155
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$2;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 444
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$11;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$11;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    .line 472
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 473
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 453
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$12;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$12;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 463
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$13;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$13;-><init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueFucToRenderer(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public queueFucToRenderer(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runable"    # Ljava/lang/Runnable;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public requestDelayHide()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mRequestDelayExit:Z

    .line 357
    return-void
.end method

.method public restoreGLBackgroundColor()V
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setBackgroundColor(I)V

    .line 679
    return-void
.end method

.method public setEntryAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mEntryAnimation:Landroid/view/animation/Animation;

    .line 251
    return-void
.end method

.method public setExitAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mExitAnimation:Landroid/view/animation/Animation;

    .line 256
    return-void
.end method

.method public setGLBackgroundColor(I)V
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->setBackgroundColor(I)V

    .line 675
    return-void
.end method

.method public show(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;I)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;
    .param p2, "orientation"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mWindowManager:Lcom/lenovo/scg/common/le3d/Le3dWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindowManager;->showWindow(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;I)V

    .line 659
    :cond_0
    return-void
.end method
