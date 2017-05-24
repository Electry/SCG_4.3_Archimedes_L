.class public Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProgressMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field listener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "l"    # Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    iput-object p2, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .line 43
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 47
    iget-object v0, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;->transeferred(J)V

    .line 51
    :cond_0
    return-void
.end method
