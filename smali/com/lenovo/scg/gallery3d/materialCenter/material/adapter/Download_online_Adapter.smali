.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
.super Landroid/widget/BaseAdapter;
.source "Download_online_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Download_online_Adapter"


# instance fields
.field private DownedFileLength:I

.field private FileLength:I

.field private bits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private fileName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field imageFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field linearLayout:Landroid/widget/LinearLayout;

.field mArrStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBusy:Z

.field private mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mBusy:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->bits:Ljava/util/ArrayList;

    .line 51
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->handler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    .line 80
    return-void
.end method

.method private DownFile(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;I)V
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "imageFile"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;
    .param p3, "index"    # I

    .prologue
    .line 209
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "savePath":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Util_ForLocal;->checkSDCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download_test/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 221
    :cond_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "savePath":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v3

    goto :goto_0

    .line 222
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownFile(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->FileLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I

    return v0
.end method


# virtual methods
.method public downLoadFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 230
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->fileName:Ljava/lang/String;

    .line 233
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, "strUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 236
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 238
    .local v3, "input":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->FileLength:I

    .line 239
    iget v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->FileLength:I

    if-gtz v7, :cond_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "stream length is 0"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 240
    :cond_0
    if-nez v3, :cond_1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "stream is null"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 242
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 243
    .local v0, "buffer":[B
    iput v9, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I

    .line 244
    invoke-virtual {p0, v9, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->sendMsg(II)V

    .line 247
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 248
    .local v5, "readNum":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 257
    const/4 v7, 0x2

    invoke-virtual {p0, v7, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->sendMsg(II)V

    .line 259
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    return-void

    .line 251
    :cond_2
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 252
    iget v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I

    .line 254
    const/4 v7, 0x1

    invoke-virtual {p0, v7, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->sendMsg(II)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "tag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getBits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->bits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageLoader()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f020a24

    const v9, 0x7f0f093e

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 112
    if-nez p2, :cond_1

    .line 113
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400a5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/LinearLayout;

    .line 114
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)V

    .line 115
    .local v3, "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;
    const v4, 0x7f100466

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 116
    const v4, 0x7f100469

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    .line 117
    const v4, 0x7f100467

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    .line 118
    const v4, 0x7f100468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "baseDir":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/Util_ForLocal;->checkSDCard()Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/download_test/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 130
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_1
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 138
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 144
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->flag:Ljava/lang/Boolean;

    .line 158
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->flag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    const-string v5, "kaishi xiazai "

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 160
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :goto_3
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    new-instance v5, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;

    invoke-direct {v5, p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-object p2

    .line 122
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    .restart local v3    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;
    goto/16 :goto_0

    .line 132
    .restart local v0    # "baseDir":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 146
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 164
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->flag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;->getImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    const v5, 0x7f0f093f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 170
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    .line 171
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 177
    .end local v2    # "f":Ljava/io/File;
    :cond_6
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_3
.end method

.method public sendMsg(II)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "index"    # I

    .prologue
    .line 266
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 267
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    return-void
.end method

.method public setBits(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "bits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->bits:Ljava/util/ArrayList;

    .line 278
    return-void
.end method

.method public setFlagBusy(Z)V
    .locals 0
    .param p1, "busy"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mBusy:Z

    .line 47
    return-void
.end method

.method public setImageFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "imageFileList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->imageFileList:Ljava/util/List;

    .line 84
    return-void
.end method
