.class Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;
.super Ljava/lang/Object;
.source "MiniCameraQRandBarCodeEngine.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
        "<",
        "Lcom/alipay/code/scansdk/decode/DecoderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$100(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$000(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;->updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 114
    return-void
.end method

.method public decodeStart()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "MiniCameraAlipayQRandBarCodeEngine"

    const-string v1, "decodeStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public decodeSuccess(Lcom/alipay/code/scansdk/decode/DecoderResult;)V
    .locals 3
    .param p1, "result"    # Lcom/alipay/code/scansdk/decode/DecoderResult;

    .prologue
    .line 101
    const-string v0, "MiniCameraAlipayQRandBarCodeEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeSuccess, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$200(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public bridge synthetic decodeSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lcom/alipay/code/scansdk/decode/DecoderResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;->decodeSuccess(Lcom/alipay/code/scansdk/decode/DecoderResult;)V

    return-void
.end method
