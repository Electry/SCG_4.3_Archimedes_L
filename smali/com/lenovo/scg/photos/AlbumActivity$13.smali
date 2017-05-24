.class Lcom/lenovo/scg/photos/AlbumActivity$13;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->workerRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$13;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 906
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Puzzle_notify_album_adapter_list_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$13;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1600(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumActivity$13;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->allItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1100(Lcom/lenovo/scg/photos/AlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 909
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$13;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # getter for: Lcom/lenovo/scg/photos/AlbumActivity;->mAlbumListAdapter:Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1600(Lcom/lenovo/scg/photos/AlbumActivity;)Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->notifyDataSetChanged()V

    .line 910
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$13;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->dissMissProgressDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1700(Lcom/lenovo/scg/photos/AlbumActivity;)V

    .line 911
    return-void
.end method
