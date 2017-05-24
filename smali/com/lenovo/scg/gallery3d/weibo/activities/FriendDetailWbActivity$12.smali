.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStop:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadFriendsStatuses(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;ZJ)V

    .line 1450
    return-void
.end method

.method public toStop()V
    .locals 1

    .prologue
    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;->mStop:Z

    .line 1447
    return-void
.end method
