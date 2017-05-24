.class public Lcom/alipay/code/scansdk/process/CodeHandler;
.super Ljava/lang/Object;
.source "CodeHandler.java"


# static fields
.field public static final ACTION_ROUTE:Ljava/lang/String; = "com.alipay.mobile.code.ROUTE"

.field public static final CATEGORY_SCAN_APK:Ljava/lang/String; = "com.alipay.mobile.SCAN_APK"

.field public static final CODE_TYPE_BARCODE:Ljava/lang/String; = "barCode"

.field public static final CODE_TYPE_QRCODE:Ljava/lang/String; = "qrCode"

.field public static final KEY_APP_KEY:Ljava/lang/String; = "appKey"

.field public static final KEY_BARCODE_TYPE:Ljava/lang/String; = "barCodeType"

.field public static final KEY_CODE_STR:Ljava/lang/String; = "codeStr"

.field public static final KEY_CODE_TYPE:Ljava/lang/String; = "codeType"

.field public static final PROCESS_REQ:I = 0x79f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBarCodeHandleIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "barCodeType"    # Ljava/lang/String;
    .param p1, "codeStr"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.mobile.code.ROUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.alipay.mobile.SCAN_APK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "codeType"

    const-string v2, "barCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "barCodeType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "codeStr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "appKey"

    invoke-static {}, Lcom/alipay/code/scansdk/SdkHelper;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method public static getQrCodeHandleIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "codeStr"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.mobile.code.ROUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.alipay.mobile.SCAN_APK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "codeType"

    const-string/jumbo v2, "qrCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "codeStr"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "appKey"

    invoke-static {}, Lcom/alipay/code/scansdk/SdkHelper;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method

.method private static goIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/code/scansdk/process/ProcessException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v1, 0x79f4

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    new-instance v1, Lcom/alipay/code/scansdk/process/ProcessException;

    invoke-direct {v1}, Lcom/alipay/code/scansdk/process/ProcessException;-><init>()V

    throw v1
.end method

.method public static handleBarCode(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "barCodeType"    # Ljava/lang/String;
    .param p2, "codeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/code/scansdk/process/ProcessException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcom/alipay/code/scansdk/process/CodeHandler;->getBarCodeHandleIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/code/scansdk/process/CodeHandler;->goIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public static handleQrCode(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "codeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/code/scansdk/process/ProcessException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/alipay/code/scansdk/process/CodeHandler;->getQrCodeHandleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/code/scansdk/process/CodeHandler;->goIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 35
    return-void
.end method
