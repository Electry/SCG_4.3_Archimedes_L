.class Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;
.super Landroid/os/Handler;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/monitor/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/monitor/MonitorService;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/monitor/MonitorService;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/monitor/MonitorService;Lcom/lenovo/scg/monitor/MonitorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p2, "x1"    # Lcom/lenovo/scg/monitor/MonitorService$1;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 868
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 869
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 870
    .local v0, "sInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;->this$0:Lcom/lenovo/scg/monitor/MonitorService;

    # getter for: Lcom/lenovo/scg/monitor/MonitorService;->mTvModeZSD:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/monitor/MonitorService;->access$2500(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    return-void
.end method
