.class Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;
.super Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;
.source "MiniCameraAlipayDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->decodeQRPicture(Ljava/lang/String;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask",
        "<",
        "Lcom/etao/kaka/decode/DecodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;->this$0:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    iput-object p2, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;-><init>()V

    return-void
.end method


# virtual methods
.method public decode()Lcom/alipay/code/scansdk/decode/DecoderResult;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/code/scansdk/decode/Decoder;->decodeQr(Ljava/lang/String;)Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;->decode()Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    return-object v0
.end method
