.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;
.super Ljava/lang/Object;
.source "MiniCameraBaiduCDDecoderResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    # invokes: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->cancelResultDialog3()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$1;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 98
    return-void
.end method
