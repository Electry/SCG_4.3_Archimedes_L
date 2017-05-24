.class Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;
.super Ljava/lang/Thread;
.source "CameraParameterObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveParameters2FileThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    # getter for: Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->access$000(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "111"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    # getter for: Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->access$100(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    # getter for: Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->access$100(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDeviceOperateHistory.txt"

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    # getter for: Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->access$100(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveParameters2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    const-string v1, ""

    # setter for: Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->mHistory:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->access$102(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    return-void
.end method
