.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 248
    if-eqz p2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    check-cast p2, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$302(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->SetSinaShareManager(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->setTencentShareManger(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->initShareManagers()V

    .line 254
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$302(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    .line 244
    return-void
.end method
