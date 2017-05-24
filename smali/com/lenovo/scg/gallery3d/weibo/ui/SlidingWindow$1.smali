.class Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$1;
.super Landroid/os/Handler;
.source "SlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 303
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->updateEntry()V

    .line 305
    return-void
.end method
