.class Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;
.super Ljava/lang/Object;
.source "SetasListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/SetasListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 181
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$000(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$000(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Intent;

    move-result-object v7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$100(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mComponent:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$100(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 184
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.lenovo.themecenter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleAdapter;

    .line 186
    .local v0, "adpter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p3}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 187
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "label"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "labelString":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lenovo.themecenter.wallpaper.crop"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, "mLockScreen":Landroid/content/Intent;
    const-string/jumbo v6, "path"

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$000(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$200(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0968

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    const-string/jumbo v6, "wallpreviewtype"

    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_0
    const-string v6, "LockScreenWallPaper "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------onItemClick   label : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v6, "LockScreenWallPaper "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------onItemClick   intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v6, "LockScreenWallPaper "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-------------------onItemClick   intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$200(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "adpter":Landroid/widget/SimpleAdapter;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "labelString":Ljava/lang/String;
    .end local v4    # "mLockScreen":Landroid/content/Intent;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$300(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 218
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mItemClickListener:Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$300(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;->onItemClick()V

    .line 220
    :cond_1
    return-void

    .line 197
    .restart local v0    # "adpter":Landroid/widget/SimpleAdapter;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v3    # "labelString":Ljava/lang/String;
    .restart local v4    # "mLockScreen":Landroid/content/Intent;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string/jumbo v6, "wallpreviewtype"

    const-string v7, "lockscreen"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SetLockScreenPaper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .end local v0    # "adpter":Landroid/widget/SimpleAdapter;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "labelString":Ljava/lang/String;
    .end local v4    # "mLockScreen":Landroid/content/Intent;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$200(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/SetasListView$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/SetasListView;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/SetasListView;->mIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/edit/SetasListView;->access$000(Lcom/lenovo/scg/gallery3d/edit/SetasListView;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
