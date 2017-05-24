.class Lcn/jingling/lib/PackageSecurity$1;
.super Ljava/util/ArrayList;
.source "PackageSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/PackageSecurity;
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
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const-string v0, "com.baidu.baiducamera"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v0, "com.baidu.supercamera"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v0, "cn.jingling.sdkdemo"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v0, "com.android.gallery3d"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v0, "com.lenovo.minicamera"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v0, "com.lenovo.scg"

    invoke-virtual {p0, v0}, Lcn/jingling/lib/PackageSecurity$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
