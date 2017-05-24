.class Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MiniCameraOrderedDataOutputStream.java"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 38
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    return-object p0
.end method

.method public writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-object p0
.end method

.method public writeRational(Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .locals 2
    .param p1, "rational"    # Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getNumerator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 61
    invoke-virtual {p1}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraRational;->getDenominator()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->writeInt(I)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;

    .line 62
    return-object p0
.end method

.method public writeShort(S)Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;
    .locals 4
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/common/savepicture/exif/MiniCameraOrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    return-object p0
.end method
