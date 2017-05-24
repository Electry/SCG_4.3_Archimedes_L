.class public Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;
.super Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;
.source "MiniCameraBaiduDecoderResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraBaiduDecoderResultHandler"


# instance fields
.field private mCancelBtnListener:Landroid/view/View$OnClickListener;

.field private mDecoderResult:Lcom/baidu/idl/lib/DecodeResponse;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;-><init>(Landroid/app/Activity;)V

    .line 88
    new-instance v0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;-><init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method


# virtual methods
.method public getDecodeResponse()Lcom/baidu/idl/lib/DecodeResponse;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mDecoderResult:Lcom/baidu/idl/lib/DecodeResponse;

    return-object v0
.end method

.method public handleDecodeSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lcom/baidu/idl/lib/DecodeResponse;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mDecoderResult:Lcom/baidu/idl/lib/DecodeResponse;

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mDecoderResult:Lcom/baidu/idl/lib/DecodeResponse;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f09fa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->showResultDialogSimple(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public handleWhenNoNet()Z
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0a0e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->showResultDialogSimple(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "isText"    # Z
    .param p4, "detaillistener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 73
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-super/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public showResultDialogSimple(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->mCancelBtnListener:Landroid/view/View$OnClickListener;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public showResultDialogSimple(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, v2

    invoke-super/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
