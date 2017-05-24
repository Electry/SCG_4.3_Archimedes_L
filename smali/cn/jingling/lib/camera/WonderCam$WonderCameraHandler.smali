.class Lcn/jingling/lib/camera/WonderCam$WonderCameraHandler;
.super Landroid/os/Handler;
.source "WonderCam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/camera/WonderCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WonderCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/WonderCam;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/WonderCam;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/jingling/lib/camera/WonderCam$WonderCameraHandler;->this$0:Lcn/jingling/lib/camera/WonderCam;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    return-void
.end method
