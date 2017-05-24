.class Lcom/lenovo/scg/monitor/MonitorService$6;
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
    .line 620
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$6;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 624
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService$6;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mFPSTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/monitor/MonitorService;->access$2100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$6;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # invokes: Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0633

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    return-void
.end method
