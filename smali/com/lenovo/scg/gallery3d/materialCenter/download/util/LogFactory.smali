.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonLog"

.field private static log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLog()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    .line 14
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    const-string v1, "CommonLog"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->setTag(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    return-object v0
.end method

.method public static createLog(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 24
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    const-string v1, "CommonLog"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->setTag(Ljava/lang/String;)V

    .line 28
    :goto_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    return-object v0

    .line 26
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/LogFactory;->log:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonLog;->setTag(Ljava/lang/String;)V

    goto :goto_0
.end method
