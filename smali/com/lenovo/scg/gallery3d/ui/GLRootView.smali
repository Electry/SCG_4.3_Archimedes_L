.class public Lcom/lenovo/scg/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/lenovo/scg/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;,
        Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private mAbsActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mDisplayRotation:I

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

.field private mIdleRunnerForceRun:Z

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mIsGallery:Z

.field private mIsOrientationFixed:Z

.field private mLastDrawFinishTime:J

.field private mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

.field private mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 73
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 77
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 103
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 107
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    .line 109
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 113
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 115
    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

    .line 117
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z

    .line 119
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 121
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 127
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 129
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 133
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIsGallery:Z

    .line 135
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIsOrientationFixed:Z

    .line 139
    sget-object v3, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .line 260
    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 162
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    .line 163
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEGLContextClientVersion(I)V

    .line 165
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    .line 166
    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    .line 170
    :goto_1
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 171
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 179
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    .line 168
    :cond_1
    const/4 v2, 0x6

    move-object v0, p0

    move v1, v8

    move v3, v8

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/ui/GLRootView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z

    return p1
.end method

.method private layoutContentPane()V
    .locals 12

    .prologue
    const/16 v11, 0x10e

    const/16 v10, 0xb4

    const/16 v8, 0x5a

    const/4 v9, 0x0

    .line 302
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    .line 304
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getWidth()I

    move-result v4

    .line 305
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 306
    .local v2, "h":I
    const/4 v1, 0x0

    .line 307
    .local v1, "displayRotation":I
    const/4 v0, 0x0

    .line 310
    .local v0, "compensation":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    if-eqz v5, :cond_5

    .line 311
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 312
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 317
    :goto_0
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before mLockScreenType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-ne v5, v0, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    if-eq v5, v6, :cond_2

    .line 319
    :cond_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    .line 322
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    if-ne v5, v6, :cond_6

    .line 323
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-ne v5, v10, :cond_1

    .line 324
    iput v9, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    .line 340
    :cond_1
    :goto_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLockScreenType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_9

    .line 343
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 345
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 347
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 352
    :cond_2
    :goto_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 355
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_3

    .line 356
    move v3, v4

    .line 357
    .local v3, "tmp":I
    move v4, v2

    .line 358
    move v2, v3

    .line 360
    .end local v3    # "tmp":I
    :cond_3
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "layout content pane "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 362
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 366
    :cond_4
    return-void

    .line 314
    :cond_5
    const/4 v1, 0x0

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 326
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockHorizonScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    if-ne v5, v6, :cond_7

    .line 327
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-ne v5, v8, :cond_1

    .line 328
    iput v11, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    goto/16 :goto_1

    .line 330
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    if-ne v5, v6, :cond_1

    .line 332
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-ne v5, v10, :cond_8

    .line 333
    iput v9, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    .line 336
    :cond_8
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-ne v5, v8, :cond_1

    .line 337
    iput v11, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    goto/16 :goto_1

    .line 349
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_2
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 508
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 511
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->deleteRecycledResources()V

    .line 514
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->resetUploadLimit()V

    .line 516
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 518
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mDisplayRotation:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 519
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 522
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 523
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 524
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v4, :cond_3

    .line 525
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 527
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 529
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 530
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 531
    .local v2, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 532
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 537
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "now":J
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 538
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 541
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 542
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 543
    :cond_7
    monitor-exit v5

    .line 553
    return-void

    .line 543
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private outputFps()V
    .locals 8

    .prologue
    .line 436
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 437
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 438
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 444
    :cond_0
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 445
    return-void

    .line 439
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 440
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 442
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFrameCount:I

    goto :goto_0
.end method

.method private rotateCanvas(I)V
    .locals 8
    .param p1, "degrees"    # I

    .prologue
    const/4 v7, 0x0

    .line 556
    if-nez p1, :cond_0

    .line 568
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getWidth()I

    move-result v3

    .line 558
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 559
    .local v2, "h":I
    div-int/lit8 v0, v3, 0x2

    .line 560
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 561
    .local v1, "cy":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 562
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 563
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 564
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 270
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;
    .param p2, "forceRun"    # Z

    .prologue
    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 201
    :try_start_0
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunnerForceRun:Z

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 593
    :goto_0
    return v1

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 574
    .local v0, "action":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 575
    :cond_1
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 580
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 581
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/lenovo/scg/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 584
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 587
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 588
    .local v1, "handled":Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 589
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 576
    .end local v1    # "handled":Z
    :cond_6
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 762
    return-void

    .line 760
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 702
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 643
    return-void
.end method

.method public lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    if-eq v0, v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 294
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V

    .line 752
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 753
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 450
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->onFPSChanged()V

    .line 454
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->update()V

    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 462
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 467
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFirstDraw:Z

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 477
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 501
    :cond_1
    const-string/jumbo v0, "wwf5"

    const-string/jumbo v1, "onDrawFrame end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 469
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 370
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 371
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V

    .line 665
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 673
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->onPause()V

    .line 675
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 420
    const-string/jumbo v1, "wwf5"

    const-string/jumbo v2, "onSurfaceChanged start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 423
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 428
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 429
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setSize(II)V

    .line 432
    const-string/jumbo v1, "wwf5"

    const-string/jumbo v2, "onSurfaceChanged end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 429
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 380
    const-string/jumbo v1, "wwf5"

    const-string/jumbo v2, "onSurfaceCreated start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 381
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 382
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 390
    :try_start_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 391
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .line 393
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIsGallery:Z

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->initGalleryBackground()V

    .line 400
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 410
    const-string/jumbo v1, "wwf5"

    const-string/jumbo v2, "onSurfaceCreated end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 391
    :cond_2
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 282
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFlags:I

    .line 283
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 243
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public requestRenderForced()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->superRequestRender()V

    .line 232
    return-void
.end method

.method public setActivity(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mAbsActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 152
    return-void
.end method

.method public setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 9
    .param p1, "content"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 210
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 212
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 215
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 217
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 219
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/GLView;->detachFromRoot()V

    .line 220
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->yieldAllTextures()V

    .line 222
    :cond_3
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mContentView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1, p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->attachToRoot(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    .line 225
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setGalleryFlag()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mIsGallery:Z

    .line 143
    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 715
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    .line 718
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 719
    const/4 v0, 0x1

    .line 720
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_1

    .line 721
    or-int/lit16 v0, v0, 0x104

    .line 724
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V
    .locals 0
    .param p1, "source"    # Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/lenovo/scg/gallery3d/ui/OrientationSource;

    .line 680
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V

    .line 734
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 735
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V

    .line 740
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 741
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->unfreeze()V

    .line 746
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 747
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 709
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 710
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 660
    return-void
.end method

.method public unlockScreenRotation()V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockNone:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mLockScreenType:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    .line 299
    return-void
.end method

.method public validRequstRender()Z
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "bRet":Z
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-nez v1, :cond_0

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 254
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method
