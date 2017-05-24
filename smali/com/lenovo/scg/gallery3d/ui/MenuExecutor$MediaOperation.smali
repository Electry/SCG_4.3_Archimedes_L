.class Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .param p2, "operation"    # I
    .param p4, "listener"    # Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 647
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 649
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 650
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 651
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 11
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 657
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const-string/jumbo v8, "pool_menuexecutor_mediaoperation"

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x0

    .line 661
    .local v2, "index":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$400(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v4

    .line 662
    .local v4, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v5, 0x1

    .line 664
    .local v5, "result":I
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$700(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 665
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 666
    .local v1, "id":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    .line 667
    const/4 v5, 0x3

    .line 679
    .end local v1    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressComplete(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v5, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$1000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v2, v3

    .line 682
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    const/4 v7, 0x0

    return-object v7

    .line 670
    .end local v2    # "index":I
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .restart local v3    # "index":I
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->execute(Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILcom/lenovo/scg/gallery3d/data/Path;)Z
    invoke-static {v7, v4, p1, v8, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$800(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;ILcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 671
    const/4 v5, 0x2

    .line 673
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v3, v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$900(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 674
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 675
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :catch_0
    move-exception v6

    .line 676
    .local v6, "th":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    const-string v7, "MenuExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to execute operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressComplete(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v5, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$1000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_1

    .end local v6    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onProgressComplete(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v8, v5, v9, v10}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->access$1000(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    throw v7

    .end local v2    # "index":I
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "index":I
    :catchall_1
    move-exception v7

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_3

    .line 675
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :catch_1
    move-exception v6

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2
.end method
