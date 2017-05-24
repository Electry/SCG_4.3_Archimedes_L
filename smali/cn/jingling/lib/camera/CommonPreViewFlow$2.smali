.class Lcn/jingling/lib/camera/CommonPreViewFlow$2;
.super Ljava/lang/Object;
.source "CommonPreViewFlow.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/CommonPreViewFlow;->initCameraAndGLView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/CommonPreViewFlow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$2;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 112
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$2;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setFrame([B)V

    .line 113
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$2;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraViewBean:Lcn/jingling/lib/camera/CameraViewBean;

    iget-object v0, v0, Lcn/jingling/lib/camera/CameraViewBean;->cameraGLSurfaceView:Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->requestRender()V

    .line 114
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 115
    return-void
.end method
