.class Lcom/lenovo/scg/monitor/MonitorService$5;
.super Ljava/lang/Object;
.source "MonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/monitor/MonitorService;->onClick(Landroid/view/View;)V
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
    .line 609
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/monitor/MonitorService;->access$100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/monitor/MonitorService;->access$002(Lcom/lenovo/scg/monitor/MonitorService;I)I

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/monitor/MonitorService;->access$100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/monitor/MonitorService;->access$202(Lcom/lenovo/scg/monitor/MonitorService;I)I

    .line 615
    const-string v0, "FloatWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$000(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService$5;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I
    invoke-static {v2}, Lcom/lenovo/scg/monitor/MonitorService;->access$200(Lcom/lenovo/scg/monitor/MonitorService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method
