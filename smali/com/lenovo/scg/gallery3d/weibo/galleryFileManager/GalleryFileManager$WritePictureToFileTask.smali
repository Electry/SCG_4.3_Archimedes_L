.class Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
.source "GalleryFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritePictureToFileTask"
.end annotation


# instance fields
.field private mBytes:[B

.field private mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

.field private mPerson:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)V
    .locals 0
    .param p2, "bytes"    # [B
    .param p3, "person"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mBytes:[B

    .line 548
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    .line 549
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    .line 550
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .line 551
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Person = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mBytes:[B

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->access$000(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z

    goto :goto_0
.end method
