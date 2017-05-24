.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
.super Ljava/lang/Exception;
.source "LcpPhotoException.java"


# static fields
.field private static final serialVersionUID:J = 0x36dfb9a9b7a1c88aL


# instance fields
.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->rootCause:Ljava/lang/Throwable;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 18
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->rootCause:Ljava/lang/Throwable;

    .line 19
    return-void
.end method


# virtual methods
.method public getRootCauseException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method
