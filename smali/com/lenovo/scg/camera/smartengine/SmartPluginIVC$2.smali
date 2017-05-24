.class Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;
.super Ljava/lang/Object;
.source "SmartPluginIVC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "thread run begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->switchStatus(I)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$2;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->switchStatus(I)V

    .line 395
    const-string v0, "[smart_app]SmartPluginIVC"

    const-string/jumbo v1, "thread run end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method
