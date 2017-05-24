.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;
.super Ljava/lang/Thread;
.source "WhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

.field final synthetic val$data:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->val$data:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->val$data:Landroid/database/Cursor;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->transferCursorToItem(Landroid/database/Cursor;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "WhiteListActivity"

    const-string v1, "ShieldLoaderListener#onLoadFinished, users != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    .line 230
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "WhiteListActivity"

    const-string v1, "ShieldLoaderListener#onLoadFinished, users = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    goto :goto_0
.end method
