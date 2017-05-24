.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
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
    .line 222
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 223
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v0

    .line 225
    .local v0, "s":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->setSelected(Z)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 225
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
