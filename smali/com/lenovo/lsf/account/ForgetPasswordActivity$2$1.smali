.class Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

.field final synthetic val$pic:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iput-object p2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->val$pic:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->val$pic:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$900(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->val$pic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$900(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 171
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1000(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v2, v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string/jumbo v3, "string"

    const-string v4, "lenovouser_register_error6"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->hideErrorMessage()V
    invoke-static {v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1100(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V

    .line 178
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 179
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    iget-object v2, v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string/jumbo v3, "string"

    const-string v4, "lenovouser_register_error6"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    goto :goto_0
.end method
