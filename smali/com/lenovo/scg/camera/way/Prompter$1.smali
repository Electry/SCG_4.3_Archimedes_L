.class Lcom/lenovo/scg/camera/way/Prompter$1;
.super Landroid/os/Handler;
.source "Prompter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/Prompter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/Prompter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/Prompter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/Prompter$1;->this$0:Lcom/lenovo/scg/camera/way/Prompter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter$1;->this$0:Lcom/lenovo/scg/camera/way/Prompter;

    # getter for: Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/Prompter;->access$000(Lcom/lenovo/scg/camera/way/Prompter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/Prompter$1;->this$0:Lcom/lenovo/scg/camera/way/Prompter;

    # getter for: Lcom/lenovo/scg/camera/way/Prompter;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/Prompter;->access$000(Lcom/lenovo/scg/camera/way/Prompter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
