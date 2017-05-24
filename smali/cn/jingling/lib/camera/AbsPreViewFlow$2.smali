.class Lcn/jingling/lib/camera/AbsPreViewFlow$2;
.super Ljava/lang/Object;
.source "AbsPreViewFlow.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/AbsPreViewFlow;->takePictureImmediately(Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/AbsPreViewFlow;

.field private final synthetic val$cameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/AbsPreViewFlow;Lcn/jingling/lib/camera/CameraManager$ICameraControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow$2;->this$0:Lcn/jingling/lib/camera/AbsPreViewFlow;

    iput-object p2, p0, Lcn/jingling/lib/camera/AbsPreViewFlow$2;->val$cameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow$2;->val$cameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/jingling/lib/camera/AbsPreViewFlow$2;->val$cameraControl:Lcn/jingling/lib/camera/CameraManager$ICameraControl;

    invoke-interface {v0, p1, p2}, Lcn/jingling/lib/camera/CameraManager$ICameraControl;->didTakePicture([BLandroid/hardware/Camera;)V

    .line 157
    :cond_0
    return-void
.end method
