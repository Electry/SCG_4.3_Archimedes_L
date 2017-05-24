.class Lcom/lenovo/scg/camera/ui/PieRenderer$1;
.super Landroid/os/Handler;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 412
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$300(Lcom/lenovo/scg/camera/ui/PieRenderer;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$400(Lcom/lenovo/scg/camera/ui/PieRenderer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->onPieOpened(II)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # getter for: Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->onPieClosed()V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;->this$0:Lcom/lenovo/scg/camera/ui/PieRenderer;

    # invokes: Lcom/lenovo/scg/camera/ui/PieRenderer;->onEnterOpen()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->access$500(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
