.class Lcn/jingling/lib/file/ImageFile$SaveTask;
.super Landroid/os/AsyncTask;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/file/ImageFile;
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

.field final synthetic this$0:Lcn/jingling/lib/file/ImageFile;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/file/ImageFile;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->this$0:Lcn/jingling/lib/file/ImageFile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$SaveTask;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcn/jingling/lib/file/ImageFile$SaveTask;-><init>(Lcn/jingling/lib/file/ImageFile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 789
    aget-object v1, p1, v8

    check-cast v1, Landroid/content/Context;

    .line 790
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x1

    aget-object v0, p1, v6

    check-cast v0, Landroid/graphics/Bitmap;

    .line 791
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/String;

    .line 792
    .local v3, "path":Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Integer;

    .line 793
    .local v5, "type":Ljava/lang/Integer;
    const/4 v6, 0x4

    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Integer;

    .line 796
    .local v4, "quality":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v1, v0, v3, v6, v7}, Lcn/jingling/lib/file/ImageFile;->saveImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->miUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcn/jingling/lib/file/OtherException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/jingling/lib/file/SDCardFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 805
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    return-object v6

    .line 797
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e":Lcn/jingling/lib/file/OtherException;
    invoke-virtual {v2}, Lcn/jingling/lib/file/OtherException;->printStackTrace()V

    .line 799
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 800
    .end local v2    # "e":Lcn/jingling/lib/file/OtherException;
    :catch_1
    move-exception v2

    .line 801
    .local v2, "e":Lcn/jingling/lib/file/SDCardFullException;
    invoke-virtual {v2}, Lcn/jingling/lib/file/SDCardFullException;->printStackTrace()V

    .line 802
    const/4 v6, -0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "rst"    # Ljava/lang/Integer;

    .prologue
    .line 810
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->this$0:Lcn/jingling/lib/file/ImageFile;

    # getter for: Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;
    invoke-static {v0}, Lcn/jingling/lib/file/ImageFile;->access$4(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->this$0:Lcn/jingling/lib/file/ImageFile;

    # getter for: Lcn/jingling/lib/file/ImageFile;->mOnFileSavedListener:Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;
    invoke-static {v0}, Lcn/jingling/lib/file/ImageFile;->access$4(Lcn/jingling/lib/file/ImageFile;)Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->miUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;->onFileSaved(ILandroid/net/Uri;)V

    .line 812
    iget-object v0, p0, Lcn/jingling/lib/file/ImageFile$SaveTask;->this$0:Lcn/jingling/lib/file/ImageFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jingling/lib/file/ImageFile;->access$5(Lcn/jingling/lib/file/ImageFile;Lcn/jingling/lib/file/ImageFile$OnFileSavedListener;)V

    .line 814
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/jingling/lib/file/ImageFile$SaveTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
