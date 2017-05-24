.class Lcn/jingling/lib/camera/STPreViewFlow$1;
.super Ljava/lang/Object;
.source "STPreViewFlow.java"

# interfaces
.implements Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/STPreViewFlow;->initCameraView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/STPreViewFlow;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/STPreViewFlow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/STPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/STPreViewFlow;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFpsUpdate(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/STPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/camera/STPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/STPreViewFlow;

    iget-object v0, v0, Lcn/jingling/lib/camera/STPreViewFlow;->mCameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    invoke-interface {v0, p1}, Lcn/jingling/lib/camera/CameraManager$ICameraControl;->onFpsUpdate(I)V

    .line 42
    :cond_0
    return-void
.end method
