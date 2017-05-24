.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;
.super Ljava/lang/Object;
.source "FriendWeiBoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

.field final synthetic val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    const-string/jumbo v0, "panhui4_FriendWeiBoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick, photo name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->clean()V

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$6;->val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->getIntentForFriendDetail(J)V
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;J)V

    .line 382
    return-void
.end method
