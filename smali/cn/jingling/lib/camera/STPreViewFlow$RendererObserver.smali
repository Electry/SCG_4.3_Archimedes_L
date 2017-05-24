.class Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;
.super Ljava/lang/Object;
.source "STPreViewFlow.java"

# interfaces
.implements Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/STPreViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/STPreViewFlow;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/camera/STPreViewFlow;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;->this$0:Lcn/jingling/lib/camera/STPreViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/camera/STPreViewFlow;Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;-><init>(Lcn/jingling/lib/camera/STPreViewFlow;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 102
    :try_start_0
    iget-object v2, p0, Lcn/jingling/lib/camera/STPreViewFlow$RendererObserver;->this$0:Lcn/jingling/lib/camera/STPreViewFlow;

    iget-object v2, v2, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraManager:Lcn/jingling/lib/camera/CameraManager;

    invoke-virtual {v2}, Lcn/jingling/lib/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 103
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 105
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 106
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 113
    .end local v0    # "camera":Landroid/hardware/Camera;
    :goto_0
    return-void

    .line 108
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_0
    const-string/jumbo v2, "xxxx"

    const-string/jumbo v3, "warn!!!onSurfaceTextureCreated camera == null!!!"

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "xxxx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
