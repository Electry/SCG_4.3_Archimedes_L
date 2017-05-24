.class Lcom/lenovo/scg/photos/AlbumActivity$9;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->checkLowStorage()V
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
    .line 640
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$9;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Puzzle_check_lowstorage_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$9;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->checkLowStorageFinished()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1300(Lcom/lenovo/scg/photos/AlbumActivity;)V

    .line 647
    return-void
.end method
