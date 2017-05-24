.class public Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;
.super Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;
.source "MiniCameraAlipayDecodeManager.java"


# static fields
.field private static final mAlipayDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->mAlipayDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/decode/MiniCameraDecodeManagerBase;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->mAlipayDecodeManager:Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;

    return-object v0
.end method


# virtual methods
.method public decodeQRPicture(Ljava/lang/String;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "barcodeCallback":Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;, "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback<*>;"
    new-instance v0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$2;-><init>(Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->decode(Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V

    .line 81
    return-void
.end method

.method public decodeYuvImage(Landroid/graphics/YuvImage;ILcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;Z)V
    .locals 1
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p2, "scanmode"    # I
    .param p4, "failed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/YuvImage;",
            "I",
            "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "barcodeCallback":Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;, "Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback<*>;"
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;->decode(Lcom/lenovo/scg/minicamera/function/decode/MiniCameraAbstractDecodeTask;Lcom/lenovo/scg/minicamera/function/result/IMiniCameraDecodeResultCallback;)V

    .line 62
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager$1;-><init>(Lcom/lenovo/scg/minicamera/function/decode/alipay/MiniCameraAlipayDecodeManager;Landroid/graphics/YuvImage;I)V

    goto :goto_0
.end method
