.class Lcom/lenovo/scg/camera/PhotoModule$21;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->onRestCameraPreferenceClicked()V
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
    .line 6002
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$21;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6006
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$21;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->resetCameraSettingSharedPreference()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$6900(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 6007
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$21;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6008
    return-void
.end method
