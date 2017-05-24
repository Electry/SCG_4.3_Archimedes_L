.class Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;
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
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    const-string v1, "MiniCameraBaiduDecoderResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mHtml = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    # getter for: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mHtml:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->access$100(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    # invokes: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->cancelResultDialog2()V
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->access$000(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getAcitonAfterResultDialogDismissListener()Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/minicamera/function/result/MiniCameraAbstractDecoderResultHandler$Listener;->acitonAfterResultDialogDismiss()V

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/minicamera/activity/MiniCameraWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    # getter for: Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->mHtml:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->access$100(Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler$2;->this$0:Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/function/result/baidu/MiniCameraBaiduBookDecoderResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
