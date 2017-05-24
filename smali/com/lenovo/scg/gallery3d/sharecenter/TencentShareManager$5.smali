.class Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;
.super Ljava/lang/Thread;
.source "TencentShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lon:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$lon:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$lat:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ShareCenter_tencentshare_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$content:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$lon:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->val$lat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v0, "tencent share thread start"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 627
    return-void
.end method
