.class Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;
.super Ljava/lang/Thread;
.source "ParametersMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->monitorWaitOnPictureTaken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;->this$0:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/ParametersMonitor$1;->this$0:Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    # getter for: Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->access$100(Lcom/lenovo/scg/camera/monitor/ParametersMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5728takePicture\u6267\u884c\u4e4b\u540e\uff0conPictureTaken\u56de\u8c03\u5230\u8fbe\u4e4b\u524d\uff0c\u6267\u884c\u4e86setParameters\u4e86\uff0c\u8fd9\u662f\u4e0d\u5141\u8bb8\u6ef4"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 130
    return-void
.end method
