.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "SingleImageViewActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Set;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mView1:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "v1"    # Landroid/widget/ImageView;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 829
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mUrl:Ljava/lang/String;

    .line 830
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    .line 834
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mUserName:Ljava/lang/String;

    .line 835
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/Set;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/util/Set;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 849
    .local v0, "mBmpThumbnail":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mUserName:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 850
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 817
    check-cast p1, [Ljava/util/Set;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->doInBackground([Ljava/util/Set;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 859
    if-eqz p1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 871
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 817
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 844
    return-void
.end method
