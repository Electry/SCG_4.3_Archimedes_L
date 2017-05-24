.class Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;
.super Landroid/os/AsyncTask;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/file/ImageFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleFileTask"
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
.field private file:Ljava/io/File;

.field final synthetic this$0:Lcom/baidu/idl/lib/file/ImageFile;


# direct methods
.method private constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 719
    aget-object v0, p1, v8

    check-cast v0, Landroid/content/Context;

    .line 720
    .local v0, "cx":Landroid/content/Context;
    const/4 v5, 0x1

    aget-object v1, p1, v5

    check-cast v1, Landroid/net/Uri;

    .line 721
    .local v1, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 722
    .local v2, "w":I
    const/4 v5, 0x3

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 723
    .local v3, "h":I
    const/4 v5, 0x4

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/String;

    .line 724
    .local v4, "path":Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v7, p1, v5

    check-cast v7, Ljava/lang/Integer;

    .line 727
    .local v7, "type":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/baidu/idl/lib/file/ImageFile;->getSampleFile(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/String;I)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/baidu/idl/lib/file/OtherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/baidu/idl/lib/file/SDCardFullException; {:try_start_0 .. :try_end_0} :catch_3

    .line 742
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    return-object v5

    .line 728
    :catch_0
    move-exception v6

    .line 729
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 730
    const/4 v5, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 731
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v6

    .line 732
    .local v6, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 733
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 734
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 735
    .local v6, "e":Lcom/baidu/idl/lib/file/OtherException;
    invoke-virtual {v6}, Lcom/baidu/idl/lib/file/OtherException;->printStackTrace()V

    .line 736
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 737
    .end local v6    # "e":Lcom/baidu/idl/lib/file/OtherException;
    :catch_3
    move-exception v6

    .line 738
    .local v6, "e":Lcom/baidu/idl/lib/file/SDCardFullException;
    invoke-virtual {v6}, Lcom/baidu/idl/lib/file/SDCardFullException;->printStackTrace()V

    .line 739
    const/4 v5, -0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "rst"    # Ljava/lang/Integer;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;
    invoke-static {v0}, Lcom/baidu/idl/lib/file/ImageFile;->access$6(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnSampleFileListener:Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;
    invoke-static {v0}, Lcom/baidu/idl/lib/file/ImageFile;->access$6(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->file:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;->onGetSampleFile(ILjava/io/File;)V

    .line 749
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/idl/lib/file/ImageFile;->access$7(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnSampleFileListener;)V

    .line 751
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SampleFileTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
