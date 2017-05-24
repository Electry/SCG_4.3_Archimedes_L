.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$1;
.super Landroid/os/Handler;
.source "CommentsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 200
    return-void
.end method
