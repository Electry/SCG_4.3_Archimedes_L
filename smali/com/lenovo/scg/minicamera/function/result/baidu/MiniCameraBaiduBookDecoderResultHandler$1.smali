.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;
.super Ljava/lang/Object;
.source "MiniCameraBaiduBookDecoderResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    # invokes: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->cancelResultDialog2()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 92
    return-void
.end method
