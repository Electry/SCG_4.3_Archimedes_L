.class public Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;
.super Ljava/lang/Object;
.source "WeiboUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final MAX_WEIBO_NUMBER:I = 0x3b9aca00

.field private static final NEW_PHOTO_DIR_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WeiboUtils"

.field public static final WEIBO_HEADER_BACKGROUND_IMAGE_NAME:Ljava/lang/String; = "weibo_header_background.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "croppedPhotoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    .local v0, "size":I
    const-string v1, "crop"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "scaleUpIfNeeded"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v1, "aspectX"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v1, "aspectY"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "outputX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "outputY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "output"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method public static checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/16 v2, 0xff

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "ct":Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;
    const/16 v1, 0x4e00

    if-lt p0, v1, :cond_0

    const v1, 0x9fbb

    if-gt p0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    .line 170
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const v1, 0xff00

    if-lt p0, v1, :cond_5

    const v1, 0xffef

    if-gt p0, v1, :cond_5

    .line 149
    const v1, 0xff21

    if-lt p0, v1, :cond_1

    const v1, 0xff3a

    if-le p0, v1, :cond_2

    :cond_1
    const v1, 0xff41

    if-lt p0, v1, :cond_3

    const v1, 0xff5a

    if-gt p0, v1, :cond_3

    .line 150
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->LETTER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 151
    :cond_3
    const v1, 0xff10

    if-lt p0, v1, :cond_4

    const v1, 0xff19

    if-gt p0, v1, :cond_4

    .line 152
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->NUM:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 154
    :cond_4
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->DELIMITER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 156
    :cond_5
    const/16 v1, 0x21

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7e

    if-gt p0, v1, :cond_a

    .line 157
    const/16 v1, 0x30

    if-lt p0, v1, :cond_6

    const/16 v1, 0x39

    if-gt p0, v1, :cond_6

    .line 158
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->NUM:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 159
    :cond_6
    const/16 v1, 0x41

    if-lt p0, v1, :cond_7

    const/16 v1, 0x5a

    if-le p0, v1, :cond_8

    :cond_7
    const/16 v1, 0x61

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_9

    .line 160
    :cond_8
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->LETTER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 161
    :cond_9
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->DELIMITER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 162
    :cond_a
    const/16 v1, 0xa1

    if-lt p0, v1, :cond_c

    if-gt p0, v2, :cond_c

    .line 163
    const/16 v1, 0xc0

    if-lt p0, v1, :cond_b

    if-gt p0, v2, :cond_b

    .line 164
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->LETTER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 165
    :cond_b
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->DELIMITER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0

    .line 167
    :cond_c
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->OTHER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    goto :goto_0
.end method

.method public static formatWeiboNumber(I)Ljava/lang/String;
    .locals 6
    .param p0, "srcNumber"    # I

    .prologue
    const v5, 0x3b9aca00

    const v1, 0x186a0

    const v4, 0x5f5e100

    const v3, 0xf4240

    const v2, 0x989680

    .line 180
    if-lt p0, v5, :cond_0

    .line 182
    const-string v1, "10\u4ebf+"

    .line 200
    :goto_0
    return-object v1

    .line 183
    :cond_0
    if-ge p0, v5, :cond_1

    if-lt p0, v4, :cond_1

    .line 185
    rem-int v1, p0, v4

    sub-int v1, p0, v1

    div-int v0, v1, v4

    .line 186
    .local v0, "tmp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4ebf+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 187
    .end local v0    # "tmp":I
    :cond_1
    if-ge p0, v2, :cond_2

    if-lt p0, v2, :cond_2

    .line 189
    rem-int v1, p0, v2

    sub-int v1, p0, v1

    div-int v0, v1, v2

    .line 190
    .restart local v0    # "tmp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5343\u4e07+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 191
    .end local v0    # "tmp":I
    :cond_2
    if-ge p0, v2, :cond_3

    if-lt p0, v3, :cond_3

    .line 193
    rem-int v1, p0, v3

    sub-int v1, p0, v1

    div-int v0, v1, v3

    .line 194
    .restart local v0    # "tmp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u767e\u4e07+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    .end local v0    # "tmp":I
    :cond_3
    if-ge p0, v3, :cond_4

    if-lt p0, v1, :cond_4

    .line 197
    rem-int v1, p0, v1

    sub-int v1, p0, v1

    div-int/lit16 v0, v1, 0x2710

    .line 198
    .restart local v0    # "tmp":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e07+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    .end local v0    # "tmp":I
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getCropPhotoDataIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromPhotoFileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    .local v1, "size":I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "lenovo.intent.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v2, "crop"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string/jumbo v2, "outputX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string/jumbo v2, "outputY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v2, "return-data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public static pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "delete"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v1, "f":Ljava/io/File;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "WeiboUtils"

    const-string v3, "background file is exist, delete it!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 110
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "sFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 130
    :goto_0
    return v4

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 123
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 130
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 126
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 126
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method
