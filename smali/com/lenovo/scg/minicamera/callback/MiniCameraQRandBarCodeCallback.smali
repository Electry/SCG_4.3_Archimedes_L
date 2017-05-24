.class public Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;
.super Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;
.source "MiniCameraQRandBarCodeCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraQRandBarCodeCallback"


# instance fields
.field private mDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

.field private mDecodeResultCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<",
            "Lcom/alipay/code/scansdk/decode/DecoderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerBook:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mListenerCD:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mListenerOCRTrans:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->getInstance()Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    .line 43
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 44
    return-void
.end method

.method private decodeFromAlipay([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 111
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewFormat()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 112
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getAlipayScanMode()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mDecodeResultCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->decodeYuvImage(Landroid/graphics/YuvImage;ILcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;Z)V

    .line 113
    return-void
.end method

.method private decodeFromMode([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 74
    const-string v0, "MiniCameraQRandBarCodeCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeFromMode, mScanMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->QR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BAR:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_2

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->decodeFromAlipay([B)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->OCRTRANS:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerOCRTrans:Lcom/baidu/idl/lib/OnDecodeListener;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->decodeOCRTrans(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    goto :goto_0

    .line 80
    :cond_3
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->BOOK:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerBook:Lcom/baidu/idl/lib/OnDecodeListener;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->decodeBook(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    goto :goto_0

    .line 83
    :cond_4
    sget-object v0, Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;->CD:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->getPreviewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerCD:Lcom/baidu/idl/lib/OnDecodeListener;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/minicamera/function/decode/baidu/MiniCameraBaiduDecodeManager;->decodeCD(Landroid/content/Context;[BIILcom/baidu/idl/lib/OnDecodeListener;)V

    goto :goto_0
.end method

.method private getAlipayScanMode()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x27f

    return v0
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 50
    const-string v1, "MiniCameraQRandBarCodeCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreviewFrame, date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->decodeFromMode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const-string v1, "MiniCameraQRandBarCodeCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreviewFrame, Exception!! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlipayDecodeResultCallbackListener(Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<",
            "Lcom/alipay/code/scansdk/decode/DecoderResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "decodeResultCallback":Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;, "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback<Lcom/alipay/code/scansdk/decode/DecoderResult;>;"
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mDecodeResultCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    .line 63
    return-void
.end method

.method public setBaiduDecodeResultCallbackListener(Lcom/baidu/idl/lib/OnDecodeListener;Lcom/baidu/idl/lib/OnDecodeListener;Lcom/baidu/idl/lib/OnDecodeListener;)V
    .locals 0
    .param p1, "listenerOCRTrans"    # Lcom/baidu/idl/lib/OnDecodeListener;
    .param p2, "listenerBook"    # Lcom/baidu/idl/lib/OnDecodeListener;
    .param p3, "listenerCD"    # Lcom/baidu/idl/lib/OnDecodeListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerOCRTrans:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 69
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerBook:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 70
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mListenerCD:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 71
    return-void
.end method

.method public setIfsenddatatoetao(Z)V
    .locals 0
    .param p1, "senddata"    # Z

    .prologue
    .line 117
    return-void
.end method

.method public setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->mScanMode:Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .line 95
    return-void
.end method
