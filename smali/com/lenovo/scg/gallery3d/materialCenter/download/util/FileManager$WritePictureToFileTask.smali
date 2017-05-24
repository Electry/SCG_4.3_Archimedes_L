.class Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritePictureToFileTask"
.end annotation


# instance fields
.field private mBytes:[B

.field private mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

.field private mPerson:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)V
    .locals 0
    .param p2, "bytes"    # [B
    .param p3, "person"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mBytes:[B

    .line 480
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    .line 481
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    .line 482
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .line 483
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Person = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mBytes:[B

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mPerson:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;->mFiletype:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z

    .line 489
    return-void
.end method
