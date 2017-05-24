.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;
.super Landroid/os/Handler;
.source "SinaWeiboFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 297
    :pswitch_0
    const-string v0, "SinaWeiboFacade"

    const-string v1, "MSG_GET_OAUTH2_TOKEN_FACADE!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f07e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0716

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;->authResult(Z)V

    goto/16 :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
