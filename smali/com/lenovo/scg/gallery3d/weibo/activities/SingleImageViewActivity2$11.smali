.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;
.super Landroid/os/AsyncTask;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->save()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_ERROR_GET_BITMAP_FAILED:I = 0x1

.field private static final TYPE_ERROR_WRITE_FAILED:I = 0x2

.field private static final TYPE_OK:I


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 2398
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 2413
    const/4 v2, 0x0

    .line 2414
    .local v2, "result":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2415
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v3, "panhui4_SingleImageViewActivity2"

    const-string v4, "bitmap=null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2417
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 2418
    const/4 v2, 0x2

    .line 2420
    :cond_0
    if-eqz v0, :cond_1

    .line 2421
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2427
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2424
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2398
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 2433
    const/4 v0, -0x1

    .line 2434
    .local v0, "resId":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2446
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2447
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2449
    :cond_0
    return-void

    .line 2436
    :pswitch_0
    const v0, 0x7f0f0725

    .line 2437
    goto :goto_0

    .line 2439
    :pswitch_1
    const v0, 0x7f0f074e

    .line 2440
    goto :goto_0

    .line 2442
    :pswitch_2
    const v0, 0x7f0f074d

    goto :goto_0

    .line 2434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2398
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    const v1, 0x7f0f0655

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2410
    return-void
.end method
