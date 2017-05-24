.class Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;
.super Ljava/lang/Object;
.source "SystemShareListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
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
    .line 118
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mMimeType:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$000(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$100(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mComponent:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$200(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$300(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$400(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;->access$400(Lcom/lenovo/scg/gallery3d/edit/SystemShareListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;->onItemClick()V

    .line 126
    :cond_0
    return-void
.end method
