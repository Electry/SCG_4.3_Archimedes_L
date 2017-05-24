.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;
.super Landroid/os/Handler;
.source "CloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 288
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 290
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 291
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "Cloud upload parcelable cloudphoto key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 292
    .local v4, "uploadCloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    .line 293
    .local v3, "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V

    goto :goto_1

    .line 295
    .end local v3    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->setmPhotoList(Ljava/util/List;)V

    .line 296
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsCloudChange:Z

    goto :goto_0

    .line 299
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "uploadCloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 300
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v5, "Cloud download parcelable cloudphoto key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .line 301
    .local v1, "downloadCloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    .line 302
    .restart local v3    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V

    goto :goto_2

    .line 306
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "downloadCloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    :sswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->onBackPressed()V

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x1f -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch
.end method
