.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;
.super Ljava/lang/Object;
.source "PhotoModuleSuperEx.java"

# interfaces
.implements Lcom/lenovo/scg/common/animation/ChangeFunctionAnim$AnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startChangeFunctionAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$2;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->showPorTutorialView()V

    .line 741
    return-void
.end method
