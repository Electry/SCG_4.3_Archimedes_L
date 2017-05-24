.class Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionDecoderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/data/UriImage;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/UriImage;Lcom/lenovo/scg/gallery3d/data/UriImage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/UriImage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/data/UriImage$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/lenovo/scg/gallery3d/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "pool_uriimage_regiondecoderjob"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    # invokes: Lcom/lenovo/scg/gallery3d/data/UriImage;->prepareInputFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$100(Lcom/lenovo/scg/gallery3d/data/UriImage;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    # getter for: Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$200(Lcom/lenovo/scg/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/lenovo/scg/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 267
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    # setter for: Lcom/lenovo/scg/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$302(Lcom/lenovo/scg/gallery3d/data/UriImage;I)I

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->this$0:Lcom/lenovo/scg/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    # setter for: Lcom/lenovo/scg/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/data/UriImage;->access$402(Lcom/lenovo/scg/gallery3d/data/UriImage;I)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
