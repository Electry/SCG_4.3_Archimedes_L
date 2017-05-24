.class Lcn/jingling/lib/camera/CommonPreViewFlow$1;
.super Ljava/lang/Object;
.source "CommonPreViewFlow.java"

# interfaces
.implements Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/CommonPreViewFlow;->initCameraView()V
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
    iput-object p1, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFpsUpdate(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/camera/CommonPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/CommonPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/CommonPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    invoke-interface {v0, p1}, Lcn/jingling/lib/camera/CameraManager$ICameraControl;->onFpsUpdate(I)V

    .line 43
    :cond_0
    return-void
.end method
