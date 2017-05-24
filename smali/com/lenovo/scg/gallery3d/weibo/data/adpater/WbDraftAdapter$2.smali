.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;
.super Landroid/os/Handler;
.source "WbDraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->notifyDataSetChanged()V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, "sMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method
