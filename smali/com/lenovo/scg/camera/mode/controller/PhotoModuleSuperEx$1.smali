.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;
.super Ljava/lang/Object;
.source "PhotoModuleSuperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
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
    .line 366
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$000(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$100(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->stopShortLoadingAnim()V

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$1;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$202(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;)Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    .line 374
    :cond_0
    return-void
.end method
