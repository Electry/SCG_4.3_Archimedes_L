.class Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;
.super Ljava/lang/Object;
.source "ReplyRepostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

    .line 193
    .local v2, "mAdapter":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;
    invoke-virtual {v2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;->getSmile(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "smile":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "content":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 199
    .local v3, "selectionEnd":I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "startString":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "endString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mRepostEditText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 208
    const-string/jumbo v6, "shizongyin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click a smile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method
