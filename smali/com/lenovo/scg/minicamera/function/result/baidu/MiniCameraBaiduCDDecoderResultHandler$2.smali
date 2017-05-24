.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;
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
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    # invokes: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->cancelResultDialog3()V
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)V

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    # getter for: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->mMusic_url:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->access$100(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduCDDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
