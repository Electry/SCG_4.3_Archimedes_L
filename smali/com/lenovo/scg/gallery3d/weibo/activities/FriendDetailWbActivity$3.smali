.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$3;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->initViews()V
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
    .line 520
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 524
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v1, "onClick load_more button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadMore()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    .line 570
    return-void
.end method
