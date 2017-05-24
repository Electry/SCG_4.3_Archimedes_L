.class public Lcom/etao/kakalib/util/KakaLibLog;
.super Ljava/lang/Object;
.source "KakaLibLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/alipay/code/scansdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static Loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {p0, p1}, Lcom/alipay/code/scansdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static Logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/alipay/code/scansdk/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
