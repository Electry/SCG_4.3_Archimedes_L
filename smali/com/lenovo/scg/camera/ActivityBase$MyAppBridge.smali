.class Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;
.super Lcom/lenovo/scg/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/lenovo/scg/camera/CameraScreenNail$Listener;
.implements Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

.field final synthetic this$0:Lcom/lenovo/scg/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/AppBridge;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;
    .param p1, "x1"    # Z

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->pickAlbum(Landroid/os/Bundle;)V

    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 792
    :cond_0
    return-void
.end method

.method private pickAlbum(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->pickAlbum(Landroid/os/Bundle;)V

    .line 838
    :cond_0
    return-void
.end method

.method private setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 780
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 787
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 788
    :cond_0
    return-void
.end method

.method private switchWithCaptureAnimation(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "isWatchBack"    # Z

    .prologue
    .line 783
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->switchWithCaptureAnimation(IZ)Z

    .line 784
    :cond_0
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .param p1, "isVideo"    # Z
    .param p2, "id"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->addSecureAlbumItem(ZI)V

    .line 776
    :cond_0
    return-void
.end method

.method public attachScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 3

    .prologue
    .line 708
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-nez v1, :cond_0

    .line 709
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 710
    new-instance v1, Lcom/lenovo/scg/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;-><init>(Lcom/lenovo/scg/camera/CameraScreenNail$Listener;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 712
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setController(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;)V

    .line 719
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v1

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0209c1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/camera/StaticBitmapScreenNail;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/camera/StaticBitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method public detachScreenNail()V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 725
    return-void
.end method

.method public getCameraScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public isCameraTabInPhotoPage()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->isCameraTabInPhotoPage()Z

    move-result v0

    .line 850
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->isPanoramaActivity()Z

    move-result v0

    return v0
.end method

.method public isStaticCamera()Z
    .locals 1

    .prologue
    .line 771
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->onCaptureTextureCopied()V

    .line 757
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 741
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->onFullScreenChanged(Z)V

    .line 742
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->onPreviewTextureCopied()V

    .line 752
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    # invokes: Lcom/lenovo/scg/camera/ActivityBase;->onSingleTapUp(II)Z
    invoke-static {v0, p1, p2}, Lcom/lenovo/scg/camera/ActivityBase;->access$600(Lcom/lenovo/scg/camera/ActivityBase;II)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ActivityBase;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 831
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 832
    return-void
.end method

.method public removeCameraOverlayGLView()V
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$2;-><init>(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->queueEvent(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestRenderForced()V

    .line 747
    return-void
.end method

.method public setCameraBackgroundColor([F)V
    .locals 1
    .param p1, "color"    # [F

    .prologue
    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->setCameraBackgroundColor([F)V

    .line 843
    :cond_0
    return-void
.end method

.method public setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 802
    new-instance v0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge$1;-><init>(Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->queueEvent(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public setCameraSourcePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "medaiSetPath"    # Ljava/lang/String;

    .prologue
    .line 797
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;->setCameraSourcePath(Ljava/lang/String;)V

    .line 798
    :cond_0
    return-void
.end method

.method public setServer(Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;->mServer:Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;

    .line 762
    return-void
.end method
