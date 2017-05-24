.class Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
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


# instance fields
.field mBitmapSize:I

.field mContext:Landroid/content/Context;

.field mOrientation:I

.field mOriginalBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 334
    # invokes: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getScreenImageSize()I
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$100(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    .line 335
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    .line 338
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 342
    aget-object v3, p1, v7

    .line 343
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "pathUri":Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "/ACTUAL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "newUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 348
    .end local v1    # "newUri":Ljava/lang/String;
    .end local v2    # "pathUri":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mBitmapSize:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 350
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getMetadataRotation(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    .line 352
    :cond_1
    sget v4, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    if-eqz v4, :cond_2

    .line 353
    sget v4, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    iput v4, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    .line 354
    sput v7, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    .line 357
    :cond_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->mOrientation:I

    # invokes: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    invoke-static {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$200(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    .line 363
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 323
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
