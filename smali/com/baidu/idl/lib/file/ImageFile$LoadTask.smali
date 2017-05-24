.class Lcom/baidu/idl/lib/file/ImageFile$LoadTask;
.super Landroid/os/AsyncTask;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/file/ImageFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private miBitmap:Landroid/graphics/Bitmap;

.field private tag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/baidu/idl/lib/file/ImageFile;


# direct methods
.method private constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$LoadTask;)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 635
    const/4 v5, 0x0

    :try_start_0
    aget-object v0, p1, v5

    check-cast v0, Landroid/content/Context;

    .line 636
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x1

    aget-object v3, p1, v5

    check-cast v3, Landroid/net/Uri;

    .line 637
    .local v3, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    .line 638
    .local v4, "width":Ljava/lang/Integer;
    const/4 v5, 0x3

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/Integer;

    .line 639
    .local v2, "height":Ljava/lang/Integer;
    array-length v5, p1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 640
    const/4 v5, 0x4

    aget-object v5, p1, v5

    iput-object v5, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->tag:Ljava/lang/Object;

    .line 642
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v3, v5, v6}, Lcom/baidu/idl/lib/file/ImageFile;->loadImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->miBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/idl/lib/file/OtherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 653
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "height":Ljava/lang/Integer;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "width":Ljava/lang/Integer;
    :goto_0
    return-object v5

    .line 643
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 645
    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 646
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 647
    .local v1, "e":Lcom/baidu/idl/lib/file/OtherException;
    invoke-virtual {v1}, Lcom/baidu/idl/lib/file/OtherException;->printStackTrace()V

    .line 648
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 649
    .end local v1    # "e":Lcom/baidu/idl/lib/file/OtherException;
    :catch_2
    move-exception v1

    .line 650
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 651
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "rst"    # Ljava/lang/Integer;

    .prologue
    .line 658
    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->access$0()Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 659
    :try_start_0
    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->access$0()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mThreadNote:Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
    invoke-static {v4}, Lcom/baidu/idl/lib/file/ImageFile;->access$1(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 660
    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->access$0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 661
    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->sImageTaskQueue:Ljava/util/Set;
    invoke-static {}, Lcom/baidu/idl/lib/file/ImageFile;->access$0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 662
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 658
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;>;"
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v2, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;
    invoke-static {v2}, Lcom/baidu/idl/lib/file/ImageFile;->access$2(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnFileLoadedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;
    invoke-static {v2}, Lcom/baidu/idl/lib/file/ImageFile;->access$2(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->miBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->tag:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;->onFileLoaded(ILandroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 673
    iget-object v2, p0, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/file/ImageFile;->access$3(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnFileLoadedListener;)V

    .line 675
    :cond_2
    return-void

    .line 663
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;>;"
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;

    .line 664
    .local v1, "note":Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
    iget-object v2, v1, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->task:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v4, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v2, v4, :cond_0

    .line 665
    iget-object v2, v1, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->task:Landroid/os/AsyncTask;

    check-cast v2, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;

    iget-object v4, v1, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->params:[Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 658
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;>;"
    .end local v1    # "note":Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$LoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
