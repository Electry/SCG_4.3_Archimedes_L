.class public Lcom/tencent/weibo/utils/QArrayList;
.super Ljava/util/ArrayList;
.source "QArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/apache/http/NameValuePair;)Z
    .locals 1
    .param p1, "nameValuePair"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 16
    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/weibo/utils/QStrOperate;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
