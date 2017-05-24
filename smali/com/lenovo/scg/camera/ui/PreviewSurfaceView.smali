.class public Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "PreviewSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 33
    return-void
.end method

.method private setLayoutSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    .line 46
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public expand()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 41
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PreviewSurfaceView;->setLayoutSize(I)V

    .line 37
    return-void
.end method
