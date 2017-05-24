.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;
.super Landroid/os/Handler;
.source "CommentsListAdapterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapterMain;->notifyDataSetChanged()V

    .line 109
    return-void
.end method
