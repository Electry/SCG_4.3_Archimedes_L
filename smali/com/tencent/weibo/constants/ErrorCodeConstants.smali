.class public Lcom/tencent/weibo/constants/ErrorCodeConstants;
.super Ljava/lang/Object;
.source "ErrorCodeConstants.java"


# static fields
.field private static myErrorCodeHashMap:Lcom/tencent/weibo/constants/MyErrorCodeHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;

    invoke-direct {v0}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;-><init>()V

    sput-object v0, Lcom/tencent/weibo/constants/ErrorCodeConstants;->myErrorCodeHashMap:Lcom/tencent/weibo/constants/MyErrorCodeHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrmsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "errcode"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-object v0, Lcom/tencent/weibo/constants/ErrorCodeConstants;->myErrorCodeHashMap:Lcom/tencent/weibo/constants/MyErrorCodeHashMap;

    invoke-virtual {v0, p0}, Lcom/tencent/weibo/constants/MyErrorCodeHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
