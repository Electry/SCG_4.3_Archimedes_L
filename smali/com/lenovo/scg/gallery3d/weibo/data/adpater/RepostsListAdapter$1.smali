.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;
.super Landroid/os/Handler;
.source "RepostsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method
