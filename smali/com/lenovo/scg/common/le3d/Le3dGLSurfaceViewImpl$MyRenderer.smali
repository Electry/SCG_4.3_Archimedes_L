.class Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
.super Ljava/lang/Object;
.source "Le3dGLSurfaceViewImpl.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation


# instance fields
.field private mDebugFpsStart:J

.field private mDebugFrames:I

.field final synthetic this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)V
    .locals 2

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFpsStart:J

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFrames:I

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->hideView()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->exit()V

    return-void
.end method

.method private drawLe3dWindow()V
    .locals 2

    .prologue
    .line 586
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 587
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->draw()V

    .line 590
    :cond_0
    return-void
.end method

.method private entry(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;

    .prologue
    .line 593
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getWindowByWindowType(Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1, p1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1200(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dWindowFactory$Type;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 594
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 595
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/common/le3d/Le3dWindow;->mIsVisible:Z

    .line 596
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->entry()V

    .line 598
    :cond_0
    return-void
.end method

.method private exit()V
    .locals 2

    .prologue
    .line 601
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 602
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->exit()V

    .line 605
    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 609
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->hide()V

    .line 612
    :cond_0
    return-void
.end method

.method private printDebugInfo()V
    .locals 6

    .prologue
    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 484
    .local v0, "end":J
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFrames:I

    .line 485
    iget-wide v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFpsStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 486
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFrames:I

    .line 488
    iput-wide v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->mDebugFpsStart:J

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public callback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
    .locals 2
    .param p1, "callbackData"    # Lcom/lenovo/scg/common/le3d/Le3dCallbackData;

    .prologue
    .line 618
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 619
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->callback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V

    .line 622
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 580
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onBackPressed()V

    .line 583
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 497
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->onFPSChanged()V

    .line 498
    const-string v0, "Thread_count"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Le3dGLSurfaceViewImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/ThreadInfoUtils;->getThreadCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->printDebugInfo()V

    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$600(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mOrientation:I
    invoke-static {v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$700(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I

    move-result v3

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->doCreateLe3dWindowIfHaveRequest(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$800(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;I)V

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$600(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->prepareDraw()V

    .line 508
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->drawLe3dWindow()V

    .line 509
    return-void
.end method

.method public onFling(IFF)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 548
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 549
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onFling(IFF)V

    .line 552
    :cond_0
    return-void
.end method

.method public onMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 541
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 542
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onMove(FF)V

    .line 545
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 572
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 573
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onOrientationChanged(I)V

    .line 576
    :cond_0
    return-void
.end method

.method public onPressDown(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 526
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 527
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressDown(FF)V

    .line 530
    :cond_0
    return-void
.end method

.method public onPressUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 533
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 534
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressUp(FF)V

    .line 537
    :cond_0
    return-void
.end method

.method public onScroll(FF)Z
    .locals 2
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 564
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 565
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onScroll(FF)V

    .line 568
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onSingleTapUp(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 555
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # invokes: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->getCurrentWindow()Lcom/lenovo/scg/common/le3d/Le3dWindow;
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1000(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dWindow;

    move-result-object v0

    .line 556
    .local v0, "window":Lcom/lenovo/scg/common/le3d/Le3dWindow;
    if-eqz v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dWindowHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$1100(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onSingleTapUp(FF)V

    .line 559
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$600(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setSize(II)V

    .line 516
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$900(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Landroid/content/Context;

    move-result-object v2

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-direct {v1, v2, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;)V

    # setter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$602(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    # getter for: Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;->access$600(Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl$MyRenderer;->this$0:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewImpl;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 523
    return-void
.end method
