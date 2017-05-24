.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;
.super Ljava/lang/Thread;
.source "AtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->val$refresh:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "ShareCenter_getSinaAttentionList_thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$2000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->val$refresh:Z

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getSinaAttentionList(Z)Ljava/util/List;

    move-result-object v2

    .line 416
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 417
    .local v1, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    .end local v1    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$2100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    return-void
.end method
