.class Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;
.super Ljava/lang/Object;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "len":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [C

    .line 198
    .local v0, "contentchar":[C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 201
    aget-char v4, v0, v1

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v4, v5, :cond_0

    .line 202
    add-int/lit8 v2, v2, 0x2

    .line 200
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0x2

    # setter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$102(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;I)I

    .line 219
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)I

    move-result v4

    rsub-int v4, v4, 0x8c

    if-gez v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)I

    move-result v6

    rsub-int v6, v6, 0x8c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    return-void

    .line 222
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 234
    return-void
.end method
