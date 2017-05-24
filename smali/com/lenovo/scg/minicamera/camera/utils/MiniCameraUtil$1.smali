.class final Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;
.super Ljava/lang/Object;
.source "MiniCameraUtil.java"

# interfaces
.implements Lledroid/nac/ShellCommand$ShellCommandResponseEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->checkRootSystem(Landroid/content/Context;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mWorkingWell:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$needInstall:Z

.field final synthetic val$reInstall:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$needInstall:Z

    iput-object p2, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$reInstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->mWorkingWell:Z

    return-void
.end method


# virtual methods
.method public onShellCommandResponse(ILjava/lang/String;)V
    .locals 2
    .param p1, "cmdId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 669
    if-eqz p2, :cond_1

    const-string/jumbo v0, "root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nac_server"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->mWorkingWell:Z

    .line 671
    const-string v0, "MiniCameraUtil"

    const-string v1, "=> System service is working"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nac_server"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->mWorkingWell:Z

    .line 675
    const-string v0, "MiniCameraUtil"

    const-string v1, "=> System service file exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_2
    if-eqz p2, :cond_0

    const-string/jumbo v0, "system"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->mWorkingWell:Z

    .line 679
    const-string v0, "MiniCameraUtil"

    const-string v1, "=> System data readable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShellCommandResponseFinished(I)V
    .locals 3
    .param p1, "exeId"    # I

    .prologue
    .line 692
    const-string v1, "MiniCameraUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check Finished: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->mWorkingWell:Z

    if-eqz v0, :cond_1

    const-string v0, "Service is working well"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$needInstall:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->ASSET_APK_TO_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil$1;->val$reInstall:Z

    # invokes: Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->rootInstallApp(Landroid/content/Context;Landroid/net/Uri;Z)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->access$100(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 698
    :cond_0
    return-void

    .line 692
    :cond_1
    const-string v0, "Service is not working well"

    goto :goto_0
.end method

.method public onShellCommandResponseStarted(I)V
    .locals 2
    .param p1, "exeId"    # I

    .prologue
    .line 686
    const-string v0, "MiniCameraUtil"

    const-string v1, "Start..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void
.end method
