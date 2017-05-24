.class Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;
.super Ljava/lang/Object;
.source "GoldBoxGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation


# instance fields
.field private mDebugFpsStart:J

.field private mDebugFrames:I

.field public mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)V
    .locals 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFrames:I

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->hideView()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->entry()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->exit()V

    return-void
.end method

.method private createLe3dWindow()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$400(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    .line 421
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mLe3dControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$700(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->setLe3dControllerProxy(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;)V

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->setLe3dGLSurfaceView(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;)V

    .line 424
    :cond_0
    return-void
.end method

.method private drawLe3dWindow()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->draw()V

    .line 430
    :cond_0
    return-void
.end method

.method private entry()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->entry()V

    .line 436
    :cond_0
    return-void
.end method

.method private exit()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->exit()V

    .line 442
    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->hide()V

    .line 448
    :cond_0
    return-void
.end method

.method private printDebugInfo()V
    .locals 6

    .prologue
    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 351
    .local v0, "end":J
    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFrames:I

    .line 352
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 353
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFrames:I

    .line 355
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onBackPressed()V

    .line 416
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->printDebugInfo()V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$400(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->prepareDraw()V

    .line 364
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->drawLe3dWindow()V

    .line 365
    return-void
.end method

.method public onFling(IFF)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onFling(IFF)V

    .line 404
    :cond_0
    return-void
.end method

.method public onMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$600(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onMove(FF)V

    .line 398
    :cond_0
    return-void
.end method

.method public onPressDown(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$600(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressDown(FF)V

    .line 386
    :cond_0
    return-void
.end method

.method public onPressUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$600(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressUp(FF)V

    .line 392
    :cond_0
    return-void
.end method

.method public onSingleTapUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->mLe3dWindow:Lcom/lenovo/scg/common/le3d/Le3dWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$600(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onSingleTapUp(FF)V

    .line 410
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$400(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setSize(II)V

    .line 372
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->createLe3dWindow()V

    .line 373
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$500(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Landroid/content/Context;

    move-result-object v2

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-direct {v1, v2, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;)V

    # setter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$402(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;->access$400(Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/GoldBoxGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 380
    return-void
.end method
