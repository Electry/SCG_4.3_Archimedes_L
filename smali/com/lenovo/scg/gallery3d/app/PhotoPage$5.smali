.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;
.super Landroid/os/Handler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 539
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 541
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 556
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->goBack()V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->goBack()V

    .line 548
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    .line 549
    .local v0, "handler":Landroid/os/Handler;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 550
    .local v1, "what":I
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
