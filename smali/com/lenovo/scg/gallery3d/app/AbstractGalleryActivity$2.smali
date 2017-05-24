.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onNetStateChange()V

    goto :goto_0

    .line 498
    :cond_2
    const-string v1, "com.lenovo.scg.auth.success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    if-nez v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;-><init>()V

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .line 501
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteTimeDb(Landroid/content/Context;)V

    .line 502
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    goto :goto_0

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteTimeDb(Landroid/content/Context;)V

    .line 505
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mWeiboList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    goto :goto_0
.end method
