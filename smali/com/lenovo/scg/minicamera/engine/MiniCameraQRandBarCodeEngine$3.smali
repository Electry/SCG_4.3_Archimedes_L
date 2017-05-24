.class Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;
.super Ljava/lang/Object;
.source "MiniCameraQRandBarCodeEngine.java"

# interfaces
.implements Lcom/baidu/idl/lib/OnDecodeListener;


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
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecodeResponse(Lcom/baidu/idl/lib/DecodeResponse;)V
    .locals 6
    .param p1, "resp"    # Lcom/baidu/idl/lib/DecodeResponse;

    .prologue
    .line 121
    move-object v1, p1

    check-cast v1, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;

    .line 123
    .local v1, "mIDLBookResponse":Lcom/baidu/idl/lib/network/entity/IDLBookResponse;
    invoke-virtual {v1}, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "resultStr":Ljava/lang/String;
    const-string v3, "MiniCameraAlipayQRandBarCodeEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bookInterface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v3, v1, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;->err_id:I

    const/16 v4, 0x2711

    if-ne v3, v4, :cond_1

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$300(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v3, v1, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;->err_id:I

    const/16 v4, 0x2712

    if-ne v3, v4, :cond_2

    .line 132
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$100(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;
    invoke-static {v4}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$000(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;->updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V

    goto :goto_0

    .line 134
    :cond_2
    iget v3, v1, Lcom/baidu/idl/lib/network/entity/IDLBookResponse;->err_id:I

    const/16 v4, 0x2713

    if-ne v3, v4, :cond_0

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$300(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->handleWhenNoNet()Z

    move-result v0

    .line 138
    .local v0, "haveNet":Z
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;->this$0:Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    # getter for: Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->access$100(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;->changeMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    goto :goto_0
.end method
