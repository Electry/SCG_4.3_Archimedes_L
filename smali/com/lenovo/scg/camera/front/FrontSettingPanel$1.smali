.class Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;
.super Landroid/os/Handler;
.source "FrontSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/front/FrontSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSupplyButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$000(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSizeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$100(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mVideoButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$200(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize11Button:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$300(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize43Button:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$400(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mSize169Button:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$500(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mLowButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$600(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mMediumButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$700(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontSettingPanel$1;->this$0:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    # getter for: Lcom/lenovo/scg/camera/front/FrontSettingPanel;->mHighButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->access$800(Lcom/lenovo/scg/camera/front/FrontSettingPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
