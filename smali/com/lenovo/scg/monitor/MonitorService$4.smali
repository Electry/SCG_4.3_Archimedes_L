.class Lcom/lenovo/scg/monitor/MonitorService$4;
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
    .line 365
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x64

    const v6, 0x9002

    const v8, 0x9001

    .line 369
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 370
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-static {}, Lcom/lenovo/scg/monitor/ProcessProxy;->getTotalCpuTime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime01:J

    .line 374
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v3, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I
    invoke-static {v3}, Lcom/lenovo/scg/monitor/MonitorService;->access$1600(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/monitor/ProcessProxy;->getProcessCpuTime(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime01:J

    .line 377
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v3, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I
    invoke-static {v3}, Lcom/lenovo/scg/monitor/MonitorService;->access$1700(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/monitor/ProcessProxy;->getProcessCpuTime(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime01:J

    .line 379
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->getCPUStat()[J

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpu1:[J

    .line 380
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-static {}, Lcom/lenovo/scg/monitor/ProcessProxy;->getTotalCpuTime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime02:J

    .line 386
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v3, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I
    invoke-static {v3}, Lcom/lenovo/scg/monitor/MonitorService;->access$1600(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/monitor/ProcessProxy;->getProcessCpuTime(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime02:J

    .line 388
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v3, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I
    invoke-static {v3}, Lcom/lenovo/scg/monitor/MonitorService;->access$1700(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/monitor/ProcessProxy;->getProcessCpuTime(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime02:J

    .line 391
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime02:J

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v4, v4, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime01:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v10

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v4, v4, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime02:J

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v6, v6, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime01:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 392
    .local v1, "scg_cpu":I
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mSCGCPUUsageView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0637

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime02:J

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v4, v4, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime01:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, v10

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v4, v4, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime02:J

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-wide v6, v6, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime01:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 396
    .local v0, "mMediaServerCPUUage":I
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerCPU:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$1900(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0639

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->getCPUStat()[J

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpu2:[J

    .line 399
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mCPUUsage:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$2000(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0636

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v4, v4, Lcom/lenovo/scg/monitor/MonitorService;->cpu1:[J

    iget-object v5, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v5, v5, Lcom/lenovo/scg/monitor/MonitorService;->cpu2:[J

    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/android/SCGCPUInfoUtils;->getCPU_USAGE([J[J)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 404
    .end local v0    # "mMediaServerCPUUage":I
    .end local v1    # "scg_cpu":I
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$4;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, v2, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x9001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
