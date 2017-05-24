.class Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;
.super Ljava/lang/Object;
.source "ReplyRepostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 242
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->len:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "sBuilder":Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->parseText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->location:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 265
    .end local v1    # "sBuilder":Landroid/text/SpannableStringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 247
    .restart local v1    # "sBuilder":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sBuilder":Landroid/text/SpannableStringBuilder;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->len:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 256
    .restart local v1    # "sBuilder":Landroid/text/SpannableStringBuilder;
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->parseText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 262
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->location:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 260
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->len:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->location:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$202(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;I)I

    .line 235
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 229
    return-void
.end method
