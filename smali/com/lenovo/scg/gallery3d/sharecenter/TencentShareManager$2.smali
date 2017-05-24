.class Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;
.super Ljava/lang/Thread;
.source "TencentShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->checkTencentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

.field final synthetic val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ShareCenter_tencentshare_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->getLon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->val$sTencentParameter:Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;->getLat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v0, "tencent share thread start"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 239
    return-void
.end method
