.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$3;
.super Ljava/lang/Object;
.source "PhotoModuleSuperEx.java"

# interfaces
.implements Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startModeMaskAnim()V
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
    .line 763
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$3;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$3;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->afterDestorySettingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 768
    return-void
.end method
