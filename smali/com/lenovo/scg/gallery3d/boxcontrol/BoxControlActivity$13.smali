.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->workerRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "box_control_notify_album_adapter_list_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->notifyDataSetChanged()V

    .line 731
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsShowDividedView:Z

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividedView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$2200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$2300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    .line 735
    return-void
.end method
