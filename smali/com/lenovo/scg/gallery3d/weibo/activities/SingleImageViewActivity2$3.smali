.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setWeiboInf(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTopGalleryClick(I)V
    .locals 1
    .param p1, "seclected_id"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$302(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;I)I

    .line 579
    return-void
.end method

.method public OnTopGalleryItemClick(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "mGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 584
    const-string/jumbo v1, "topgallery"

    const-string v2, "OnTopGalleryItemClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 587
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 588
    const v1, 0x20001

    iput v1, v0, Landroid/os/Message;->what:I

    .line 589
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updateUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    return-void
.end method
