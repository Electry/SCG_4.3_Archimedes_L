.class Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;
.super Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;
.source "MiniCameraAlipayDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->decodeYuvImage(Landroid/graphics/YuvImage;ILcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask",
        "<",
        "Lcom/alipay/code/scansdk/decode/DecoderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

.field final synthetic val$scanmode:I

.field final synthetic val$yuvImage:Landroid/graphics/YuvImage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;Landroid/graphics/YuvImage;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->this$0:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    iput-object p2, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->val$yuvImage:Landroid/graphics/YuvImage;

    iput p3, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->val$scanmode:I

    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;-><init>()V

    return-void
.end method


# virtual methods
.method public decode()Lcom/alipay/code/scansdk/decode/DecoderResult;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->val$yuvImage:Landroid/graphics/YuvImage;

    iget v1, p0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->val$scanmode:I

    invoke-static {v0, v1}, Lcom/alipay/code/scansdk/decode/Decoder;->decode(Landroid/graphics/YuvImage;I)Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;->decode()Lcom/alipay/code/scansdk/decode/DecoderResult;

    move-result-object v0

    return-object v0
.end method
