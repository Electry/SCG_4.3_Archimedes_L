.class Lcom/lenovo/scg/camera/mode/RemoveMode$2;
.super Ljava/lang/Object;
.source "RemoveMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode;->enter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$2;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$2;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RemoveMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/RemoveMode;->access$000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim(Z)V

    .line 284
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 285
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$2;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    iget-object v1, v1, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method
