.class public Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "ProgressMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;,
        Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "l"    # Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->mListener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "l"    # Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 19
    iput-object p2, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->mListener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    .line 20
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity;->mListener:Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/baidu/idl/lib/network/ProgressMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method
