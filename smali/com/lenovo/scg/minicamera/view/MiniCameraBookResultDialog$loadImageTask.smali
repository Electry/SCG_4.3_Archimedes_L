.class Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;
.super Landroid/os/AsyncTask;
.source "MiniCameraBookResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->mUrl:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    const-string v1, "MiniCameraBookResultDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground, mUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils;->getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    const-string v0, "MiniCameraBookResultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
