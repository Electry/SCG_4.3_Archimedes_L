.class Lcom/baidu/idl/lib/file/ImageFile$SaveTask;
.super Landroid/os/AsyncTask;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/file/ImageFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
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
.field private miUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/baidu/idl/lib/file/ImageFile;


# direct methods
.method private constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$SaveTask;)V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;-><init>(Lcom/baidu/idl/lib/file/ImageFile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 685
    aget-object v1, p1, v7

    check-cast v1, Landroid/content/Context;

    .line 686
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x1

    aget-object v0, p1, v5

    check-cast v0, Landroid/graphics/Bitmap;

    .line 687
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    aget-object v3, p1, v5

    check-cast v3, Ljava/lang/String;

    .line 688
    .local v3, "path":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v4, p1, v5

    check-cast v4, Ljava/lang/Integer;

    .line 691
    .local v4, "type":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x5f

    invoke-static {v1, v0, v3, v5, v6}, Lcom/baidu/idl/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->miUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/baidu/idl/lib/file/OtherException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/idl/lib/file/SDCardFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 700
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    return-object v5

    .line 692
    :catch_0
    move-exception v2

    .line 693
    .local v2, "e":Lcom/baidu/idl/lib/file/OtherException;
    invoke-virtual {v2}, Lcom/baidu/idl/lib/file/OtherException;->printStackTrace()V

    .line 694
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 695
    .end local v2    # "e":Lcom/baidu/idl/lib/file/OtherException;
    :catch_1
    move-exception v2

    .line 696
    .local v2, "e":Lcom/baidu/idl/lib/file/SDCardFullException;
    invoke-virtual {v2}, Lcom/baidu/idl/lib/file/SDCardFullException;->printStackTrace()V

    .line 697
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

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "rst"    # Ljava/lang/Integer;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;
    invoke-static {v0}, Lcom/baidu/idl/lib/file/ImageFile;->access$4(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    # getter for: Lcom/baidu/idl/lib/file/ImageFile;->mOnFileSavedListener:Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;
    invoke-static {v0}, Lcom/baidu/idl/lib/file/ImageFile;->access$4(Lcom/baidu/idl/lib/file/ImageFile;)Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->miUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;->onFileSaved(ILandroid/net/Uri;)V

    .line 707
    iget-object v0, p0, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/idl/lib/file/ImageFile;->access$5(Lcom/baidu/idl/lib/file/ImageFile;Lcom/baidu/idl/lib/file/ImageFile$OnFileSavedListener;)V

    .line 709
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/baidu/idl/lib/file/ImageFile$SaveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
