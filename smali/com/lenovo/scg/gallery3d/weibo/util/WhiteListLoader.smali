.class public Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;
.super Landroid/content/CursorLoader;
.source "WhiteListLoader.java"


# static fields
.field public static final MODE_INIT:I = 0x0

.field public static final MODE_SEARCH:I = 0x1

.field public static final MODE_SHIELD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WhiteListLoader"

.field public static final WHITELIST_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMode:I

.field private mQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nick"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isshield"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "portrait"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->WHITELIST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "querystring"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->mQueryString:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->mMode:I

    .line 38
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->createUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->setUri(Landroid/net/Uri;)V

    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->getProjections()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->setProjection([Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->setSelection(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->getSortOrders()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->setSortOrder(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->createSelectionArgs()V

    .line 69
    const-string v0, "isshield=?"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSelectionArgs()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private createUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->mQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name_filter/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->mQueryString:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    :cond_0
    const-string v1, "WhiteListLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createUri, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v0
.end method

.method private getProjections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;->WHITELIST_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getSortOrders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
