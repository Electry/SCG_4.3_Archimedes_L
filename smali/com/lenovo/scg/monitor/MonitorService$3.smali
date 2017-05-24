.class Lcom/lenovo/scg/monitor/MonitorService$3;
.super Landroid/os/Handler;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/monitor/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/monitor/MonitorService;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/monitor/MonitorService;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 326
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 329
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mSCGMem:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$900(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f062e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->result:[I
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$300(Lcom/lenovo/scg/monitor/MonitorService;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/UnitsUtils;->Kb2M(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMemNative:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1000(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f062f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->result:[I
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$300(Lcom/lenovo/scg/monitor/MonitorService;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/UnitsUtils;->Kb2M(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mThreadsView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0635

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/ThreadInfoUtils;->getThreadCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mFreeMen:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1200(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f062d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMemFree:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$500(Lcom/lenovo/scg/monitor/MonitorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaServer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1300(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0638

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerUSED:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$700(Lcom/lenovo/scg/monitor/MonitorService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 343
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 344
    .local v0, "newFlashMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mFlashStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a51

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "newFlashMode":Ljava/lang/String;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 350
    .local v1, "newMetering":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMetering:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1500(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$3;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0a52

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x1100 -> :sswitch_0
        0x8004 -> :sswitch_1
        0x8005 -> :sswitch_2
    .end sparse-switch
.end method
