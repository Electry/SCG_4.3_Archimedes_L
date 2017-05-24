.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 853
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->onNetStateChange()V

    goto :goto_0
.end method
