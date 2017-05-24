.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;
.super Ljava/lang/Object;
.source "MiniCameraUIBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "UIBase"


# instance fields
.field private mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

.field private mHasSurface:Z

.field private mParent:Landroid/view/View;

.field private mPreviewController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;Landroid/view/View;Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .param p2, "previewcontroller"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "surfaceview"    # Landroid/view/SurfaceView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "UIBase"

    const-string v1, "UIBase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    .line 40
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mPreviewController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

    .line 41
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mParent:Landroid/view/View;

    .line 43
    invoke-static {p4}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object p4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceView:Landroid/view/SurfaceView;

    .line 47
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    return-object v0
.end method

.method public getCameraPreviewController()Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mPreviewController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHoler()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isHasSurface()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mHasSurface:Z

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 85
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 69
    const-string v0, "UIBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated, holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mHasSurface:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mHasSurface:Z

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mPreviewController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;->onSurfaceCreated()V

    .line 75
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mHasSurface:Z

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraUIBase;->mPreviewController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;->onSurfaceDestroy()V

    .line 81
    return-void
.end method
