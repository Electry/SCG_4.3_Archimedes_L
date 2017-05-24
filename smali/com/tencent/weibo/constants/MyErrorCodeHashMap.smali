.class Lcom/tencent/weibo/constants/MyErrorCodeHashMap;
.super Ljava/util/HashMap;
.source "ErrorCodeConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21ae86a9b72c3acfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 21
    const-string v0, "1"

    const-string v1, "connect out of time"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "1001"

    const-string/jumbo v1, "qHttpClient not specified"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "2001"

    const-string v1, "Can not receive the certificates from server."

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "2002"

    const-string v1, "The name on the security certificate is invalid or does not match  \"open.t.qq.com\"."

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
