.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;
.super Ljava/lang/Thread;
.source "WhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v0, v1, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getFriendsListFromNet(ZZ)Ljava/util/List;

    .line 1217
    return-void
.end method
