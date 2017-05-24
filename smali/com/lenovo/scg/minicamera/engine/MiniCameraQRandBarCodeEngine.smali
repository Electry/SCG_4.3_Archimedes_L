.class public Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;
.super Ljava/lang/Object;
.source "MiniCameraQRandBarCodeEngine.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/engine/IMiniCameraEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraAlipayQRandBarCodeEngine"


# instance fields
.field private mAcivity:Landroid/support/v4/app/FragmentActivity;

.field private mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

.field private mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

.field private mBaiduCDDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

.field private mBaiduTransDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

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

.field private mIDLBookDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mIDLCDDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mIDLOCRTransDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

.field private mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

.field private mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

.field private mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "controller"    # Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$1;-><init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    .line 97
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$2;-><init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mDecodeResultCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    .line 117
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$3;-><init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLBookDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 150
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$4;-><init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLCDDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 189
    new-instance v0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine$5;-><init>(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLOCRTransDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    .line 54
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    .line 56
    new-instance v0, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mDecodeResultCallback:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->setAlipayDecodeResultCallbackListener(Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLOCRTransDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLBookDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIDLCDDecodeResultCallback:Lcom/baidu/idl/lib/OnDecodeListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->setBaiduDecodeResultCallbackListener(Lcom/baidu/idl/lib/OnDecodeListener;Lcom/baidu/idl/lib/OnDecodeListener;Lcom/baidu/idl/lib/OnDecodeListener;)V

    .line 60
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->setListener(Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;)V

    .line 63
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->setListener(Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;)V

    .line 66
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduCDDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduCDDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->setListener(Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;)V

    .line 69
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduTransDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduTransDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->setListener(Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduBookDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduCDDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;)Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mBaiduTransDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    return-object v0
.end method


# virtual methods
.method public handleBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 237
    const-string v1, "MiniCameraAlipayQRandBarCodeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBitmap, bm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {p1}, Lcom/alipay/code/scansdk/decode/Decoder;->decodeQr(Landroid/graphics/Bitmap;)Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    .line 239
    .local v0, "result":Lcom/alipay/code/scansdk/decode/DecoderResult;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->needFinish(Z)V

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public handleExpress(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public handlePicture(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v1, "MiniCameraAlipayQRandBarCodeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePicture, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Lcom/alipay/code/scansdk/decode/Decoder;->decodeQr(Ljava/lang/String;)Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    .line 231
    .local v0, "result":Lcom/alipay/code/scansdk/decode/DecoderResult;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAlipayDecodeResultHandler:Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->handleDecodeSuccess(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public onCameraOpenedEngine()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/baidu/idl/lib/utils/IDLInitializer;->statisticsInit(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mAcivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->installAlipayFromAssets(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public setIfsenddatatoetao(Z)V
    .locals 1
    .param p1, "senddata"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->setIfsenddatatoetao(Z)V

    .line 246
    return-void
.end method

.method public setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;->setScanMode(Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;)V

    .line 251
    return-void
.end method

.method public startScan()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mIQRandBarCodeController:Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/engine/MiniCameraQRandBarCodeEngine;->mQRandBarCodeCallback:Lcom/lenovo/scg/minicamera/callback/MiniCameraQRandBarCodeCallback;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultHandleController2;->updatePreview(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 76
    return-void
.end method
