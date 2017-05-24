.class Lcom/baidu/idl/lib/SDKProtocol$1;
.super Ljava/util/ArrayList;
.source "SDKProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/SDKProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x70274133e170334eL


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const-string v0, "com.baidu.idl.sdkdemo"

    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/SDKProtocol$1;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v0, "com.baidu.camera"

    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/SDKProtocol$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "com.baidu.gallery3d"

    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/SDKProtocol$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "com.lenovo.scg"

    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/SDKProtocol$1;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "com.lenovo.minicamera"

    invoke-virtual {p0, v0}, Lcom/baidu/idl/lib/SDKProtocol$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
