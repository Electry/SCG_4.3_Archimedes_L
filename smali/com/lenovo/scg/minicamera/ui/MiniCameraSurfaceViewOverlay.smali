.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;
.super Landroid/widget/FrameLayout;
.source "MiniCameraSurfaceViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;,
        Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraSurfaceViewOverlay"


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:[I

.field private mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

.field private mTouchClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mPosition:[I

    .line 38
    new-instance v0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mTouchClients:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->setWillNotDraw(Z)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mTouchClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->adjustPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    return-object v0
.end method

.method private adjustPosition()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mPosition:[I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getLocationInWindow([I)V

    .line 84
    return-void
.end method


# virtual methods
.method public addRenderer(ILcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "renderer"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    invoke-interface {p2, p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getBottom()I

    move-result v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->layout(IIII)V

    .line 59
    return-void
.end method

.method public addRenderer(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V
    .locals 4
    .param p1, "renderer"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {p1, p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V

    .line 49
    invoke-interface {p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->handlesTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mTouchClients:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->getBottom()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->layout(IIII)V

    .line 53
    return-void
.end method

.method public directDispatchTouch(Landroid/view/MotionEvent;Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;
    .param p2, "target"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    invoke-virtual {v1, p2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->setTouchTarget(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 78
    .local v0, "res":Z
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->setTouchTarget(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V

    .line 79
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getClientSize()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWindowPositionX()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getWindowPositionY()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mPosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public remove(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$MiniCameraRenderer;->setOverlay(Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;)V

    .line 64
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay;->mRenderView:Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraSurfaceViewOverlay$RenderView;->invalidate()V

    .line 96
    return-void
.end method
