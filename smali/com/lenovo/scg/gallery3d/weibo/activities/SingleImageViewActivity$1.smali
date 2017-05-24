.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;
.super Landroid/os/AsyncTask;
.source "SingleImageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mUrls:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->mFlipperView:Landroid/widget/ViewFlipper;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;)Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 364
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3
    .param p1, "result"    # Ljava/io/File;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    const v1, 0x7f0f0725

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 352
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity;

    const v1, 0x7f0f0655

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method
