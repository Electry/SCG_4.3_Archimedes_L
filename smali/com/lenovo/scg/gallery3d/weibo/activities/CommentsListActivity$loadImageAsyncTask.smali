.class Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "CommentsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;
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

.field private mView1:Landroid/widget/ImageView;

.field private mView3:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "v1"    # Landroid/widget/ImageView;
    .param p4, "v3"    # Landroid/widget/TextView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mUrl:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    .line 188
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    .line 191
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/Set;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Ljava/util/Set;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "mBmpThumbnail":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, [Ljava/util/Set;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->doInBackground([Ljava/util/Set;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_0
    const-string/jumbo v0, "panhui4_CommentsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->mView3:Landroid/widget/TextView;

    const v1, 0x7f0f064f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$loadImageAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method
