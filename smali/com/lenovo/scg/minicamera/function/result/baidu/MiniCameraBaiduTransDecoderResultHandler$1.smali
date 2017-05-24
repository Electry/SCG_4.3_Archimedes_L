.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;
.super Ljava/lang/Object;
.source "MiniCameraBaiduTransDecoderResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->cancelResultDialog()V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduTransDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 71
    return-void
.end method
