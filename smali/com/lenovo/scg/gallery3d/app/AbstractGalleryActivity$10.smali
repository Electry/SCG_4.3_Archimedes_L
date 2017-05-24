.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->cloudLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;)V
    .locals 0

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;->val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 1884
    const-string v0, "WYJ"

    const-string v1, "login fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;->val$lcpaccount:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showCloudPanel()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 1890
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1878
    const-string v0, "WYJ"

    const-string v1, "login success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showCloudPanel()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$300(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 1880
    return-void
.end method
