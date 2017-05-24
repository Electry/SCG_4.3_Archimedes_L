.class Lcom/lenovo/scg/monitor/MonitorService$2;
.super Ljava/util/TimerTask;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/monitor/MonitorService;->onCreate()V
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
    .line 238
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getmem_SELF(Landroid/content/Context;)[I

    move-result-object v2

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->result:[I
    invoke-static {v1, v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$302(Lcom/lenovo/scg/monitor/MonitorService;[I)[I

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getMemFree(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->mMemFree:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$502(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/monitor/MonitorService;->access$400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getMemTotalM(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->mMemTatal:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$602(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    const-string v1, "/system/bin/mediaserver"

    invoke-static {v1}, Lcom/lenovo/scg/monitor/ProcessProxy;->getPidForPidNmae(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "mediaPid":I
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/lenovo/scg/monitor/ProcessProxy;->getVmRSSThreadsFormPid(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Lcom/lenovo/scg/common/utils/UnitsUtils;->Kb2M(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerUSED:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$702(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$2;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v1, v1, Lcom/lenovo/scg/monitor/MonitorService;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x1100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    return-void
.end method
