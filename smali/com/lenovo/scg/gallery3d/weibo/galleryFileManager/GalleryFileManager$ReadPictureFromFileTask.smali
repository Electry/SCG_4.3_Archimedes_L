.class Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
.source "GalleryFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPictureFromFileTask"
.end annotation


# instance fields
.field private mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

.field private mPerson:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V
    .locals 0
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;
    .param p5, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;-><init>()V

    .line 572
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    .line 573
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    .line 574
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .line 575
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .line 576
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Person = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 581
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->access$100(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mCanceled:Z

    if-eqz v1, :cond_2

    .line 584
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;->onDone(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
