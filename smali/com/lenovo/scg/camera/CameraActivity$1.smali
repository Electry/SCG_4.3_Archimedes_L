.class Lcom/lenovo/scg/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraActivity$1;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "b"    # Landroid/os/IBinder;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity$1;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    check-cast p2, Lcom/lenovo/scg/camera/MediaSaveService$LocalBinder;

    .end local p2    # "b":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/lenovo/scg/camera/MediaSaveService$LocalBinder;->getService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->access$002(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/MediaSaveService;)Lcom/lenovo/scg/camera/MediaSaveService;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity$1;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    # getter for: Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraActivity;->access$100(Lcom/lenovo/scg/camera/CameraActivity;)Lcom/lenovo/scg/camera/CameraModule;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraActivity$1;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    # getter for: Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraActivity;->access$000(Lcom/lenovo/scg/camera/CameraActivity;)Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/CameraModule;->onMediaSaveServiceConnected(Lcom/lenovo/scg/camera/MediaSaveService;)V

    .line 99
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity$1;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/CameraActivity;->mMediaSaveService:Lcom/lenovo/scg/camera/MediaSaveService;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->access$002(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/MediaSaveService;)Lcom/lenovo/scg/camera/MediaSaveService;

    .line 104
    return-void
.end method
