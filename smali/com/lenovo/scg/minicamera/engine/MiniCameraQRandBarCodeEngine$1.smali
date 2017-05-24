.class Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;
.super Ljava/lang/Object;
.source "MiniCameraQRandBarCodeEngine.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acitonAfterResultDialogDismiss()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$100(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$000(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;->updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 93
    return-void
.end method
