.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;
.super Landroid/os/AsyncTask;
.source "FacePrettyLoadScreennailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENNAIL_HEIGHT:I = 0x5dc

.field private static final SCREENNAIL_WIDTH:I = 0x438


# instance fields
.field private final callback:Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;

    .line 33
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 40
    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>(Landroid/content/Context;)V

    aget-object v1, p1, v2

    const/16 v2, 0x438

    const/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->context:Landroid/content/Context;

    const-string/jumbo v2, "\u52a0\u8f7d\u56fe\u7247\u5931\u8d25\u4e86"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 50
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 51
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->callback:Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask$LoadCompleteCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 54
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FacePrettyLoadScreennailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
