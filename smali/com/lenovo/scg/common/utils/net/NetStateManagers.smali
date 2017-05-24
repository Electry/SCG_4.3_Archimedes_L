.class public Lcom/lenovo/scg/common/utils/net/NetStateManagers;
.super Ljava/lang/Object;
.source "NetStateManagers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetStateReceive;,
        Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetState;
    }
.end annotation


# static fields
.field public static CUR_NETSTATE:Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetState;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetState;->Mobile:Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetState;

    sput-object v0, Lcom/lenovo/scg/common/utils/net/NetStateManagers;->CUR_NETSTATE:Lcom/lenovo/scg/common/utils/net/NetStateManagers$NetState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 18
    sput-object p0, Lcom/lenovo/scg/common/utils/net/NetStateManagers;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getAPN()Lorg/apache/http/HttpHost;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 53
    .local v6, "mCursor":Landroid/database/Cursor;
    sget-object v0, Lcom/lenovo/scg/common/utils/net/NetStateManagers;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/lenovo/scg/common/utils/net/NetStateManagers;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    :cond_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string/jumbo v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "proxyStr":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    new-instance v7, Lorg/apache/http/HttpHost;

    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    const/16 v0, 0x50

    invoke-direct {v7, v8, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 62
    .restart local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    .end local v8    # "proxyStr":Ljava/lang/String;
    :cond_2
    return-object v7
.end method
