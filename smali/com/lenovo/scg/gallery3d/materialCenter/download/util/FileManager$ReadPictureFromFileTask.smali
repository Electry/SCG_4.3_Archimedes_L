.class Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPictureFromFileTask"
.end annotation


# instance fields
.field private mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

.field private mListener:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

.field private mPerson:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;)V
    .locals 0
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;
    .param p5, "listener"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;-><init>()V

    .line 507
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    .line 508
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    .line 509
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .line 510
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mListener:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

    .line 511
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Person = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 516
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mPerson:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;->mListener:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;->onDone(Landroid/graphics/Bitmap;)V

    .line 518
    return-void
.end method
