.class Lcn/jingling/lib/camera/AbsPreViewFlow$1;
.super Ljava/lang/Object;
.source "AbsPreViewFlow.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


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


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/AbsPreViewFlow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/AbsPreViewFlow$1;->this$0:Lcn/jingling/lib/camera/AbsPreViewFlow;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
