.class public Lcom/alipay/code/scansdk/process/ProcessException;
.super Ljava/lang/Exception;
.source "ProcessException.java"


# static fields
.field private static final serialVersionUID:J = 0x5d679e6e7416db87L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Code process exception, scan apk not installed?"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
