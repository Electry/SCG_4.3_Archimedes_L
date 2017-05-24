.class Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;
.super Ljava/lang/Object;
.source "BaseReplyRepostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->setOnEditTextChangeListener(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;

.field final synthetic val$mET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;->val$mET:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 56
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v6, 0x0

    .line 27
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;->val$mET:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "haveInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    new-array v2, v5, [C

    .line 29
    .local v2, "haveInputChar":[C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v6, v5, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 31
    const/4 v3, 0x0

    .line 32
    .local v3, "haveInputNumber":I
    const/4 v0, 0x0

    .line 33
    .local v0, "charNumber":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 34
    aget-char v5, v2, v4

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v5, v6, :cond_0

    .line 36
    add-int/lit8 v0, v0, 0x4

    .line 33
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 43
    :cond_1
    div-int/lit8 v3, v0, 0x4

    .line 45
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity;->mChangeListener:Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;

    rsub-int v6, v3, 0x8c

    invoke-interface {v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/BaseReplyRepostActivity$OnEditTextContentChangeListener;->OnContentChanged(I)V

    .line 46
    return-void
.end method
