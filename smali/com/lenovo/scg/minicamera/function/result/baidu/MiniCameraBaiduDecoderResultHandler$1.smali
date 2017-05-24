.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;
.super Ljava/lang/Object;
.source "MiniCameraBaiduDecoderResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->cancelResultDialog()V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 95
    return-void
.end method
