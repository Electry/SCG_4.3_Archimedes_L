.class public Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;
.super Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;
.source "MiniCameraAlipayDecoderResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraAlipayDecoderResultHandler"


# instance fields
.field private mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

.field private mNeedFinish:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method private startAlipay()V
    .locals 4

    .prologue
    .line 90
    const-string v1, "MiniCameraAlipayDecoderResultHandler"

    const-string/jumbo v2, "result dialog onclick detail button!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    const-string v1, "MiniCameraAlipayDecoderResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/code/scansdk/decode/DecoderResult;->process(Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/alipay/code/scansdk/process/ProcessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/alipay/code/scansdk/process/ProcessException;
    const-string v1, "MiniCameraAlipayDecoderResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    goto :goto_0
.end method


# virtual methods
.method public handleDecodeSuccess(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lcom/alipay/code/scansdk/decode/DecoderResult;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0f09fa

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 82
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-virtual {v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;->getCodeString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "decodeStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mDecoderResult:Lcom/alipay/code/scansdk/decode/DecoderResult;

    invoke-virtual {v0}, Lcom/alipay/code/scansdk/decode/DecoderResult;->getCodeType()Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;

    move-result-object v6

    .line 53
    .local v6, "codeType":Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;
    const-string v0, "MiniCameraAlipayDecoderResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDecodeSuccess, codeType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const v7, 0x7f0f09f6

    .line 55
    .local v7, "detailResId":I
    const/4 v3, 0x0

    .line 56
    .local v3, "isText":Z
    sget-object v0, Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;->BARCODE:Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;

    invoke-virtual {v0, v6}, Lcom/alipay/code/scansdk/decode/DecoderResult$CodeResultType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const-string v0, "MiniCameraAlipayDecoderResultHandler"

    const-string v2, "handleDecodeSuccess, BARCODE!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v8

    .line 61
    .local v8, "isForeign":Z
    if-eqz v8, :cond_1

    .line 62
    const/4 v3, 0x1

    .line 81
    .end local v8    # "isForeign":Z
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 65
    .restart local v8    # "isForeign":Z
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->startAlipay()V

    goto :goto_0

    .line 70
    .end local v8    # "isForeign":Z
    :cond_2
    const-string v0, "MiniCameraAlipayDecoderResultHandler"

    const-string v2, "handleDecodeSuccess, QRCODE!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    :cond_3
    const/4 v3, 0x0

    .line 73
    const v7, 0x7f0f09f7

    goto :goto_1

    .line 75
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public needFinish(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mNeedFinish:Z

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 107
    :pswitch_0
    const-string v0, "MiniCameraAlipayDecoderResultHandler"

    const-string/jumbo v1, "onClick, minicamera_result_dialog_cancel_btn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "click_result_button_cancel"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->cancelResultDialog()V

    .line 112
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->mNeedFinish:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v0, "MiniCameraAlipayDecoderResultHandler"

    const-string/jumbo v1, "onClick, minicamera_result_dialog_detail_btn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "click_result_button_detail"

    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->cancelResultDialog()V

    .line 126
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/function/result/alipay/MiniCameraAlipayDecoderResultHandler;->startAlipay()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f10068f
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
