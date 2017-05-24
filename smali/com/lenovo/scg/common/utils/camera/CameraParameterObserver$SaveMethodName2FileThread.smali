.class Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;
.super Ljava/lang/Thread;
.source "CameraParameterObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveMethodName2FileThread"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->this$0:Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 101
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDeviceOperateHistory.txt"

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver$SaveMethodName2FileThread;->name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method
