.class Lcom/lenovo/scg/camera/PhotoModule$2;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$2;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$2;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$2;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V

    .line 562
    return-void
.end method
