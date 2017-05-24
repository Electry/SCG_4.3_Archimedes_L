.class public Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;
.super Landroid/os/AsyncTask;
.source "LoadScreennailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;,
        Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENNAIL_HEIGHT:I = 0x438

.field private static final SCREENNAIL_WIDTH:I = 0x5a0


# instance fields
.field private final callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 74
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;-><init>(Landroid/content/Context;)V

    aget-object v1, p1, v2

    const/16 v2, 0x5a0

    const/16 v3, 0x438

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/EditBitmapUtils;->getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 84
    if-nez p1, :cond_2

    .line 89
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    instance-of v7, v7, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    check-cast v7, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;->onLoadFailed()V

    .line 95
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    if-eqz v7, :cond_1

    .line 96
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-interface {v7, p1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 104
    .local v1, "image_w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 106
    .local v0, "image_h":I
    rem-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_3

    rem-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_6

    .line 107
    :cond_3
    rem-int/lit8 v6, v1, 0x4

    .line 108
    .local v6, "offsetW":I
    if-eqz v6, :cond_4

    .line 109
    sub-int/2addr v1, v6

    .line 112
    :cond_4
    rem-int/lit8 v5, v0, 0x2

    .line 114
    .local v5, "offsetH":I
    if-eqz v5, :cond_5

    .line 115
    sub-int/2addr v0, v5

    .line 117
    :cond_5
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 118
    .local v3, "mOffsetBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v4, "mPaint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    const/4 v7, 0x0

    invoke-virtual {v2, p1, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-interface {v7, v3}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 125
    .end local v2    # "mCanvas":Landroid/graphics/Canvas;
    .end local v3    # "mOffsetBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "mPaint":Landroid/graphics/Paint;
    .end local v5    # "offsetH":I
    .end local v6    # "offsetW":I
    :cond_6
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-interface {v7, p1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
