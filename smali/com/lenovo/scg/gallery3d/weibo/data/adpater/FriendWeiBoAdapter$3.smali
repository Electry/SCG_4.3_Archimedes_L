.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;
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
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;->val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    const-string/jumbo v0, "panhui4_FriendWeiBoAdapter"

    const-string/jumbo v1, "onClick, imgPic3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;->val$dataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    const/4 v2, 0x2

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->getIntentForSingleImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;I)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;I)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->clean()V

    .line 242
    return-void
.end method
