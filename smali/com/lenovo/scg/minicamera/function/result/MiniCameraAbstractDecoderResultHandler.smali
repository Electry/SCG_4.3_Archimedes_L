.class public abstract Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;
.super Ljava/lang/Object;
.source "MiniCameraAbstractDecoderResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

.field private mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method


# virtual methods
.method public cancelResultDialog()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->dismiss()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    .line 51
    :cond_0
    return-void
.end method

.method public getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract handleDecodeSuccess(Ljava/lang/Object;)V
.end method

.method public setListener(Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mListener:Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    .line 44
    return-void
.end method

.method public showResultDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .param p3, "isText"    # Z
    .param p4, "cancellistener"    # Landroid/view/View$OnClickListener;
    .param p5, "detaillistener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->cancelResultDialog()V

    .line 56
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->setContent(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->setDetailText(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->setIsText(Z)V

    .line 61
    if-eqz p4, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0, p4}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    if-eqz p5, :cond_1

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler;->mResultDialog:Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;

    invoke-virtual {v0, p5}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->setDetailListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_1
    return-void
.end method
