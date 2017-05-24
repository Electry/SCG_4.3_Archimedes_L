.class public Lcom/lenovo/scg/common/utils/bitmap/NetBitmap;
.super Ljava/lang/Object;
.source "NetBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getbitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    .local v4, "myFileUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 51
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 52
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 53
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 54
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 57
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image download finished."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 62
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "myFileUrl":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getcontentPic(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p0, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v4, 0x0

    .line 25
    .local v4, "imgUrl":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "imgUrl":Ljava/net/URL;
    .local v5, "imgUrl":Ljava/net/URL;
    move-object v4, v5

    .line 29
    .end local v5    # "imgUrl":Ljava/net/URL;
    .restart local v4    # "imgUrl":Ljava/net/URL;
    :goto_0
    const/4 v2, 0x0

    .line 31
    .local v2, "icon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 32
    .local v1, "hp":Ljava/net/HttpURLConnection;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .end local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "icon":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 35
    .end local v1    # "hp":Ljava/net/HttpURLConnection;
    .end local v3    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-object v2

    .line 26
    .end local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e1":Ljava/net/MalformedURLException;
    .restart local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1    # "hp":Ljava/net/HttpURLConnection;
    .restart local v3    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "icon":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method
